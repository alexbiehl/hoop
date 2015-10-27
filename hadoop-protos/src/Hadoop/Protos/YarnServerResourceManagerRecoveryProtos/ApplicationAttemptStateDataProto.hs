{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerResourceManagerRecoveryProtos.ApplicationAttemptStateDataProto (ApplicationAttemptStateDataProto(..))
       where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationAttemptIdProto as YarnProtos (ApplicationAttemptIdProto)
import qualified Hadoop.Protos.YarnProtos.ContainerProto as YarnProtos (ContainerProto)
import qualified Hadoop.Protos.YarnProtos.FinalApplicationStatusProto as YarnProtos (FinalApplicationStatusProto)
import qualified Hadoop.Protos.YarnServerResourceManagerRecoveryProtos.RMAppAttemptStateProto
       as YarnServerResourceManagerRecoveryProtos (RMAppAttemptStateProto)
 
data ApplicationAttemptStateDataProto = ApplicationAttemptStateDataProto{attemptId ::
                                                                         !(P'.Maybe YarnProtos.ApplicationAttemptIdProto),
                                                                         master_container :: !(P'.Maybe YarnProtos.ContainerProto),
                                                                         app_attempt_tokens :: !(P'.Maybe P'.ByteString),
                                                                         app_attempt_state ::
                                                                         !(P'.Maybe
                                                                            YarnServerResourceManagerRecoveryProtos.RMAppAttemptStateProto),
                                                                         final_tracking_url :: !(P'.Maybe P'.Utf8),
                                                                         diagnostics :: !(P'.Maybe P'.Utf8),
                                                                         start_time :: !(P'.Maybe P'.Int64),
                                                                         final_application_status ::
                                                                         !(P'.Maybe YarnProtos.FinalApplicationStatusProto),
                                                                         am_container_exit_status :: !(P'.Maybe P'.Int32),
                                                                         memory_seconds :: !(P'.Maybe P'.Int64),
                                                                         vcore_seconds :: !(P'.Maybe P'.Int64),
                                                                         finish_time :: !(P'.Maybe P'.Int64)}
                                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ApplicationAttemptStateDataProto where
  mergeAppend (ApplicationAttemptStateDataProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
   (ApplicationAttemptStateDataProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12)
   = ApplicationAttemptStateDataProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)
      (P'.mergeAppend x'12 y'12)
 
instance P'.Default ApplicationAttemptStateDataProto where
  defaultValue
   = ApplicationAttemptStateDataProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      (Prelude'.Just (P'.Utf8 (P'.pack "N/A")))
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just (-1000))
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire ApplicationAttemptStateDataProto where
  wireSize ft' self'@(ApplicationAttemptStateDataProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 12 x'3 + P'.wireSizeOpt 1 14 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeOpt 1 9 x'6
             + P'.wireSizeOpt 1 3 x'7
             + P'.wireSizeOpt 1 14 x'8
             + P'.wireSizeOpt 1 5 x'9
             + P'.wireSizeOpt 1 3 x'10
             + P'.wireSizeOpt 1 3 x'11
             + P'.wireSizeOpt 1 3 x'12)
  wirePut ft' self'@(ApplicationAttemptStateDataProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
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
             P'.wirePutOpt 18 11 x'2
             P'.wirePutOpt 26 12 x'3
             P'.wirePutOpt 32 14 x'4
             P'.wirePutOpt 42 9 x'5
             P'.wirePutOpt 50 9 x'6
             P'.wirePutOpt 56 3 x'7
             P'.wirePutOpt 64 14 x'8
             P'.wirePutOpt 72 5 x'9
             P'.wirePutOpt 80 3 x'10
             P'.wirePutOpt 88 3 x'11
             P'.wirePutOpt 96 3 x'12
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{attemptId = P'.mergeAppend (attemptId old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{master_container = P'.mergeAppend (master_container old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{app_attempt_tokens = Prelude'.Just new'Field}) (P'.wireGet 12)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{app_attempt_state = Prelude'.Just new'Field}) (P'.wireGet 14)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{final_tracking_url = Prelude'.Just new'Field}) (P'.wireGet 9)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{diagnostics = Prelude'.Just new'Field}) (P'.wireGet 9)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{start_time = Prelude'.Just new'Field}) (P'.wireGet 3)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{final_application_status = Prelude'.Just new'Field}) (P'.wireGet 14)
             72 -> Prelude'.fmap (\ !new'Field -> old'Self{am_container_exit_status = Prelude'.Just new'Field}) (P'.wireGet 5)
             80 -> Prelude'.fmap (\ !new'Field -> old'Self{memory_seconds = Prelude'.Just new'Field}) (P'.wireGet 3)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{vcore_seconds = Prelude'.Just new'Field}) (P'.wireGet 3)
             96 -> Prelude'.fmap (\ !new'Field -> old'Self{finish_time = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ApplicationAttemptStateDataProto) ApplicationAttemptStateDataProto where
  getVal m' f' = f' m'
 
instance P'.GPB ApplicationAttemptStateDataProto
 
instance P'.ReflectDescriptor ApplicationAttemptStateDataProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 32, 42, 50, 56, 64, 72, 80, 88, 96])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationAttemptStateDataProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerResourceManagerRecoveryProtos\"], baseName = MName \"ApplicationAttemptStateDataProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerResourceManagerRecoveryProtos\",\"ApplicationAttemptStateDataProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationAttemptStateDataProto.attemptId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ApplicationAttemptStateDataProto\"], baseName' = FName \"attemptId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationAttemptIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationAttemptIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationAttemptStateDataProto.master_container\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ApplicationAttemptStateDataProto\"], baseName' = FName \"master_container\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationAttemptStateDataProto.app_attempt_tokens\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ApplicationAttemptStateDataProto\"], baseName' = FName \"app_attempt_tokens\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationAttemptStateDataProto.app_attempt_state\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ApplicationAttemptStateDataProto\"], baseName' = FName \"app_attempt_state\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.RMAppAttemptStateProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerResourceManagerRecoveryProtos\"], baseName = MName \"RMAppAttemptStateProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationAttemptStateDataProto.final_tracking_url\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ApplicationAttemptStateDataProto\"], baseName' = FName \"final_tracking_url\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationAttemptStateDataProto.diagnostics\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ApplicationAttemptStateDataProto\"], baseName' = FName \"diagnostics\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Just \"N/A\", hsDefault = Just (HsDef'ByteString \"N/A\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationAttemptStateDataProto.start_time\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ApplicationAttemptStateDataProto\"], baseName' = FName \"start_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationAttemptStateDataProto.final_application_status\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ApplicationAttemptStateDataProto\"], baseName' = FName \"final_application_status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.FinalApplicationStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"FinalApplicationStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationAttemptStateDataProto.am_container_exit_status\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ApplicationAttemptStateDataProto\"], baseName' = FName \"am_container_exit_status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 72}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Just \"-1000\", hsDefault = Just (HsDef'Integer (-1000))},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationAttemptStateDataProto.memory_seconds\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ApplicationAttemptStateDataProto\"], baseName' = FName \"memory_seconds\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 80}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationAttemptStateDataProto.vcore_seconds\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ApplicationAttemptStateDataProto\"], baseName' = FName \"vcore_seconds\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationAttemptStateDataProto.finish_time\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ApplicationAttemptStateDataProto\"], baseName' = FName \"finish_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 96}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ApplicationAttemptStateDataProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ApplicationAttemptStateDataProto where
  textPut msg
   = do
       P'.tellT "attemptId" (attemptId msg)
       P'.tellT "master_container" (master_container msg)
       P'.tellT "app_attempt_tokens" (app_attempt_tokens msg)
       P'.tellT "app_attempt_state" (app_attempt_state msg)
       P'.tellT "final_tracking_url" (final_tracking_url msg)
       P'.tellT "diagnostics" (diagnostics msg)
       P'.tellT "start_time" (start_time msg)
       P'.tellT "final_application_status" (final_application_status msg)
       P'.tellT "am_container_exit_status" (am_container_exit_status msg)
       P'.tellT "memory_seconds" (memory_seconds msg)
       P'.tellT "vcore_seconds" (vcore_seconds msg)
       P'.tellT "finish_time" (finish_time msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'attemptId, parse'master_container, parse'app_attempt_tokens, parse'app_attempt_state,
                   parse'final_tracking_url, parse'diagnostics, parse'start_time, parse'final_application_status,
                   parse'am_container_exit_status, parse'memory_seconds, parse'vcore_seconds, parse'finish_time])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'attemptId
         = P'.try
            (do
               v <- P'.getT "attemptId"
               Prelude'.return (\ o -> o{attemptId = v}))
        parse'master_container
         = P'.try
            (do
               v <- P'.getT "master_container"
               Prelude'.return (\ o -> o{master_container = v}))
        parse'app_attempt_tokens
         = P'.try
            (do
               v <- P'.getT "app_attempt_tokens"
               Prelude'.return (\ o -> o{app_attempt_tokens = v}))
        parse'app_attempt_state
         = P'.try
            (do
               v <- P'.getT "app_attempt_state"
               Prelude'.return (\ o -> o{app_attempt_state = v}))
        parse'final_tracking_url
         = P'.try
            (do
               v <- P'.getT "final_tracking_url"
               Prelude'.return (\ o -> o{final_tracking_url = v}))
        parse'diagnostics
         = P'.try
            (do
               v <- P'.getT "diagnostics"
               Prelude'.return (\ o -> o{diagnostics = v}))
        parse'start_time
         = P'.try
            (do
               v <- P'.getT "start_time"
               Prelude'.return (\ o -> o{start_time = v}))
        parse'final_application_status
         = P'.try
            (do
               v <- P'.getT "final_application_status"
               Prelude'.return (\ o -> o{final_application_status = v}))
        parse'am_container_exit_status
         = P'.try
            (do
               v <- P'.getT "am_container_exit_status"
               Prelude'.return (\ o -> o{am_container_exit_status = v}))
        parse'memory_seconds
         = P'.try
            (do
               v <- P'.getT "memory_seconds"
               Prelude'.return (\ o -> o{memory_seconds = v}))
        parse'vcore_seconds
         = P'.try
            (do
               v <- P'.getT "vcore_seconds"
               Prelude'.return (\ o -> o{vcore_seconds = v}))
        parse'finish_time
         = P'.try
            (do
               v <- P'.getT "finish_time"
               Prelude'.return (\ o -> o{finish_time = v}))