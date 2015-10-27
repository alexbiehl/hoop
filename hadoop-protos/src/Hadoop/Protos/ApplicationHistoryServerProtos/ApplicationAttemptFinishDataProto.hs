{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ApplicationHistoryServerProtos.ApplicationAttemptFinishDataProto (ApplicationAttemptFinishDataProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationAttemptIdProto as YarnProtos (ApplicationAttemptIdProto)
import qualified Hadoop.Protos.YarnProtos.FinalApplicationStatusProto as YarnProtos (FinalApplicationStatusProto)
import qualified Hadoop.Protos.YarnProtos.YarnApplicationAttemptStateProto as YarnProtos (YarnApplicationAttemptStateProto)
 
data ApplicationAttemptFinishDataProto = ApplicationAttemptFinishDataProto{application_attempt_id ::
                                                                           !(P'.Maybe YarnProtos.ApplicationAttemptIdProto),
                                                                           tracking_url :: !(P'.Maybe P'.Utf8),
                                                                           diagnostics_info :: !(P'.Maybe P'.Utf8),
                                                                           final_application_status ::
                                                                           !(P'.Maybe YarnProtos.FinalApplicationStatusProto),
                                                                           yarn_application_attempt_state ::
                                                                           !(P'.Maybe YarnProtos.YarnApplicationAttemptStateProto)}
                                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ApplicationAttemptFinishDataProto where
  mergeAppend (ApplicationAttemptFinishDataProto x'1 x'2 x'3 x'4 x'5) (ApplicationAttemptFinishDataProto y'1 y'2 y'3 y'4 y'5)
   = ApplicationAttemptFinishDataProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
 
instance P'.Default ApplicationAttemptFinishDataProto where
  defaultValue = ApplicationAttemptFinishDataProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire ApplicationAttemptFinishDataProto where
  wireSize ft' self'@(ApplicationAttemptFinishDataProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 14 x'4 +
             P'.wireSizeOpt 1 14 x'5)
  wirePut ft' self'@(ApplicationAttemptFinishDataProto x'1 x'2 x'3 x'4 x'5)
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
             P'.wirePutOpt 18 9 x'2
             P'.wirePutOpt 26 9 x'3
             P'.wirePutOpt 32 14 x'4
             P'.wirePutOpt 40 14 x'5
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
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{tracking_url = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{diagnostics_info = Prelude'.Just new'Field}) (P'.wireGet 9)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{final_application_status = Prelude'.Just new'Field}) (P'.wireGet 14)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{yarn_application_attempt_state = Prelude'.Just new'Field})
                    (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ApplicationAttemptFinishDataProto) ApplicationAttemptFinishDataProto where
  getVal m' f' = f' m'
 
instance P'.GPB ApplicationAttemptFinishDataProto
 
instance P'.ReflectDescriptor ApplicationAttemptFinishDataProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 32, 40])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationAttemptFinishDataProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ApplicationHistoryServerProtos\"], baseName = MName \"ApplicationAttemptFinishDataProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ApplicationHistoryServerProtos\",\"ApplicationAttemptFinishDataProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationAttemptFinishDataProto.application_attempt_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ApplicationAttemptFinishDataProto\"], baseName' = FName \"application_attempt_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationAttemptIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationAttemptIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationAttemptFinishDataProto.tracking_url\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ApplicationAttemptFinishDataProto\"], baseName' = FName \"tracking_url\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationAttemptFinishDataProto.diagnostics_info\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ApplicationAttemptFinishDataProto\"], baseName' = FName \"diagnostics_info\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationAttemptFinishDataProto.final_application_status\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ApplicationAttemptFinishDataProto\"], baseName' = FName \"final_application_status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.FinalApplicationStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"FinalApplicationStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationAttemptFinishDataProto.yarn_application_attempt_state\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ApplicationAttemptFinishDataProto\"], baseName' = FName \"yarn_application_attempt_state\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.YarnApplicationAttemptStateProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"YarnApplicationAttemptStateProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ApplicationAttemptFinishDataProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ApplicationAttemptFinishDataProto where
  textPut msg
   = do
       P'.tellT "application_attempt_id" (application_attempt_id msg)
       P'.tellT "tracking_url" (tracking_url msg)
       P'.tellT "diagnostics_info" (diagnostics_info msg)
       P'.tellT "final_application_status" (final_application_status msg)
       P'.tellT "yarn_application_attempt_state" (yarn_application_attempt_state msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'application_attempt_id, parse'tracking_url, parse'diagnostics_info, parse'final_application_status,
                   parse'yarn_application_attempt_state])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'application_attempt_id
         = P'.try
            (do
               v <- P'.getT "application_attempt_id"
               Prelude'.return (\ o -> o{application_attempt_id = v}))
        parse'tracking_url
         = P'.try
            (do
               v <- P'.getT "tracking_url"
               Prelude'.return (\ o -> o{tracking_url = v}))
        parse'diagnostics_info
         = P'.try
            (do
               v <- P'.getT "diagnostics_info"
               Prelude'.return (\ o -> o{diagnostics_info = v}))
        parse'final_application_status
         = P'.try
            (do
               v <- P'.getT "final_application_status"
               Prelude'.return (\ o -> o{final_application_status = v}))
        parse'yarn_application_attempt_state
         = P'.try
            (do
               v <- P'.getT "yarn_application_attempt_state"
               Prelude'.return (\ o -> o{yarn_application_attempt_state = v}))