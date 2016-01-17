{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.BlockStoragePolicyProto (BlockStoragePolicyProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.StorageTypesProto as HdfsProtos (StorageTypesProto)
 
data BlockStoragePolicyProto = BlockStoragePolicyProto{policyId :: !(P'.Word32), name :: !(P'.Utf8),
                                                       creationPolicy :: !(HdfsProtos.StorageTypesProto),
                                                       creationFallbackPolicy :: !(P'.Maybe HdfsProtos.StorageTypesProto),
                                                       replicationFallbackPolicy :: !(P'.Maybe HdfsProtos.StorageTypesProto)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable BlockStoragePolicyProto where
  mergeAppend (BlockStoragePolicyProto x'1 x'2 x'3 x'4 x'5) (BlockStoragePolicyProto y'1 y'2 y'3 y'4 y'5)
   = BlockStoragePolicyProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
 
instance P'.Default BlockStoragePolicyProto where
  defaultValue = BlockStoragePolicyProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire BlockStoragePolicyProto where
  wireSize ft' self'@(BlockStoragePolicyProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 13 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeReq 1 11 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 11 x'5)
  wirePut ft' self'@(BlockStoragePolicyProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 13 x'1
             P'.wirePutReq 18 9 x'2
             P'.wirePutReq 26 11 x'3
             P'.wirePutOpt 34 11 x'4
             P'.wirePutOpt 42 11 x'5
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{policyId = new'Field}) (P'.wireGet 13)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{name = new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{creationPolicy = P'.mergeAppend (creationPolicy old'Self) (new'Field)})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{creationFallbackPolicy = P'.mergeAppend (creationFallbackPolicy old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{replicationFallbackPolicy =
                                P'.mergeAppend (replicationFallbackPolicy old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> BlockStoragePolicyProto) BlockStoragePolicyProto where
  getVal m' f' = f' m'
 
instance P'.GPB BlockStoragePolicyProto
 
instance P'.ReflectDescriptor BlockStoragePolicyProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 18, 26]) (P'.fromDistinctAscList [8, 18, 26, 34, 42])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.BlockStoragePolicyProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"BlockStoragePolicyProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"BlockStoragePolicyProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockStoragePolicyProto.policyId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"BlockStoragePolicyProto\"], baseName' = FName \"policyId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockStoragePolicyProto.name\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"BlockStoragePolicyProto\"], baseName' = FName \"name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockStoragePolicyProto.creationPolicy\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"BlockStoragePolicyProto\"], baseName' = FName \"creationPolicy\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageTypesProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageTypesProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockStoragePolicyProto.creationFallbackPolicy\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"BlockStoragePolicyProto\"], baseName' = FName \"creationFallbackPolicy\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageTypesProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageTypesProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockStoragePolicyProto.replicationFallbackPolicy\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"BlockStoragePolicyProto\"], baseName' = FName \"replicationFallbackPolicy\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageTypesProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageTypesProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType BlockStoragePolicyProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg BlockStoragePolicyProto where
  textPut msg
   = do
       P'.tellT "policyId" (policyId msg)
       P'.tellT "name" (name msg)
       P'.tellT "creationPolicy" (creationPolicy msg)
       P'.tellT "creationFallbackPolicy" (creationFallbackPolicy msg)
       P'.tellT "replicationFallbackPolicy" (replicationFallbackPolicy msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'policyId, parse'name, parse'creationPolicy, parse'creationFallbackPolicy, parse'replicationFallbackPolicy])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'policyId
         = P'.try
            (do
               v <- P'.getT "policyId"
               Prelude'.return (\ o -> o{policyId = v}))
        parse'name
         = P'.try
            (do
               v <- P'.getT "name"
               Prelude'.return (\ o -> o{name = v}))
        parse'creationPolicy
         = P'.try
            (do
               v <- P'.getT "creationPolicy"
               Prelude'.return (\ o -> o{creationPolicy = v}))
        parse'creationFallbackPolicy
         = P'.try
            (do
               v <- P'.getT "creationFallbackPolicy"
               Prelude'.return (\ o -> o{creationFallbackPolicy = v}))
        parse'replicationFallbackPolicy
         = P'.try
            (do
               v <- P'.getT "replicationFallbackPolicy"
               Prelude'.return (\ o -> o{replicationFallbackPolicy = v}))