{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerCommonProtos.NodeHealthStatusProto (NodeHealthStatusProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data NodeHealthStatusProto = NodeHealthStatusProto{is_node_healthy :: !(P'.Maybe P'.Bool), health_report :: !(P'.Maybe P'.Utf8),
                                                   last_health_report_time :: !(P'.Maybe P'.Int64)}
                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable NodeHealthStatusProto where
  mergeAppend (NodeHealthStatusProto x'1 x'2 x'3) (NodeHealthStatusProto y'1 y'2 y'3)
   = NodeHealthStatusProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default NodeHealthStatusProto where
  defaultValue = NodeHealthStatusProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire NodeHealthStatusProto where
  wireSize ft' self'@(NodeHealthStatusProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 8 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 3 x'3)
  wirePut ft' self'@(NodeHealthStatusProto x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 8 x'1
             P'.wirePutOpt 18 9 x'2
             P'.wirePutOpt 24 3 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{is_node_healthy = Prelude'.Just new'Field}) (P'.wireGet 8)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{health_report = Prelude'.Just new'Field}) (P'.wireGet 9)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{last_health_report_time = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> NodeHealthStatusProto) NodeHealthStatusProto where
  getVal m' f' = f' m'
 
instance P'.GPB NodeHealthStatusProto
 
instance P'.ReflectDescriptor NodeHealthStatusProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.NodeHealthStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonProtos\"], baseName = MName \"NodeHealthStatusProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerCommonProtos\",\"NodeHealthStatusProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHealthStatusProto.is_node_healthy\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonProtos\",MName \"NodeHealthStatusProto\"], baseName' = FName \"is_node_healthy\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHealthStatusProto.health_report\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonProtos\",MName \"NodeHealthStatusProto\"], baseName' = FName \"health_report\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHealthStatusProto.last_health_report_time\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonProtos\",MName \"NodeHealthStatusProto\"], baseName' = FName \"last_health_report_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType NodeHealthStatusProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg NodeHealthStatusProto where
  textPut msg
   = do
       P'.tellT "is_node_healthy" (is_node_healthy msg)
       P'.tellT "health_report" (health_report msg)
       P'.tellT "last_health_report_time" (last_health_report_time msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'is_node_healthy, parse'health_report, parse'last_health_report_time]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'is_node_healthy
         = P'.try
            (do
               v <- P'.getT "is_node_healthy"
               Prelude'.return (\ o -> o{is_node_healthy = v}))
        parse'health_report
         = P'.try
            (do
               v <- P'.getT "health_report"
               Prelude'.return (\ o -> o{health_report = v}))
        parse'last_health_report_time
         = P'.try
            (do
               v <- P'.getT "last_health_report_time"
               Prelude'.return (\ o -> o{last_health_report_time = v}))