{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.ApplicationResourceUsageReportProto (ApplicationResourceUsageReportProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ResourceProto as YarnProtos (ResourceProto)
 
data ApplicationResourceUsageReportProto = ApplicationResourceUsageReportProto{num_used_containers :: !(P'.Maybe P'.Int32),
                                                                               num_reserved_containers :: !(P'.Maybe P'.Int32),
                                                                               used_resources ::
                                                                               !(P'.Maybe YarnProtos.ResourceProto),
                                                                               reserved_resources ::
                                                                               !(P'.Maybe YarnProtos.ResourceProto),
                                                                               needed_resources ::
                                                                               !(P'.Maybe YarnProtos.ResourceProto),
                                                                               memory_seconds :: !(P'.Maybe P'.Int64),
                                                                               vcore_seconds :: !(P'.Maybe P'.Int64)}
                                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ApplicationResourceUsageReportProto where
  mergeAppend (ApplicationResourceUsageReportProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   (ApplicationResourceUsageReportProto y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = ApplicationResourceUsageReportProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
 
instance P'.Default ApplicationResourceUsageReportProto where
  defaultValue
   = ApplicationResourceUsageReportProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire ApplicationResourceUsageReportProto where
  wireSize ft' self'@(ApplicationResourceUsageReportProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 5 x'1 + P'.wireSizeOpt 1 5 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 11 x'5
             + P'.wireSizeOpt 1 3 x'6
             + P'.wireSizeOpt 1 3 x'7)
  wirePut ft' self'@(ApplicationResourceUsageReportProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
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
             P'.wirePutOpt 26 11 x'3
             P'.wirePutOpt 34 11 x'4
             P'.wirePutOpt 42 11 x'5
             P'.wirePutOpt 48 3 x'6
             P'.wirePutOpt 56 3 x'7
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{num_used_containers = Prelude'.Just new'Field}) (P'.wireGet 5)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{num_reserved_containers = Prelude'.Just new'Field}) (P'.wireGet 5)
             26 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{used_resources = P'.mergeAppend (used_resources old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{reserved_resources = P'.mergeAppend (reserved_resources old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{needed_resources = P'.mergeAppend (needed_resources old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{memory_seconds = Prelude'.Just new'Field}) (P'.wireGet 3)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{vcore_seconds = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ApplicationResourceUsageReportProto) ApplicationResourceUsageReportProto where
  getVal m' f' = f' m'
 
instance P'.GPB ApplicationResourceUsageReportProto
 
instance P'.ReflectDescriptor ApplicationResourceUsageReportProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 26, 34, 42, 48, 56])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationResourceUsageReportProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationResourceUsageReportProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"ApplicationResourceUsageReportProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationResourceUsageReportProto.num_used_containers\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationResourceUsageReportProto\"], baseName' = FName \"num_used_containers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationResourceUsageReportProto.num_reserved_containers\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationResourceUsageReportProto\"], baseName' = FName \"num_reserved_containers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationResourceUsageReportProto.used_resources\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationResourceUsageReportProto\"], baseName' = FName \"used_resources\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationResourceUsageReportProto.reserved_resources\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationResourceUsageReportProto\"], baseName' = FName \"reserved_resources\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationResourceUsageReportProto.needed_resources\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationResourceUsageReportProto\"], baseName' = FName \"needed_resources\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationResourceUsageReportProto.memory_seconds\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationResourceUsageReportProto\"], baseName' = FName \"memory_seconds\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationResourceUsageReportProto.vcore_seconds\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationResourceUsageReportProto\"], baseName' = FName \"vcore_seconds\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ApplicationResourceUsageReportProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ApplicationResourceUsageReportProto where
  textPut msg
   = do
       P'.tellT "num_used_containers" (num_used_containers msg)
       P'.tellT "num_reserved_containers" (num_reserved_containers msg)
       P'.tellT "used_resources" (used_resources msg)
       P'.tellT "reserved_resources" (reserved_resources msg)
       P'.tellT "needed_resources" (needed_resources msg)
       P'.tellT "memory_seconds" (memory_seconds msg)
       P'.tellT "vcore_seconds" (vcore_seconds msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'num_used_containers, parse'num_reserved_containers, parse'used_resources, parse'reserved_resources,
                   parse'needed_resources, parse'memory_seconds, parse'vcore_seconds])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'num_used_containers
         = P'.try
            (do
               v <- P'.getT "num_used_containers"
               Prelude'.return (\ o -> o{num_used_containers = v}))
        parse'num_reserved_containers
         = P'.try
            (do
               v <- P'.getT "num_reserved_containers"
               Prelude'.return (\ o -> o{num_reserved_containers = v}))
        parse'used_resources
         = P'.try
            (do
               v <- P'.getT "used_resources"
               Prelude'.return (\ o -> o{used_resources = v}))
        parse'reserved_resources
         = P'.try
            (do
               v <- P'.getT "reserved_resources"
               Prelude'.return (\ o -> o{reserved_resources = v}))
        parse'needed_resources
         = P'.try
            (do
               v <- P'.getT "needed_resources"
               Prelude'.return (\ o -> o{needed_resources = v}))
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