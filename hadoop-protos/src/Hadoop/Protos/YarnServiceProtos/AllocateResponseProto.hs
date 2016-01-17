{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.AllocateResponseProto (AllocateResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.SecurityProtos.TokenProto as SecurityProtos (TokenProto)
import qualified Hadoop.Protos.YarnProtos.AMCommandProto as YarnProtos (AMCommandProto)
import qualified Hadoop.Protos.YarnProtos.ContainerProto as YarnProtos (ContainerProto)
import qualified Hadoop.Protos.YarnProtos.ContainerResourceDecreaseProto as YarnProtos (ContainerResourceDecreaseProto)
import qualified Hadoop.Protos.YarnProtos.ContainerResourceIncreaseProto as YarnProtos (ContainerResourceIncreaseProto)
import qualified Hadoop.Protos.YarnProtos.ContainerStatusProto as YarnProtos (ContainerStatusProto)
import qualified Hadoop.Protos.YarnProtos.NodeReportProto as YarnProtos (NodeReportProto)
import qualified Hadoop.Protos.YarnProtos.PreemptionMessageProto as YarnProtos (PreemptionMessageProto)
import qualified Hadoop.Protos.YarnProtos.ResourceProto as YarnProtos (ResourceProto)
import qualified Hadoop.Protos.YarnServiceProtos.NMTokenProto as YarnServiceProtos (NMTokenProto)
 
data AllocateResponseProto = AllocateResponseProto{a_m_command :: !(P'.Maybe YarnProtos.AMCommandProto),
                                                   response_id :: !(P'.Maybe P'.Int32),
                                                   allocated_containers :: !(P'.Seq YarnProtos.ContainerProto),
                                                   completed_container_statuses :: !(P'.Seq YarnProtos.ContainerStatusProto),
                                                   limit :: !(P'.Maybe YarnProtos.ResourceProto),
                                                   updated_nodes :: !(P'.Seq YarnProtos.NodeReportProto),
                                                   num_cluster_nodes :: !(P'.Maybe P'.Int32),
                                                   preempt :: !(P'.Maybe YarnProtos.PreemptionMessageProto),
                                                   nm_tokens :: !(P'.Seq YarnServiceProtos.NMTokenProto),
                                                   increased_containers :: !(P'.Seq YarnProtos.ContainerResourceIncreaseProto),
                                                   decreased_containers :: !(P'.Seq YarnProtos.ContainerResourceDecreaseProto),
                                                   am_rm_token :: !(P'.Maybe SecurityProtos.TokenProto)}
                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AllocateResponseProto where
  mergeAppend (AllocateResponseProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
   (AllocateResponseProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12)
   = AllocateResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)
      (P'.mergeAppend x'12 y'12)
 
instance P'.Default AllocateResponseProto where
  defaultValue
   = AllocateResponseProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire AllocateResponseProto where
  wireSize ft' self'@(AllocateResponseProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeOpt 1 5 x'2 + P'.wireSizeRep 1 11 x'3 + P'.wireSizeRep 1 11 x'4 +
             P'.wireSizeOpt 1 11 x'5
             + P'.wireSizeRep 1 11 x'6
             + P'.wireSizeOpt 1 5 x'7
             + P'.wireSizeOpt 1 11 x'8
             + P'.wireSizeRep 1 11 x'9
             + P'.wireSizeRep 1 11 x'10
             + P'.wireSizeRep 1 11 x'11
             + P'.wireSizeOpt 1 11 x'12)
  wirePut ft' self'@(AllocateResponseProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 14 x'1
             P'.wirePutOpt 16 5 x'2
             P'.wirePutRep 26 11 x'3
             P'.wirePutRep 34 11 x'4
             P'.wirePutOpt 42 11 x'5
             P'.wirePutRep 50 11 x'6
             P'.wirePutOpt 56 5 x'7
             P'.wirePutOpt 66 11 x'8
             P'.wirePutRep 74 11 x'9
             P'.wirePutRep 82 11 x'10
             P'.wirePutRep 90 11 x'11
             P'.wirePutOpt 98 11 x'12
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{a_m_command = Prelude'.Just new'Field}) (P'.wireGet 14)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{response_id = Prelude'.Just new'Field}) (P'.wireGet 5)
             26 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{allocated_containers = P'.append (allocated_containers old'Self) new'Field})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{completed_container_statuses = P'.append (completed_container_statuses old'Self) new'Field})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{limit = P'.mergeAppend (limit old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{updated_nodes = P'.append (updated_nodes old'Self) new'Field})
                    (P'.wireGet 11)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{num_cluster_nodes = Prelude'.Just new'Field}) (P'.wireGet 5)
             66 -> Prelude'.fmap (\ !new'Field -> old'Self{preempt = P'.mergeAppend (preempt old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             74 -> Prelude'.fmap (\ !new'Field -> old'Self{nm_tokens = P'.append (nm_tokens old'Self) new'Field}) (P'.wireGet 11)
             82 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{increased_containers = P'.append (increased_containers old'Self) new'Field})
                    (P'.wireGet 11)
             90 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{decreased_containers = P'.append (decreased_containers old'Self) new'Field})
                    (P'.wireGet 11)
             98 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{am_rm_token = P'.mergeAppend (am_rm_token old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> AllocateResponseProto) AllocateResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB AllocateResponseProto
 
instance P'.ReflectDescriptor AllocateResponseProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 26, 34, 42, 50, 56, 66, 74, 82, 90, 98])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.AllocateResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"AllocateResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"AllocateResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateResponseProto.a_m_command\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateResponseProto\"], baseName' = FName \"a_m_command\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.AMCommandProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"AMCommandProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateResponseProto.response_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateResponseProto\"], baseName' = FName \"response_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateResponseProto.allocated_containers\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateResponseProto\"], baseName' = FName \"allocated_containers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateResponseProto.completed_container_statuses\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateResponseProto\"], baseName' = FName \"completed_container_statuses\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateResponseProto.limit\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateResponseProto\"], baseName' = FName \"limit\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateResponseProto.updated_nodes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateResponseProto\"], baseName' = FName \"updated_nodes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NodeReportProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"NodeReportProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateResponseProto.num_cluster_nodes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateResponseProto\"], baseName' = FName \"num_cluster_nodes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateResponseProto.preempt\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateResponseProto\"], baseName' = FName \"preempt\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.PreemptionMessageProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"PreemptionMessageProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateResponseProto.nm_tokens\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateResponseProto\"], baseName' = FName \"nm_tokens\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NMTokenProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"NMTokenProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateResponseProto.increased_containers\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateResponseProto\"], baseName' = FName \"increased_containers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerResourceIncreaseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerResourceIncreaseProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateResponseProto.decreased_containers\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateResponseProto\"], baseName' = FName \"decreased_containers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerResourceDecreaseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerResourceDecreaseProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateResponseProto.am_rm_token\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateResponseProto\"], baseName' = FName \"am_rm_token\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 98}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.TokenProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"SecurityProtos\"], baseName = MName \"TokenProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType AllocateResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg AllocateResponseProto where
  textPut msg
   = do
       P'.tellT "a_m_command" (a_m_command msg)
       P'.tellT "response_id" (response_id msg)
       P'.tellT "allocated_containers" (allocated_containers msg)
       P'.tellT "completed_container_statuses" (completed_container_statuses msg)
       P'.tellT "limit" (limit msg)
       P'.tellT "updated_nodes" (updated_nodes msg)
       P'.tellT "num_cluster_nodes" (num_cluster_nodes msg)
       P'.tellT "preempt" (preempt msg)
       P'.tellT "nm_tokens" (nm_tokens msg)
       P'.tellT "increased_containers" (increased_containers msg)
       P'.tellT "decreased_containers" (decreased_containers msg)
       P'.tellT "am_rm_token" (am_rm_token msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'a_m_command, parse'response_id, parse'allocated_containers, parse'completed_container_statuses,
                   parse'limit, parse'updated_nodes, parse'num_cluster_nodes, parse'preempt, parse'nm_tokens,
                   parse'increased_containers, parse'decreased_containers, parse'am_rm_token])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'a_m_command
         = P'.try
            (do
               v <- P'.getT "a_m_command"
               Prelude'.return (\ o -> o{a_m_command = v}))
        parse'response_id
         = P'.try
            (do
               v <- P'.getT "response_id"
               Prelude'.return (\ o -> o{response_id = v}))
        parse'allocated_containers
         = P'.try
            (do
               v <- P'.getT "allocated_containers"
               Prelude'.return (\ o -> o{allocated_containers = P'.append (allocated_containers o) v}))
        parse'completed_container_statuses
         = P'.try
            (do
               v <- P'.getT "completed_container_statuses"
               Prelude'.return (\ o -> o{completed_container_statuses = P'.append (completed_container_statuses o) v}))
        parse'limit
         = P'.try
            (do
               v <- P'.getT "limit"
               Prelude'.return (\ o -> o{limit = v}))
        parse'updated_nodes
         = P'.try
            (do
               v <- P'.getT "updated_nodes"
               Prelude'.return (\ o -> o{updated_nodes = P'.append (updated_nodes o) v}))
        parse'num_cluster_nodes
         = P'.try
            (do
               v <- P'.getT "num_cluster_nodes"
               Prelude'.return (\ o -> o{num_cluster_nodes = v}))
        parse'preempt
         = P'.try
            (do
               v <- P'.getT "preempt"
               Prelude'.return (\ o -> o{preempt = v}))
        parse'nm_tokens
         = P'.try
            (do
               v <- P'.getT "nm_tokens"
               Prelude'.return (\ o -> o{nm_tokens = P'.append (nm_tokens o) v}))
        parse'increased_containers
         = P'.try
            (do
               v <- P'.getT "increased_containers"
               Prelude'.return (\ o -> o{increased_containers = P'.append (increased_containers o) v}))
        parse'decreased_containers
         = P'.try
            (do
               v <- P'.getT "decreased_containers"
               Prelude'.return (\ o -> o{decreased_containers = P'.append (decreased_containers o) v}))
        parse'am_rm_token
         = P'.try
            (do
               v <- P'.getT "am_rm_token"
               Prelude'.return (\ o -> o{am_rm_token = v}))