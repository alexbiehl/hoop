{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.ApplicationSubmissionContextProto (ApplicationSubmissionContextProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationIdProto as YarnProtos (ApplicationIdProto)
import qualified Hadoop.Protos.YarnProtos.ContainerLaunchContextProto as YarnProtos (ContainerLaunchContextProto)
import qualified Hadoop.Protos.YarnProtos.LogAggregationContextProto as YarnProtos (LogAggregationContextProto)
import qualified Hadoop.Protos.YarnProtos.PriorityProto as YarnProtos (PriorityProto)
import qualified Hadoop.Protos.YarnProtos.ReservationIdProto as YarnProtos (ReservationIdProto)
import qualified Hadoop.Protos.YarnProtos.ResourceProto as YarnProtos (ResourceProto)
import qualified Hadoop.Protos.YarnProtos.ResourceRequestProto as YarnProtos (ResourceRequestProto)
 
data ApplicationSubmissionContextProto = ApplicationSubmissionContextProto{application_id ::
                                                                           !(P'.Maybe YarnProtos.ApplicationIdProto),
                                                                           application_name :: !(P'.Maybe P'.Utf8),
                                                                           queue :: !(P'.Maybe P'.Utf8),
                                                                           priority :: !(P'.Maybe YarnProtos.PriorityProto),
                                                                           am_container_spec ::
                                                                           !(P'.Maybe YarnProtos.ContainerLaunchContextProto),
                                                                           cancel_tokens_when_complete :: !(P'.Maybe P'.Bool),
                                                                           unmanaged_am :: !(P'.Maybe P'.Bool),
                                                                           maxAppAttempts :: !(P'.Maybe P'.Int32),
                                                                           resource :: !(P'.Maybe YarnProtos.ResourceProto),
                                                                           applicationType :: !(P'.Maybe P'.Utf8),
                                                                           keep_containers_across_application_attempts ::
                                                                           !(P'.Maybe P'.Bool),
                                                                           applicationTags :: !(P'.Seq P'.Utf8),
                                                                           attempt_failures_validity_interval ::
                                                                           !(P'.Maybe P'.Int64),
                                                                           log_aggregation_context ::
                                                                           !(P'.Maybe YarnProtos.LogAggregationContextProto),
                                                                           reservation_id ::
                                                                           !(P'.Maybe YarnProtos.ReservationIdProto),
                                                                           node_label_expression :: !(P'.Maybe P'.Utf8),
                                                                           am_container_resource_request ::
                                                                           !(P'.Maybe YarnProtos.ResourceRequestProto)}
                                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ApplicationSubmissionContextProto where
  mergeAppend (ApplicationSubmissionContextProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17)
   (ApplicationSubmissionContextProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16 y'17)
   = ApplicationSubmissionContextProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)
      (P'.mergeAppend x'12 y'12)
      (P'.mergeAppend x'13 y'13)
      (P'.mergeAppend x'14 y'14)
      (P'.mergeAppend x'15 y'15)
      (P'.mergeAppend x'16 y'16)
      (P'.mergeAppend x'17 y'17)
 
instance P'.Default ApplicationSubmissionContextProto where
  defaultValue
   = ApplicationSubmissionContextProto P'.defaultValue (Prelude'.Just (P'.Utf8 (P'.pack "N/A")))
      (Prelude'.Just (P'.Utf8 (P'.pack "default")))
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just Prelude'.True)
      (Prelude'.Just Prelude'.False)
      (Prelude'.Just 0)
      P'.defaultValue
      (Prelude'.Just (P'.Utf8 (P'.pack "YARN")))
      (Prelude'.Just Prelude'.False)
      P'.defaultValue
      (Prelude'.Just (-1))
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire ApplicationSubmissionContextProto where
  wireSize ft' self'@(ApplicationSubmissionContextProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 11 x'5
             + P'.wireSizeOpt 1 8 x'6
             + P'.wireSizeOpt 1 8 x'7
             + P'.wireSizeOpt 1 5 x'8
             + P'.wireSizeOpt 1 11 x'9
             + P'.wireSizeOpt 1 9 x'10
             + P'.wireSizeOpt 1 8 x'11
             + P'.wireSizeRep 1 9 x'12
             + P'.wireSizeOpt 1 3 x'13
             + P'.wireSizeOpt 1 11 x'14
             + P'.wireSizeOpt 1 11 x'15
             + P'.wireSizeOpt 2 9 x'16
             + P'.wireSizeOpt 2 11 x'17)
  wirePut ft' self'@(ApplicationSubmissionContextProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17)
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
             P'.wirePutOpt 34 11 x'4
             P'.wirePutOpt 42 11 x'5
             P'.wirePutOpt 48 8 x'6
             P'.wirePutOpt 56 8 x'7
             P'.wirePutOpt 64 5 x'8
             P'.wirePutOpt 74 11 x'9
             P'.wirePutOpt 82 9 x'10
             P'.wirePutOpt 88 8 x'11
             P'.wirePutRep 98 9 x'12
             P'.wirePutOpt 104 3 x'13
             P'.wirePutOpt 114 11 x'14
             P'.wirePutOpt 122 11 x'15
             P'.wirePutOpt 130 9 x'16
             P'.wirePutOpt 138 11 x'17
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{application_id = P'.mergeAppend (application_id old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{application_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{queue = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{priority = P'.mergeAppend (priority old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{am_container_spec = P'.mergeAppend (am_container_spec old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{cancel_tokens_when_complete = Prelude'.Just new'Field}) (P'.wireGet 8)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{unmanaged_am = Prelude'.Just new'Field}) (P'.wireGet 8)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{maxAppAttempts = Prelude'.Just new'Field}) (P'.wireGet 5)
             74 -> Prelude'.fmap (\ !new'Field -> old'Self{resource = P'.mergeAppend (resource old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             82 -> Prelude'.fmap (\ !new'Field -> old'Self{applicationType = Prelude'.Just new'Field}) (P'.wireGet 9)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{keep_containers_across_application_attempts = Prelude'.Just new'Field})
                    (P'.wireGet 8)
             98 -> Prelude'.fmap (\ !new'Field -> old'Self{applicationTags = P'.append (applicationTags old'Self) new'Field})
                    (P'.wireGet 9)
             104 -> Prelude'.fmap (\ !new'Field -> old'Self{attempt_failures_validity_interval = Prelude'.Just new'Field})
                     (P'.wireGet 3)
             114 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{log_aggregation_context =
                                 P'.mergeAppend (log_aggregation_context old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             122 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{reservation_id = P'.mergeAppend (reservation_id old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             130 -> Prelude'.fmap (\ !new'Field -> old'Self{node_label_expression = Prelude'.Just new'Field}) (P'.wireGet 9)
             138 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{am_container_resource_request =
                                 P'.mergeAppend (am_container_resource_request old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ApplicationSubmissionContextProto) ApplicationSubmissionContextProto where
  getVal m' f' = f' m'
 
instance P'.GPB ApplicationSubmissionContextProto
 
instance P'.ReflectDescriptor ApplicationSubmissionContextProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [])
      (P'.fromDistinctAscList [10, 18, 26, 34, 42, 48, 56, 64, 74, 82, 88, 98, 104, 114, 122, 130, 138])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationSubmissionContextProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationSubmissionContextProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"ApplicationSubmissionContextProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationSubmissionContextProto.application_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationSubmissionContextProto\"], baseName' = FName \"application_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationSubmissionContextProto.application_name\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationSubmissionContextProto\"], baseName' = FName \"application_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Just \"N/A\", hsDefault = Just (HsDef'ByteString \"N/A\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationSubmissionContextProto.queue\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationSubmissionContextProto\"], baseName' = FName \"queue\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Just \"default\", hsDefault = Just (HsDef'ByteString \"default\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationSubmissionContextProto.priority\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationSubmissionContextProto\"], baseName' = FName \"priority\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.PriorityProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"PriorityProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationSubmissionContextProto.am_container_spec\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationSubmissionContextProto\"], baseName' = FName \"am_container_spec\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerLaunchContextProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerLaunchContextProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationSubmissionContextProto.cancel_tokens_when_complete\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationSubmissionContextProto\"], baseName' = FName \"cancel_tokens_when_complete\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"true\", hsDefault = Just (HsDef'Bool True)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationSubmissionContextProto.unmanaged_am\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationSubmissionContextProto\"], baseName' = FName \"unmanaged_am\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationSubmissionContextProto.maxAppAttempts\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationSubmissionContextProto\"], baseName' = FName \"maxAppAttempts\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationSubmissionContextProto.resource\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationSubmissionContextProto\"], baseName' = FName \"resource\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationSubmissionContextProto.applicationType\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationSubmissionContextProto\"], baseName' = FName \"applicationType\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Just \"YARN\", hsDefault = Just (HsDef'ByteString \"YARN\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationSubmissionContextProto.keep_containers_across_application_attempts\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationSubmissionContextProto\"], baseName' = FName \"keep_containers_across_application_attempts\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationSubmissionContextProto.applicationTags\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationSubmissionContextProto\"], baseName' = FName \"applicationTags\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 98}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationSubmissionContextProto.attempt_failures_validity_interval\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationSubmissionContextProto\"], baseName' = FName \"attempt_failures_validity_interval\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 104}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Just \"-1\", hsDefault = Just (HsDef'Integer (-1))},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationSubmissionContextProto.log_aggregation_context\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationSubmissionContextProto\"], baseName' = FName \"log_aggregation_context\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 114}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.LogAggregationContextProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"LogAggregationContextProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationSubmissionContextProto.reservation_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationSubmissionContextProto\"], baseName' = FName \"reservation_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 122}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ReservationIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ReservationIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationSubmissionContextProto.node_label_expression\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationSubmissionContextProto\"], baseName' = FName \"node_label_expression\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 130}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationSubmissionContextProto.am_container_resource_request\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationSubmissionContextProto\"], baseName' = FName \"am_container_resource_request\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 17}, wireTag = WireTag {getWireTag = 138}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceRequestProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ApplicationSubmissionContextProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ApplicationSubmissionContextProto where
  textPut msg
   = do
       P'.tellT "application_id" (application_id msg)
       P'.tellT "application_name" (application_name msg)
       P'.tellT "queue" (queue msg)
       P'.tellT "priority" (priority msg)
       P'.tellT "am_container_spec" (am_container_spec msg)
       P'.tellT "cancel_tokens_when_complete" (cancel_tokens_when_complete msg)
       P'.tellT "unmanaged_am" (unmanaged_am msg)
       P'.tellT "maxAppAttempts" (maxAppAttempts msg)
       P'.tellT "resource" (resource msg)
       P'.tellT "applicationType" (applicationType msg)
       P'.tellT "keep_containers_across_application_attempts" (keep_containers_across_application_attempts msg)
       P'.tellT "applicationTags" (applicationTags msg)
       P'.tellT "attempt_failures_validity_interval" (attempt_failures_validity_interval msg)
       P'.tellT "log_aggregation_context" (log_aggregation_context msg)
       P'.tellT "reservation_id" (reservation_id msg)
       P'.tellT "node_label_expression" (node_label_expression msg)
       P'.tellT "am_container_resource_request" (am_container_resource_request msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'application_id, parse'application_name, parse'queue, parse'priority, parse'am_container_spec,
                   parse'cancel_tokens_when_complete, parse'unmanaged_am, parse'maxAppAttempts, parse'resource,
                   parse'applicationType, parse'keep_containers_across_application_attempts, parse'applicationTags,
                   parse'attempt_failures_validity_interval, parse'log_aggregation_context, parse'reservation_id,
                   parse'node_label_expression, parse'am_container_resource_request])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'application_id
         = P'.try
            (do
               v <- P'.getT "application_id"
               Prelude'.return (\ o -> o{application_id = v}))
        parse'application_name
         = P'.try
            (do
               v <- P'.getT "application_name"
               Prelude'.return (\ o -> o{application_name = v}))
        parse'queue
         = P'.try
            (do
               v <- P'.getT "queue"
               Prelude'.return (\ o -> o{queue = v}))
        parse'priority
         = P'.try
            (do
               v <- P'.getT "priority"
               Prelude'.return (\ o -> o{priority = v}))
        parse'am_container_spec
         = P'.try
            (do
               v <- P'.getT "am_container_spec"
               Prelude'.return (\ o -> o{am_container_spec = v}))
        parse'cancel_tokens_when_complete
         = P'.try
            (do
               v <- P'.getT "cancel_tokens_when_complete"
               Prelude'.return (\ o -> o{cancel_tokens_when_complete = v}))
        parse'unmanaged_am
         = P'.try
            (do
               v <- P'.getT "unmanaged_am"
               Prelude'.return (\ o -> o{unmanaged_am = v}))
        parse'maxAppAttempts
         = P'.try
            (do
               v <- P'.getT "maxAppAttempts"
               Prelude'.return (\ o -> o{maxAppAttempts = v}))
        parse'resource
         = P'.try
            (do
               v <- P'.getT "resource"
               Prelude'.return (\ o -> o{resource = v}))
        parse'applicationType
         = P'.try
            (do
               v <- P'.getT "applicationType"
               Prelude'.return (\ o -> o{applicationType = v}))
        parse'keep_containers_across_application_attempts
         = P'.try
            (do
               v <- P'.getT "keep_containers_across_application_attempts"
               Prelude'.return (\ o -> o{keep_containers_across_application_attempts = v}))
        parse'applicationTags
         = P'.try
            (do
               v <- P'.getT "applicationTags"
               Prelude'.return (\ o -> o{applicationTags = P'.append (applicationTags o) v}))
        parse'attempt_failures_validity_interval
         = P'.try
            (do
               v <- P'.getT "attempt_failures_validity_interval"
               Prelude'.return (\ o -> o{attempt_failures_validity_interval = v}))
        parse'log_aggregation_context
         = P'.try
            (do
               v <- P'.getT "log_aggregation_context"
               Prelude'.return (\ o -> o{log_aggregation_context = v}))
        parse'reservation_id
         = P'.try
            (do
               v <- P'.getT "reservation_id"
               Prelude'.return (\ o -> o{reservation_id = v}))
        parse'node_label_expression
         = P'.try
            (do
               v <- P'.getT "node_label_expression"
               Prelude'.return (\ o -> o{node_label_expression = v}))
        parse'am_container_resource_request
         = P'.try
            (do
               v <- P'.getT "am_container_resource_request"
               Prelude'.return (\ o -> o{am_container_resource_request = v}))