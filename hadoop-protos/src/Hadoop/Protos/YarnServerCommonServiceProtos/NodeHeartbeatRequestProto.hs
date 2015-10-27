{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerCommonServiceProtos.NodeHeartbeatRequestProto (NodeHeartbeatRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnServerCommonProtos.MasterKeyProto as YarnServerCommonProtos (MasterKeyProto)
import qualified Hadoop.Protos.YarnServerCommonProtos.NodeStatusProto as YarnServerCommonProtos (NodeStatusProto)
import qualified Hadoop.Protos.YarnServerCommonServiceProtos.LogAggregationReportProto as YarnServerCommonServiceProtos
       (LogAggregationReportProto)
import qualified Hadoop.Protos.YarnServerCommonServiceProtos.NodeLabelsProto as YarnServerCommonServiceProtos (NodeLabelsProto)
 
data NodeHeartbeatRequestProto = NodeHeartbeatRequestProto{node_status :: !(P'.Maybe YarnServerCommonProtos.NodeStatusProto),
                                                           last_known_container_token_master_key ::
                                                           !(P'.Maybe YarnServerCommonProtos.MasterKeyProto),
                                                           last_known_nm_token_master_key ::
                                                           !(P'.Maybe YarnServerCommonProtos.MasterKeyProto),
                                                           nodeLabels :: !(P'.Maybe YarnServerCommonServiceProtos.NodeLabelsProto),
                                                           log_aggregation_reports_for_apps ::
                                                           !(P'.Seq YarnServerCommonServiceProtos.LogAggregationReportProto)}
                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable NodeHeartbeatRequestProto where
  mergeAppend (NodeHeartbeatRequestProto x'1 x'2 x'3 x'4 x'5) (NodeHeartbeatRequestProto y'1 y'2 y'3 y'4 y'5)
   = NodeHeartbeatRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
 
instance P'.Default NodeHeartbeatRequestProto where
  defaultValue = NodeHeartbeatRequestProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire NodeHeartbeatRequestProto where
  wireSize ft' self'@(NodeHeartbeatRequestProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeRep 1 11 x'5)
  wirePut ft' self'@(NodeHeartbeatRequestProto x'1 x'2 x'3 x'4 x'5)
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
             P'.wirePutRep 42 11 x'5
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{node_status = P'.mergeAppend (node_status old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{last_known_container_token_master_key =
                                P'.mergeAppend (last_known_container_token_master_key old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{last_known_nm_token_master_key =
                                P'.mergeAppend (last_known_nm_token_master_key old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{nodeLabels = P'.mergeAppend (nodeLabels old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{log_aggregation_reports_for_apps = P'.append (log_aggregation_reports_for_apps old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> NodeHeartbeatRequestProto) NodeHeartbeatRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB NodeHeartbeatRequestProto
 
instance P'.ReflectDescriptor NodeHeartbeatRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 42])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.NodeHeartbeatRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonServiceProtos\"], baseName = MName \"NodeHeartbeatRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerCommonServiceProtos\",\"NodeHeartbeatRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHeartbeatRequestProto.node_status\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"NodeHeartbeatRequestProto\"], baseName' = FName \"node_status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NodeStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonProtos\"], baseName = MName \"NodeStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHeartbeatRequestProto.last_known_container_token_master_key\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"NodeHeartbeatRequestProto\"], baseName' = FName \"last_known_container_token_master_key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.MasterKeyProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonProtos\"], baseName = MName \"MasterKeyProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHeartbeatRequestProto.last_known_nm_token_master_key\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"NodeHeartbeatRequestProto\"], baseName' = FName \"last_known_nm_token_master_key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.MasterKeyProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonProtos\"], baseName = MName \"MasterKeyProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHeartbeatRequestProto.nodeLabels\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"NodeHeartbeatRequestProto\"], baseName' = FName \"nodeLabels\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NodeLabelsProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonServiceProtos\"], baseName = MName \"NodeLabelsProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHeartbeatRequestProto.log_aggregation_reports_for_apps\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"NodeHeartbeatRequestProto\"], baseName' = FName \"log_aggregation_reports_for_apps\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.LogAggregationReportProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonServiceProtos\"], baseName = MName \"LogAggregationReportProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType NodeHeartbeatRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg NodeHeartbeatRequestProto where
  textPut msg
   = do
       P'.tellT "node_status" (node_status msg)
       P'.tellT "last_known_container_token_master_key" (last_known_container_token_master_key msg)
       P'.tellT "last_known_nm_token_master_key" (last_known_nm_token_master_key msg)
       P'.tellT "nodeLabels" (nodeLabels msg)
       P'.tellT "log_aggregation_reports_for_apps" (log_aggregation_reports_for_apps msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'node_status, parse'last_known_container_token_master_key, parse'last_known_nm_token_master_key,
                   parse'nodeLabels, parse'log_aggregation_reports_for_apps])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'node_status
         = P'.try
            (do
               v <- P'.getT "node_status"
               Prelude'.return (\ o -> o{node_status = v}))
        parse'last_known_container_token_master_key
         = P'.try
            (do
               v <- P'.getT "last_known_container_token_master_key"
               Prelude'.return (\ o -> o{last_known_container_token_master_key = v}))
        parse'last_known_nm_token_master_key
         = P'.try
            (do
               v <- P'.getT "last_known_nm_token_master_key"
               Prelude'.return (\ o -> o{last_known_nm_token_master_key = v}))
        parse'nodeLabels
         = P'.try
            (do
               v <- P'.getT "nodeLabels"
               Prelude'.return (\ o -> o{nodeLabels = v}))
        parse'log_aggregation_reports_for_apps
         = P'.try
            (do
               v <- P'.getT "log_aggregation_reports_for_apps"
               Prelude'.return (\ o -> o{log_aggregation_reports_for_apps = P'.append (log_aggregation_reports_for_apps o) v}))