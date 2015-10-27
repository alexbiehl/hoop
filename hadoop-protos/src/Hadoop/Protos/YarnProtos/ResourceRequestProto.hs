{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.ResourceRequestProto (ResourceRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.PriorityProto as YarnProtos (PriorityProto)
import qualified Hadoop.Protos.YarnProtos.ResourceProto as YarnProtos (ResourceProto)
 
data ResourceRequestProto = ResourceRequestProto{priority :: !(P'.Maybe YarnProtos.PriorityProto),
                                                 resource_name :: !(P'.Maybe P'.Utf8),
                                                 capability :: !(P'.Maybe YarnProtos.ResourceProto),
                                                 num_containers :: !(P'.Maybe P'.Int32), relax_locality :: !(P'.Maybe P'.Bool),
                                                 node_label_expression :: !(P'.Maybe P'.Utf8)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ResourceRequestProto where
  mergeAppend (ResourceRequestProto x'1 x'2 x'3 x'4 x'5 x'6) (ResourceRequestProto y'1 y'2 y'3 y'4 y'5 y'6)
   = ResourceRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
 
instance P'.Default ResourceRequestProto where
  defaultValue
   = ResourceRequestProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue (Prelude'.Just Prelude'.True)
      P'.defaultValue
 
instance P'.Wire ResourceRequestProto where
  wireSize ft' self'@(ResourceRequestProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 5 x'4 +
             P'.wireSizeOpt 1 8 x'5
             + P'.wireSizeOpt 1 9 x'6)
  wirePut ft' self'@(ResourceRequestProto x'1 x'2 x'3 x'4 x'5 x'6)
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
             P'.wirePutOpt 26 11 x'3
             P'.wirePutOpt 32 5 x'4
             P'.wirePutOpt 40 8 x'5
             P'.wirePutOpt 50 9 x'6
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{priority = P'.mergeAppend (priority old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{resource_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{capability = P'.mergeAppend (capability old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{num_containers = Prelude'.Just new'Field}) (P'.wireGet 5)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{relax_locality = Prelude'.Just new'Field}) (P'.wireGet 8)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{node_label_expression = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ResourceRequestProto) ResourceRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB ResourceRequestProto
 
instance P'.ReflectDescriptor ResourceRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 32, 40, 50])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ResourceRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"ResourceRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ResourceRequestProto.priority\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ResourceRequestProto\"], baseName' = FName \"priority\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.PriorityProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"PriorityProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ResourceRequestProto.resource_name\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ResourceRequestProto\"], baseName' = FName \"resource_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ResourceRequestProto.capability\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ResourceRequestProto\"], baseName' = FName \"capability\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ResourceRequestProto.num_containers\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ResourceRequestProto\"], baseName' = FName \"num_containers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ResourceRequestProto.relax_locality\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ResourceRequestProto\"], baseName' = FName \"relax_locality\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"true\", hsDefault = Just (HsDef'Bool True)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ResourceRequestProto.node_label_expression\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ResourceRequestProto\"], baseName' = FName \"node_label_expression\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ResourceRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ResourceRequestProto where
  textPut msg
   = do
       P'.tellT "priority" (priority msg)
       P'.tellT "resource_name" (resource_name msg)
       P'.tellT "capability" (capability msg)
       P'.tellT "num_containers" (num_containers msg)
       P'.tellT "relax_locality" (relax_locality msg)
       P'.tellT "node_label_expression" (node_label_expression msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'priority, parse'resource_name, parse'capability, parse'num_containers, parse'relax_locality,
                   parse'node_label_expression])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'priority
         = P'.try
            (do
               v <- P'.getT "priority"
               Prelude'.return (\ o -> o{priority = v}))
        parse'resource_name
         = P'.try
            (do
               v <- P'.getT "resource_name"
               Prelude'.return (\ o -> o{resource_name = v}))
        parse'capability
         = P'.try
            (do
               v <- P'.getT "capability"
               Prelude'.return (\ o -> o{capability = v}))
        parse'num_containers
         = P'.try
            (do
               v <- P'.getT "num_containers"
               Prelude'.return (\ o -> o{num_containers = v}))
        parse'relax_locality
         = P'.try
            (do
               v <- P'.getT "relax_locality"
               Prelude'.return (\ o -> o{relax_locality = v}))
        parse'node_label_expression
         = P'.try
            (do
               v <- P'.getT "node_label_expression"
               Prelude'.return (\ o -> o{node_label_expression = v}))