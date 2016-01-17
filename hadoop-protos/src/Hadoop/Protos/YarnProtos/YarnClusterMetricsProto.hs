{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.YarnClusterMetricsProto (YarnClusterMetricsProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data YarnClusterMetricsProto = YarnClusterMetricsProto{num_node_managers :: !(P'.Maybe P'.Int32),
                                                       num_decommissioned_nms :: !(P'.Maybe P'.Int32),
                                                       num_active_nms :: !(P'.Maybe P'.Int32), num_lost_nms :: !(P'.Maybe P'.Int32),
                                                       num_unhealthy_nms :: !(P'.Maybe P'.Int32),
                                                       num_rebooted_nms :: !(P'.Maybe P'.Int32)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable YarnClusterMetricsProto where
  mergeAppend (YarnClusterMetricsProto x'1 x'2 x'3 x'4 x'5 x'6) (YarnClusterMetricsProto y'1 y'2 y'3 y'4 y'5 y'6)
   = YarnClusterMetricsProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
 
instance P'.Default YarnClusterMetricsProto where
  defaultValue
   = YarnClusterMetricsProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire YarnClusterMetricsProto where
  wireSize ft' self'@(YarnClusterMetricsProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 5 x'1 + P'.wireSizeOpt 1 5 x'2 + P'.wireSizeOpt 1 5 x'3 + P'.wireSizeOpt 1 5 x'4 +
             P'.wireSizeOpt 1 5 x'5
             + P'.wireSizeOpt 1 5 x'6)
  wirePut ft' self'@(YarnClusterMetricsProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 5 x'1
             P'.wirePutOpt 16 5 x'2
             P'.wirePutOpt 24 5 x'3
             P'.wirePutOpt 32 5 x'4
             P'.wirePutOpt 40 5 x'5
             P'.wirePutOpt 48 5 x'6
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{num_node_managers = Prelude'.Just new'Field}) (P'.wireGet 5)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{num_decommissioned_nms = Prelude'.Just new'Field}) (P'.wireGet 5)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{num_active_nms = Prelude'.Just new'Field}) (P'.wireGet 5)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{num_lost_nms = Prelude'.Just new'Field}) (P'.wireGet 5)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{num_unhealthy_nms = Prelude'.Just new'Field}) (P'.wireGet 5)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{num_rebooted_nms = Prelude'.Just new'Field}) (P'.wireGet 5)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> YarnClusterMetricsProto) YarnClusterMetricsProto where
  getVal m' f' = f' m'
 
instance P'.GPB YarnClusterMetricsProto
 
instance P'.ReflectDescriptor YarnClusterMetricsProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 24, 32, 40, 48])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.YarnClusterMetricsProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"YarnClusterMetricsProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"YarnClusterMetricsProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.YarnClusterMetricsProto.num_node_managers\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"YarnClusterMetricsProto\"], baseName' = FName \"num_node_managers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.YarnClusterMetricsProto.num_decommissioned_nms\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"YarnClusterMetricsProto\"], baseName' = FName \"num_decommissioned_nms\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.YarnClusterMetricsProto.num_active_nms\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"YarnClusterMetricsProto\"], baseName' = FName \"num_active_nms\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.YarnClusterMetricsProto.num_lost_nms\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"YarnClusterMetricsProto\"], baseName' = FName \"num_lost_nms\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.YarnClusterMetricsProto.num_unhealthy_nms\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"YarnClusterMetricsProto\"], baseName' = FName \"num_unhealthy_nms\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.YarnClusterMetricsProto.num_rebooted_nms\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"YarnClusterMetricsProto\"], baseName' = FName \"num_rebooted_nms\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType YarnClusterMetricsProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg YarnClusterMetricsProto where
  textPut msg
   = do
       P'.tellT "num_node_managers" (num_node_managers msg)
       P'.tellT "num_decommissioned_nms" (num_decommissioned_nms msg)
       P'.tellT "num_active_nms" (num_active_nms msg)
       P'.tellT "num_lost_nms" (num_lost_nms msg)
       P'.tellT "num_unhealthy_nms" (num_unhealthy_nms msg)
       P'.tellT "num_rebooted_nms" (num_rebooted_nms msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'num_node_managers, parse'num_decommissioned_nms, parse'num_active_nms, parse'num_lost_nms,
                   parse'num_unhealthy_nms, parse'num_rebooted_nms])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'num_node_managers
         = P'.try
            (do
               v <- P'.getT "num_node_managers"
               Prelude'.return (\ o -> o{num_node_managers = v}))
        parse'num_decommissioned_nms
         = P'.try
            (do
               v <- P'.getT "num_decommissioned_nms"
               Prelude'.return (\ o -> o{num_decommissioned_nms = v}))
        parse'num_active_nms
         = P'.try
            (do
               v <- P'.getT "num_active_nms"
               Prelude'.return (\ o -> o{num_active_nms = v}))
        parse'num_lost_nms
         = P'.try
            (do
               v <- P'.getT "num_lost_nms"
               Prelude'.return (\ o -> o{num_lost_nms = v}))
        parse'num_unhealthy_nms
         = P'.try
            (do
               v <- P'.getT "num_unhealthy_nms"
               Prelude'.return (\ o -> o{num_unhealthy_nms = v}))
        parse'num_rebooted_nms
         = P'.try
            (do
               v <- P'.getT "num_rebooted_nms"
               Prelude'.return (\ o -> o{num_rebooted_nms = v}))