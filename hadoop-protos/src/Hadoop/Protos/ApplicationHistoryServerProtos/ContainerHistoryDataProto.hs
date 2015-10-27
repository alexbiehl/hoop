{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ApplicationHistoryServerProtos.ContainerHistoryDataProto (ContainerHistoryDataProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ContainerIdProto as YarnProtos (ContainerIdProto)
import qualified Hadoop.Protos.YarnProtos.ContainerStateProto as YarnProtos (ContainerStateProto)
import qualified Hadoop.Protos.YarnProtos.NodeIdProto as YarnProtos (NodeIdProto)
import qualified Hadoop.Protos.YarnProtos.PriorityProto as YarnProtos (PriorityProto)
import qualified Hadoop.Protos.YarnProtos.ResourceProto as YarnProtos (ResourceProto)
 
data ContainerHistoryDataProto = ContainerHistoryDataProto{container_id :: !(P'.Maybe YarnProtos.ContainerIdProto),
                                                           allocated_resource :: !(P'.Maybe YarnProtos.ResourceProto),
                                                           assigned_node_id :: !(P'.Maybe YarnProtos.NodeIdProto),
                                                           priority :: !(P'.Maybe YarnProtos.PriorityProto),
                                                           start_time :: !(P'.Maybe P'.Int64), finish_time :: !(P'.Maybe P'.Int64),
                                                           diagnostics_info :: !(P'.Maybe P'.Utf8),
                                                           container_exit_status :: !(P'.Maybe P'.Int32),
                                                           container_state :: !(P'.Maybe YarnProtos.ContainerStateProto)}
                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ContainerHistoryDataProto where
  mergeAppend (ContainerHistoryDataProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9)
   (ContainerHistoryDataProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9)
   = ContainerHistoryDataProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
 
instance P'.Default ContainerHistoryDataProto where
  defaultValue
   = ContainerHistoryDataProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire ContainerHistoryDataProto where
  wireSize ft' self'@(ContainerHistoryDataProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 3 x'5
             + P'.wireSizeOpt 1 3 x'6
             + P'.wireSizeOpt 1 9 x'7
             + P'.wireSizeOpt 1 5 x'8
             + P'.wireSizeOpt 1 14 x'9)
  wirePut ft' self'@(ContainerHistoryDataProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9)
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
             P'.wirePutOpt 26 11 x'3
             P'.wirePutOpt 34 11 x'4
             P'.wirePutOpt 40 3 x'5
             P'.wirePutOpt 48 3 x'6
             P'.wirePutOpt 58 9 x'7
             P'.wirePutOpt 64 5 x'8
             P'.wirePutOpt 72 14 x'9
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{container_id = P'.mergeAppend (container_id old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{allocated_resource = P'.mergeAppend (allocated_resource old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{assigned_node_id = P'.mergeAppend (assigned_node_id old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{priority = P'.mergeAppend (priority old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{start_time = Prelude'.Just new'Field}) (P'.wireGet 3)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{finish_time = Prelude'.Just new'Field}) (P'.wireGet 3)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{diagnostics_info = Prelude'.Just new'Field}) (P'.wireGet 9)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{container_exit_status = Prelude'.Just new'Field}) (P'.wireGet 5)
             72 -> Prelude'.fmap (\ !new'Field -> old'Self{container_state = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ContainerHistoryDataProto) ContainerHistoryDataProto where
  getVal m' f' = f' m'
 
instance P'.GPB ContainerHistoryDataProto
 
instance P'.ReflectDescriptor ContainerHistoryDataProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 40, 48, 58, 64, 72])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ContainerHistoryDataProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ApplicationHistoryServerProtos\"], baseName = MName \"ContainerHistoryDataProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ApplicationHistoryServerProtos\",\"ContainerHistoryDataProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerHistoryDataProto.container_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ContainerHistoryDataProto\"], baseName' = FName \"container_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerHistoryDataProto.allocated_resource\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ContainerHistoryDataProto\"], baseName' = FName \"allocated_resource\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerHistoryDataProto.assigned_node_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ContainerHistoryDataProto\"], baseName' = FName \"assigned_node_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NodeIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"NodeIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerHistoryDataProto.priority\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ContainerHistoryDataProto\"], baseName' = FName \"priority\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.PriorityProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"PriorityProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerHistoryDataProto.start_time\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ContainerHistoryDataProto\"], baseName' = FName \"start_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerHistoryDataProto.finish_time\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ContainerHistoryDataProto\"], baseName' = FName \"finish_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerHistoryDataProto.diagnostics_info\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ContainerHistoryDataProto\"], baseName' = FName \"diagnostics_info\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerHistoryDataProto.container_exit_status\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ContainerHistoryDataProto\"], baseName' = FName \"container_exit_status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerHistoryDataProto.container_state\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ContainerHistoryDataProto\"], baseName' = FName \"container_state\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 72}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerStateProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerStateProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ContainerHistoryDataProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ContainerHistoryDataProto where
  textPut msg
   = do
       P'.tellT "container_id" (container_id msg)
       P'.tellT "allocated_resource" (allocated_resource msg)
       P'.tellT "assigned_node_id" (assigned_node_id msg)
       P'.tellT "priority" (priority msg)
       P'.tellT "start_time" (start_time msg)
       P'.tellT "finish_time" (finish_time msg)
       P'.tellT "diagnostics_info" (diagnostics_info msg)
       P'.tellT "container_exit_status" (container_exit_status msg)
       P'.tellT "container_state" (container_state msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'container_id, parse'allocated_resource, parse'assigned_node_id, parse'priority, parse'start_time,
                   parse'finish_time, parse'diagnostics_info, parse'container_exit_status, parse'container_state])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'container_id
         = P'.try
            (do
               v <- P'.getT "container_id"
               Prelude'.return (\ o -> o{container_id = v}))
        parse'allocated_resource
         = P'.try
            (do
               v <- P'.getT "allocated_resource"
               Prelude'.return (\ o -> o{allocated_resource = v}))
        parse'assigned_node_id
         = P'.try
            (do
               v <- P'.getT "assigned_node_id"
               Prelude'.return (\ o -> o{assigned_node_id = v}))
        parse'priority
         = P'.try
            (do
               v <- P'.getT "priority"
               Prelude'.return (\ o -> o{priority = v}))
        parse'start_time
         = P'.try
            (do
               v <- P'.getT "start_time"
               Prelude'.return (\ o -> o{start_time = v}))
        parse'finish_time
         = P'.try
            (do
               v <- P'.getT "finish_time"
               Prelude'.return (\ o -> o{finish_time = v}))
        parse'diagnostics_info
         = P'.try
            (do
               v <- P'.getT "diagnostics_info"
               Prelude'.return (\ o -> o{diagnostics_info = v}))
        parse'container_exit_status
         = P'.try
            (do
               v <- P'.getT "container_exit_status"
               Prelude'.return (\ o -> o{container_exit_status = v}))
        parse'container_state
         = P'.try
            (do
               v <- P'.getT "container_state"
               Prelude'.return (\ o -> o{container_state = v}))