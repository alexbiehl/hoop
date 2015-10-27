{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.GetApplicationAttemptReportRequestProto (GetApplicationAttemptReportRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationAttemptIdProto as YarnProtos (ApplicationAttemptIdProto)
 
data GetApplicationAttemptReportRequestProto = GetApplicationAttemptReportRequestProto{application_attempt_id ::
                                                                                       !(P'.Maybe
                                                                                          YarnProtos.ApplicationAttemptIdProto)}
                                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetApplicationAttemptReportRequestProto where
  mergeAppend (GetApplicationAttemptReportRequestProto x'1) (GetApplicationAttemptReportRequestProto y'1)
   = GetApplicationAttemptReportRequestProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetApplicationAttemptReportRequestProto where
  defaultValue = GetApplicationAttemptReportRequestProto P'.defaultValue
 
instance P'.Wire GetApplicationAttemptReportRequestProto where
  wireSize ft' self'@(GetApplicationAttemptReportRequestProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1)
  wirePut ft' self'@(GetApplicationAttemptReportRequestProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 11 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{application_attempt_id = P'.mergeAppend (application_attempt_id old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetApplicationAttemptReportRequestProto) GetApplicationAttemptReportRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetApplicationAttemptReportRequestProto
 
instance P'.ReflectDescriptor GetApplicationAttemptReportRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.GetApplicationAttemptReportRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"GetApplicationAttemptReportRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"GetApplicationAttemptReportRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetApplicationAttemptReportRequestProto.application_attempt_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetApplicationAttemptReportRequestProto\"], baseName' = FName \"application_attempt_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationAttemptIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationAttemptIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetApplicationAttemptReportRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetApplicationAttemptReportRequestProto where
  textPut msg
   = do
       P'.tellT "application_attempt_id" (application_attempt_id msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'application_attempt_id]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'application_attempt_id
         = P'.try
            (do
               v <- P'.getT "application_attempt_id"
               Prelude'.return (\ o -> o{application_attempt_id = v}))