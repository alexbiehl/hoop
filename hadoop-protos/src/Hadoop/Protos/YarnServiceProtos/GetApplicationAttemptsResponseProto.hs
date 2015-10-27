{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.GetApplicationAttemptsResponseProto (GetApplicationAttemptsResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationAttemptReportProto as YarnProtos (ApplicationAttemptReportProto)
 
data GetApplicationAttemptsResponseProto = GetApplicationAttemptsResponseProto{application_attempts ::
                                                                               !(P'.Seq YarnProtos.ApplicationAttemptReportProto)}
                                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetApplicationAttemptsResponseProto where
  mergeAppend (GetApplicationAttemptsResponseProto x'1) (GetApplicationAttemptsResponseProto y'1)
   = GetApplicationAttemptsResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetApplicationAttemptsResponseProto where
  defaultValue = GetApplicationAttemptsResponseProto P'.defaultValue
 
instance P'.Wire GetApplicationAttemptsResponseProto where
  wireSize ft' self'@(GetApplicationAttemptsResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(GetApplicationAttemptsResponseProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 11 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{application_attempts = P'.append (application_attempts old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetApplicationAttemptsResponseProto) GetApplicationAttemptsResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetApplicationAttemptsResponseProto
 
instance P'.ReflectDescriptor GetApplicationAttemptsResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.GetApplicationAttemptsResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"GetApplicationAttemptsResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"GetApplicationAttemptsResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetApplicationAttemptsResponseProto.application_attempts\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetApplicationAttemptsResponseProto\"], baseName' = FName \"application_attempts\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationAttemptReportProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationAttemptReportProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetApplicationAttemptsResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetApplicationAttemptsResponseProto where
  textPut msg
   = do
       P'.tellT "application_attempts" (application_attempts msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'application_attempts]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'application_attempts
         = P'.try
            (do
               v <- P'.getT "application_attempts"
               Prelude'.return (\ o -> o{application_attempts = P'.append (application_attempts o) v}))