{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.GetFsStatsResponseProto (GetFsStatsResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data GetFsStatsResponseProto = GetFsStatsResponseProto{capacity :: !(P'.Word64), used :: !(P'.Word64), remaining :: !(P'.Word64),
                                                       under_replicated :: !(P'.Word64), corrupt_blocks :: !(P'.Word64),
                                                       missing_blocks :: !(P'.Word64),
                                                       missing_repl_one_blocks :: !(P'.Maybe P'.Word64)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetFsStatsResponseProto where
  mergeAppend (GetFsStatsResponseProto x'1 x'2 x'3 x'4 x'5 x'6 x'7) (GetFsStatsResponseProto y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = GetFsStatsResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
 
instance P'.Default GetFsStatsResponseProto where
  defaultValue
   = GetFsStatsResponseProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
 
instance P'.Wire GetFsStatsResponseProto where
  wireSize ft' self'@(GetFsStatsResponseProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 4 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeReq 1 4 x'3 + P'.wireSizeReq 1 4 x'4 +
             P'.wireSizeReq 1 4 x'5
             + P'.wireSizeReq 1 4 x'6
             + P'.wireSizeOpt 1 4 x'7)
  wirePut ft' self'@(GetFsStatsResponseProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 4 x'1
             P'.wirePutReq 16 4 x'2
             P'.wirePutReq 24 4 x'3
             P'.wirePutReq 32 4 x'4
             P'.wirePutReq 40 4 x'5
             P'.wirePutReq 48 4 x'6
             P'.wirePutOpt 56 4 x'7
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{capacity = new'Field}) (P'.wireGet 4)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{used = new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{remaining = new'Field}) (P'.wireGet 4)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{under_replicated = new'Field}) (P'.wireGet 4)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{corrupt_blocks = new'Field}) (P'.wireGet 4)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{missing_blocks = new'Field}) (P'.wireGet 4)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{missing_repl_one_blocks = Prelude'.Just new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetFsStatsResponseProto) GetFsStatsResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetFsStatsResponseProto
 
instance P'.ReflectDescriptor GetFsStatsResponseProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [8, 16, 24, 32, 40, 48]) (P'.fromDistinctAscList [8, 16, 24, 32, 40, 48, 56])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.GetFsStatsResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"GetFsStatsResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"GetFsStatsResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetFsStatsResponseProto.capacity\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetFsStatsResponseProto\"], baseName' = FName \"capacity\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetFsStatsResponseProto.used\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetFsStatsResponseProto\"], baseName' = FName \"used\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetFsStatsResponseProto.remaining\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetFsStatsResponseProto\"], baseName' = FName \"remaining\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetFsStatsResponseProto.under_replicated\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetFsStatsResponseProto\"], baseName' = FName \"under_replicated\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetFsStatsResponseProto.corrupt_blocks\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetFsStatsResponseProto\"], baseName' = FName \"corrupt_blocks\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetFsStatsResponseProto.missing_blocks\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetFsStatsResponseProto\"], baseName' = FName \"missing_blocks\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetFsStatsResponseProto.missing_repl_one_blocks\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetFsStatsResponseProto\"], baseName' = FName \"missing_repl_one_blocks\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetFsStatsResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetFsStatsResponseProto where
  textPut msg
   = do
       P'.tellT "capacity" (capacity msg)
       P'.tellT "used" (used msg)
       P'.tellT "remaining" (remaining msg)
       P'.tellT "under_replicated" (under_replicated msg)
       P'.tellT "corrupt_blocks" (corrupt_blocks msg)
       P'.tellT "missing_blocks" (missing_blocks msg)
       P'.tellT "missing_repl_one_blocks" (missing_repl_one_blocks msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'capacity, parse'used, parse'remaining, parse'under_replicated, parse'corrupt_blocks, parse'missing_blocks,
                   parse'missing_repl_one_blocks])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'capacity
         = P'.try
            (do
               v <- P'.getT "capacity"
               Prelude'.return (\ o -> o{capacity = v}))
        parse'used
         = P'.try
            (do
               v <- P'.getT "used"
               Prelude'.return (\ o -> o{used = v}))
        parse'remaining
         = P'.try
            (do
               v <- P'.getT "remaining"
               Prelude'.return (\ o -> o{remaining = v}))
        parse'under_replicated
         = P'.try
            (do
               v <- P'.getT "under_replicated"
               Prelude'.return (\ o -> o{under_replicated = v}))
        parse'corrupt_blocks
         = P'.try
            (do
               v <- P'.getT "corrupt_blocks"
               Prelude'.return (\ o -> o{corrupt_blocks = v}))
        parse'missing_blocks
         = P'.try
            (do
               v <- P'.getT "missing_blocks"
               Prelude'.return (\ o -> o{missing_blocks = v}))
        parse'missing_repl_one_blocks
         = P'.try
            (do
               v <- P'.getT "missing_repl_one_blocks"
               Prelude'.return (\ o -> o{missing_repl_one_blocks = v}))