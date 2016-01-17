{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.GetApplicationAttemptReportResponseProto (GetApplicationAttemptReportResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationAttemptReportProto as YarnProtos (ApplicationAttemptReportProto)
 
data GetApplicationAttemptReportResponseProto = GetApplicationAttemptReportResponseProto{application_attempt_report ::
                                                                                         !(P'.Maybe
                                                                                            YarnProtos.ApplicationAttemptReportProto)}
                                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetApplicationAttemptReportResponseProto where
  mergeAppend (GetApplicationAttemptReportResponseProto x'1) (GetApplicationAttemptReportResponseProto y'1)
   = GetApplicationAttemptReportResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetApplicationAttemptReportResponseProto where
  defaultValue = GetApplicationAttemptReportResponseProto P'.defaultValue
 
instance P'.Wire GetApplicationAttemptReportResponseProto where
  wireSize ft' self'@(GetApplicationAttemptReportResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1)
  wirePut ft' self'@(GetApplicationAttemptReportResponseProto x'1)
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
                      old'Self{application_attempt_report =
                                P'.mergeAppend (application_attempt_report old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetApplicationAttemptReportResponseProto) GetApplicationAttemptReportResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetApplicationAttemptReportResponseProto
 
instance P'.ReflectDescriptor GetApplicationAttemptReportResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.GetApplicationAttemptReportResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"GetApplicationAttemptReportResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"GetApplicationAttemptReportResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetApplicationAttemptReportResponseProto.application_attempt_report\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetApplicationAttemptReportResponseProto\"], baseName' = FName \"application_attempt_report\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationAttemptReportProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationAttemptReportProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetApplicationAttemptReportResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetApplicationAttemptReportResponseProto where
  textPut msg
   = do
       P'.tellT "application_attempt_report" (application_attempt_report msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'application_attempt_report]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'application_attempt_report
         = P'.try
            (do
               v <- P'.getT "application_attempt_report"
               Prelude'.return (\ o -> o{application_attempt_report = v}))