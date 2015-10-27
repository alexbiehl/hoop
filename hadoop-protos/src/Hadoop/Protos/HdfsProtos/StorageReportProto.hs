{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.StorageReportProto (StorageReportProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.DatanodeStorageProto as HdfsProtos (DatanodeStorageProto)
 
data StorageReportProto = StorageReportProto{storageUuid :: !(P'.Utf8), failed :: !(P'.Maybe P'.Bool),
                                             capacity :: !(P'.Maybe P'.Word64), dfsUsed :: !(P'.Maybe P'.Word64),
                                             remaining :: !(P'.Maybe P'.Word64), blockPoolUsed :: !(P'.Maybe P'.Word64),
                                             storage :: !(P'.Maybe HdfsProtos.DatanodeStorageProto)}
                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable StorageReportProto where
  mergeAppend (StorageReportProto x'1 x'2 x'3 x'4 x'5 x'6 x'7) (StorageReportProto y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = StorageReportProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
 
instance P'.Default StorageReportProto where
  defaultValue
   = StorageReportProto P'.defaultValue (Prelude'.Just Prelude'.False) (Prelude'.Just 0) (Prelude'.Just 0) (Prelude'.Just 0)
      (Prelude'.Just 0)
      P'.defaultValue
 
instance P'.Wire StorageReportProto where
  wireSize ft' self'@(StorageReportProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeOpt 1 8 x'2 + P'.wireSizeOpt 1 4 x'3 + P'.wireSizeOpt 1 4 x'4 +
             P'.wireSizeOpt 1 4 x'5
             + P'.wireSizeOpt 1 4 x'6
             + P'.wireSizeOpt 1 11 x'7)
  wirePut ft' self'@(StorageReportProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 9 x'1
             P'.wirePutOpt 16 8 x'2
             P'.wirePutOpt 24 4 x'3
             P'.wirePutOpt 32 4 x'4
             P'.wirePutOpt 40 4 x'5
             P'.wirePutOpt 48 4 x'6
             P'.wirePutOpt 58 11 x'7
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{storageUuid = new'Field}) (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{failed = Prelude'.Just new'Field}) (P'.wireGet 8)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{capacity = Prelude'.Just new'Field}) (P'.wireGet 4)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{dfsUsed = Prelude'.Just new'Field}) (P'.wireGet 4)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{remaining = Prelude'.Just new'Field}) (P'.wireGet 4)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{blockPoolUsed = Prelude'.Just new'Field}) (P'.wireGet 4)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{storage = P'.mergeAppend (storage old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> StorageReportProto) StorageReportProto where
  getVal m' f' = f' m'
 
instance P'.GPB StorageReportProto
 
instance P'.ReflectDescriptor StorageReportProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10, 16, 24, 32, 40, 48, 58])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.StorageReportProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageReportProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"StorageReportProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.StorageReportProto.storageUuid\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"StorageReportProto\"], baseName' = FName \"storageUuid\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.StorageReportProto.failed\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"StorageReportProto\"], baseName' = FName \"failed\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.StorageReportProto.capacity\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"StorageReportProto\"], baseName' = FName \"capacity\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.StorageReportProto.dfsUsed\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"StorageReportProto\"], baseName' = FName \"dfsUsed\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.StorageReportProto.remaining\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"StorageReportProto\"], baseName' = FName \"remaining\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.StorageReportProto.blockPoolUsed\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"StorageReportProto\"], baseName' = FName \"blockPoolUsed\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.StorageReportProto.storage\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"StorageReportProto\"], baseName' = FName \"storage\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeStorageProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeStorageProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType StorageReportProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg StorageReportProto where
  textPut msg
   = do
       P'.tellT "storageUuid" (storageUuid msg)
       P'.tellT "failed" (failed msg)
       P'.tellT "capacity" (capacity msg)
       P'.tellT "dfsUsed" (dfsUsed msg)
       P'.tellT "remaining" (remaining msg)
       P'.tellT "blockPoolUsed" (blockPoolUsed msg)
       P'.tellT "storage" (storage msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'storageUuid, parse'failed, parse'capacity, parse'dfsUsed, parse'remaining, parse'blockPoolUsed,
                   parse'storage])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'storageUuid
         = P'.try
            (do
               v <- P'.getT "storageUuid"
               Prelude'.return (\ o -> o{storageUuid = v}))
        parse'failed
         = P'.try
            (do
               v <- P'.getT "failed"
               Prelude'.return (\ o -> o{failed = v}))
        parse'capacity
         = P'.try
            (do
               v <- P'.getT "capacity"
               Prelude'.return (\ o -> o{capacity = v}))
        parse'dfsUsed
         = P'.try
            (do
               v <- P'.getT "dfsUsed"
               Prelude'.return (\ o -> o{dfsUsed = v}))
        parse'remaining
         = P'.try
            (do
               v <- P'.getT "remaining"
               Prelude'.return (\ o -> o{remaining = v}))
        parse'blockPoolUsed
         = P'.try
            (do
               v <- P'.getT "blockPoolUsed"
               Prelude'.return (\ o -> o{blockPoolUsed = v}))
        parse'storage
         = P'.try
            (do
               v <- P'.getT "storage"
               Prelude'.return (\ o -> o{storage = v}))