{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.DatanodeInfoProto (DatanodeInfoProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.DatanodeIDProto as HdfsProtos (DatanodeIDProto)
import qualified Hadoop.Protos.HdfsProtos.DatanodeInfoProto.AdminState as HdfsProtos.DatanodeInfoProto (AdminState)
 
data DatanodeInfoProto = DatanodeInfoProto{id :: !(HdfsProtos.DatanodeIDProto), capacity :: !(P'.Maybe P'.Word64),
                                           dfsUsed :: !(P'.Maybe P'.Word64), remaining :: !(P'.Maybe P'.Word64),
                                           blockPoolUsed :: !(P'.Maybe P'.Word64), lastUpdate :: !(P'.Maybe P'.Word64),
                                           xceiverCount :: !(P'.Maybe P'.Word32), location :: !(P'.Maybe P'.Utf8),
                                           adminState :: !(P'.Maybe HdfsProtos.DatanodeInfoProto.AdminState),
                                           cacheCapacity :: !(P'.Maybe P'.Word64), cacheUsed :: !(P'.Maybe P'.Word64),
                                           lastUpdateMonotonic :: !(P'.Maybe P'.Word64)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable DatanodeInfoProto where
  mergeAppend (DatanodeInfoProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
   (DatanodeInfoProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12)
   = DatanodeInfoProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)
      (P'.mergeAppend x'12 y'12)
 
instance P'.Default DatanodeInfoProto where
  defaultValue
   = DatanodeInfoProto P'.defaultValue (Prelude'.Just 0) (Prelude'.Just 0) (Prelude'.Just 0) (Prelude'.Just 0) (Prelude'.Just 0)
      (Prelude'.Just 0)
      P'.defaultValue
      (Prelude'.Just (Prelude'.read "NORMAL"))
      (Prelude'.Just 0)
      (Prelude'.Just 0)
      (Prelude'.Just 0)
 
instance P'.Wire DatanodeInfoProto where
  wireSize ft' self'@(DatanodeInfoProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeOpt 1 4 x'2 + P'.wireSizeOpt 1 4 x'3 + P'.wireSizeOpt 1 4 x'4 +
             P'.wireSizeOpt 1 4 x'5
             + P'.wireSizeOpt 1 4 x'6
             + P'.wireSizeOpt 1 13 x'7
             + P'.wireSizeOpt 1 9 x'8
             + P'.wireSizeOpt 1 14 x'9
             + P'.wireSizeOpt 1 4 x'10
             + P'.wireSizeOpt 1 4 x'11
             + P'.wireSizeOpt 1 4 x'12)
  wirePut ft' self'@(DatanodeInfoProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 11 x'1
             P'.wirePutOpt 16 4 x'2
             P'.wirePutOpt 24 4 x'3
             P'.wirePutOpt 32 4 x'4
             P'.wirePutOpt 40 4 x'5
             P'.wirePutOpt 48 4 x'6
             P'.wirePutOpt 56 13 x'7
             P'.wirePutOpt 66 9 x'8
             P'.wirePutOpt 80 14 x'9
             P'.wirePutOpt 88 4 x'10
             P'.wirePutOpt 96 4 x'11
             P'.wirePutOpt 104 4 x'12
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{id = P'.mergeAppend (id old'Self) (new'Field)}) (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{capacity = Prelude'.Just new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{dfsUsed = Prelude'.Just new'Field}) (P'.wireGet 4)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{remaining = Prelude'.Just new'Field}) (P'.wireGet 4)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{blockPoolUsed = Prelude'.Just new'Field}) (P'.wireGet 4)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{lastUpdate = Prelude'.Just new'Field}) (P'.wireGet 4)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{xceiverCount = Prelude'.Just new'Field}) (P'.wireGet 13)
             66 -> Prelude'.fmap (\ !new'Field -> old'Self{location = Prelude'.Just new'Field}) (P'.wireGet 9)
             80 -> Prelude'.fmap (\ !new'Field -> old'Self{adminState = Prelude'.Just new'Field}) (P'.wireGet 14)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{cacheCapacity = Prelude'.Just new'Field}) (P'.wireGet 4)
             96 -> Prelude'.fmap (\ !new'Field -> old'Self{cacheUsed = Prelude'.Just new'Field}) (P'.wireGet 4)
             104 -> Prelude'.fmap (\ !new'Field -> old'Self{lastUpdateMonotonic = Prelude'.Just new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> DatanodeInfoProto) DatanodeInfoProto where
  getVal m' f' = f' m'
 
instance P'.GPB DatanodeInfoProto
 
instance P'.ReflectDescriptor DatanodeInfoProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10, 16, 24, 32, 40, 48, 56, 66, 80, 88, 96, 104])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeInfoProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"DatanodeInfoProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeInfoProto.id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeInfoProto\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeIDProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeIDProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeInfoProto.capacity\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeInfoProto\"], baseName' = FName \"capacity\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeInfoProto.dfsUsed\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeInfoProto\"], baseName' = FName \"dfsUsed\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeInfoProto.remaining\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeInfoProto\"], baseName' = FName \"remaining\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeInfoProto.blockPoolUsed\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeInfoProto\"], baseName' = FName \"blockPoolUsed\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeInfoProto.lastUpdate\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeInfoProto\"], baseName' = FName \"lastUpdate\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeInfoProto.xceiverCount\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeInfoProto\"], baseName' = FName \"xceiverCount\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeInfoProto.location\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeInfoProto\"], baseName' = FName \"location\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeInfoProto.adminState\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeInfoProto\"], baseName' = FName \"adminState\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 80}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeInfoProto.AdminState\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\",MName \"DatanodeInfoProto\"], baseName = MName \"AdminState\"}), hsRawDefault = Just \"NORMAL\", hsDefault = Just (HsDef'Enum \"NORMAL\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeInfoProto.cacheCapacity\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeInfoProto\"], baseName' = FName \"cacheCapacity\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeInfoProto.cacheUsed\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeInfoProto\"], baseName' = FName \"cacheUsed\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 96}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeInfoProto.lastUpdateMonotonic\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeInfoProto\"], baseName' = FName \"lastUpdateMonotonic\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 104}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType DatanodeInfoProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg DatanodeInfoProto where
  textPut msg
   = do
       P'.tellT "id" (id msg)
       P'.tellT "capacity" (capacity msg)
       P'.tellT "dfsUsed" (dfsUsed msg)
       P'.tellT "remaining" (remaining msg)
       P'.tellT "blockPoolUsed" (blockPoolUsed msg)
       P'.tellT "lastUpdate" (lastUpdate msg)
       P'.tellT "xceiverCount" (xceiverCount msg)
       P'.tellT "location" (location msg)
       P'.tellT "adminState" (adminState msg)
       P'.tellT "cacheCapacity" (cacheCapacity msg)
       P'.tellT "cacheUsed" (cacheUsed msg)
       P'.tellT "lastUpdateMonotonic" (lastUpdateMonotonic msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'id, parse'capacity, parse'dfsUsed, parse'remaining, parse'blockPoolUsed, parse'lastUpdate,
                   parse'xceiverCount, parse'location, parse'adminState, parse'cacheCapacity, parse'cacheUsed,
                   parse'lastUpdateMonotonic])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'id
         = P'.try
            (do
               v <- P'.getT "id"
               Prelude'.return (\ o -> o{id = v}))
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
        parse'lastUpdate
         = P'.try
            (do
               v <- P'.getT "lastUpdate"
               Prelude'.return (\ o -> o{lastUpdate = v}))
        parse'xceiverCount
         = P'.try
            (do
               v <- P'.getT "xceiverCount"
               Prelude'.return (\ o -> o{xceiverCount = v}))
        parse'location
         = P'.try
            (do
               v <- P'.getT "location"
               Prelude'.return (\ o -> o{location = v}))
        parse'adminState
         = P'.try
            (do
               v <- P'.getT "adminState"
               Prelude'.return (\ o -> o{adminState = v}))
        parse'cacheCapacity
         = P'.try
            (do
               v <- P'.getT "cacheCapacity"
               Prelude'.return (\ o -> o{cacheCapacity = v}))
        parse'cacheUsed
         = P'.try
            (do
               v <- P'.getT "cacheUsed"
               Prelude'.return (\ o -> o{cacheUsed = v}))
        parse'lastUpdateMonotonic
         = P'.try
            (do
               v <- P'.getT "lastUpdateMonotonic"
               Prelude'.return (\ o -> o{lastUpdateMonotonic = v}))