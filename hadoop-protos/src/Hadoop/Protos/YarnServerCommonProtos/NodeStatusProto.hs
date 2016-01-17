{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerCommonProtos.NodeStatusProto (NodeStatusProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationIdProto as YarnProtos (ApplicationIdProto)
import qualified Hadoop.Protos.YarnProtos.ContainerStatusProto as YarnProtos (ContainerStatusProto)
import qualified Hadoop.Protos.YarnProtos.NodeIdProto as YarnProtos (NodeIdProto)
import qualified Hadoop.Protos.YarnServerCommonProtos.NodeHealthStatusProto as YarnServerCommonProtos (NodeHealthStatusProto)
import qualified Hadoop.Protos.YarnServerCommonProtos.ResourceUtilizationProto as YarnServerCommonProtos (ResourceUtilizationProto)
 
data NodeStatusProto = NodeStatusProto{node_id :: !(P'.Maybe YarnProtos.NodeIdProto), response_id :: !(P'.Maybe P'.Int32),
                                       containersStatuses :: !(P'.Seq YarnProtos.ContainerStatusProto),
                                       nodeHealthStatus :: !(P'.Maybe YarnServerCommonProtos.NodeHealthStatusProto),
                                       keep_alive_applications :: !(P'.Seq YarnProtos.ApplicationIdProto),
                                       containers_utilization :: !(P'.Maybe YarnServerCommonProtos.ResourceUtilizationProto),
                                       node_utilization :: !(P'.Maybe YarnServerCommonProtos.ResourceUtilizationProto)}
                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable NodeStatusProto where
  mergeAppend (NodeStatusProto x'1 x'2 x'3 x'4 x'5 x'6 x'7) (NodeStatusProto y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = NodeStatusProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
 
instance P'.Default NodeStatusProto where
  defaultValue
   = NodeStatusProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire NodeStatusProto where
  wireSize ft' self'@(NodeStatusProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 5 x'2 + P'.wireSizeRep 1 11 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeRep 1 11 x'5
             + P'.wireSizeOpt 1 11 x'6
             + P'.wireSizeOpt 1 11 x'7)
  wirePut ft' self'@(NodeStatusProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
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
             P'.wirePutOpt 16 5 x'2
             P'.wirePutRep 26 11 x'3
             P'.wirePutOpt 34 11 x'4
             P'.wirePutRep 42 11 x'5
             P'.wirePutOpt 50 11 x'6
             P'.wirePutOpt 58 11 x'7
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{node_id = P'.mergeAppend (node_id old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{response_id = Prelude'.Just new'Field}) (P'.wireGet 5)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{containersStatuses = P'.append (containersStatuses old'Self) new'Field})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{nodeHealthStatus = P'.mergeAppend (nodeHealthStatus old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{keep_alive_applications = P'.append (keep_alive_applications old'Self) new'Field})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{containers_utilization = P'.mergeAppend (containers_utilization old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             58 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{node_utilization = P'.mergeAppend (node_utilization old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> NodeStatusProto) NodeStatusProto where
  getVal m' f' = f' m'
 
instance P'.GPB NodeStatusProto
 
instance P'.ReflectDescriptor NodeStatusProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16, 26, 34, 42, 50, 58])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.NodeStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonProtos\"], baseName = MName \"NodeStatusProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerCommonProtos\",\"NodeStatusProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeStatusProto.node_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonProtos\",MName \"NodeStatusProto\"], baseName' = FName \"node_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NodeIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"NodeIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeStatusProto.response_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonProtos\",MName \"NodeStatusProto\"], baseName' = FName \"response_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeStatusProto.containersStatuses\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonProtos\",MName \"NodeStatusProto\"], baseName' = FName \"containersStatuses\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeStatusProto.nodeHealthStatus\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonProtos\",MName \"NodeStatusProto\"], baseName' = FName \"nodeHealthStatus\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NodeHealthStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonProtos\"], baseName = MName \"NodeHealthStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeStatusProto.keep_alive_applications\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonProtos\",MName \"NodeStatusProto\"], baseName' = FName \"keep_alive_applications\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeStatusProto.containers_utilization\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonProtos\",MName \"NodeStatusProto\"], baseName' = FName \"containers_utilization\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceUtilizationProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonProtos\"], baseName = MName \"ResourceUtilizationProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeStatusProto.node_utilization\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonProtos\",MName \"NodeStatusProto\"], baseName' = FName \"node_utilization\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceUtilizationProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonProtos\"], baseName = MName \"ResourceUtilizationProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType NodeStatusProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg NodeStatusProto where
  textPut msg
   = do
       P'.tellT "node_id" (node_id msg)
       P'.tellT "response_id" (response_id msg)
       P'.tellT "containersStatuses" (containersStatuses msg)
       P'.tellT "nodeHealthStatus" (nodeHealthStatus msg)
       P'.tellT "keep_alive_applications" (keep_alive_applications msg)
       P'.tellT "containers_utilization" (containers_utilization msg)
       P'.tellT "node_utilization" (node_utilization msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'node_id, parse'response_id, parse'containersStatuses, parse'nodeHealthStatus,
                   parse'keep_alive_applications, parse'containers_utilization, parse'node_utilization])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'node_id
         = P'.try
            (do
               v <- P'.getT "node_id"
               Prelude'.return (\ o -> o{node_id = v}))
        parse'response_id
         = P'.try
            (do
               v <- P'.getT "response_id"
               Prelude'.return (\ o -> o{response_id = v}))
        parse'containersStatuses
         = P'.try
            (do
               v <- P'.getT "containersStatuses"
               Prelude'.return (\ o -> o{containersStatuses = P'.append (containersStatuses o) v}))
        parse'nodeHealthStatus
         = P'.try
            (do
               v <- P'.getT "nodeHealthStatus"
               Prelude'.return (\ o -> o{nodeHealthStatus = v}))
        parse'keep_alive_applications
         = P'.try
            (do
               v <- P'.getT "keep_alive_applications"
               Prelude'.return (\ o -> o{keep_alive_applications = P'.append (keep_alive_applications o) v}))
        parse'containers_utilization
         = P'.try
            (do
               v <- P'.getT "containers_utilization"
               Prelude'.return (\ o -> o{containers_utilization = v}))
        parse'node_utilization
         = P'.try
            (do
               v <- P'.getT "node_utilization"
               Prelude'.return (\ o -> o{node_utilization = v}))