{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.CachePoolStatsProto (CachePoolStatsProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data CachePoolStatsProto = CachePoolStatsProto{bytesNeeded :: !(P'.Int64), bytesCached :: !(P'.Int64),
                                               bytesOverlimit :: !(P'.Int64), filesNeeded :: !(P'.Int64),
                                               filesCached :: !(P'.Int64)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CachePoolStatsProto where
  mergeAppend (CachePoolStatsProto x'1 x'2 x'3 x'4 x'5) (CachePoolStatsProto y'1 y'2 y'3 y'4 y'5)
   = CachePoolStatsProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
 
instance P'.Default CachePoolStatsProto where
  defaultValue = CachePoolStatsProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire CachePoolStatsProto where
  wireSize ft' self'@(CachePoolStatsProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 3 x'1 + P'.wireSizeReq 1 3 x'2 + P'.wireSizeReq 1 3 x'3 + P'.wireSizeReq 1 3 x'4 +
             P'.wireSizeReq 1 3 x'5)
  wirePut ft' self'@(CachePoolStatsProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 3 x'1
             P'.wirePutReq 16 3 x'2
             P'.wirePutReq 24 3 x'3
             P'.wirePutReq 32 3 x'4
             P'.wirePutReq 40 3 x'5
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{bytesNeeded = new'Field}) (P'.wireGet 3)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{bytesCached = new'Field}) (P'.wireGet 3)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{bytesOverlimit = new'Field}) (P'.wireGet 3)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{filesNeeded = new'Field}) (P'.wireGet 3)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{filesCached = new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> CachePoolStatsProto) CachePoolStatsProto where
  getVal m' f' = f' m'
 
instance P'.GPB CachePoolStatsProto
 
instance P'.ReflectDescriptor CachePoolStatsProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 16, 24, 32, 40]) (P'.fromDistinctAscList [8, 16, 24, 32, 40])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.CachePoolStatsProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"CachePoolStatsProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"CachePoolStatsProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CachePoolStatsProto.bytesNeeded\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CachePoolStatsProto\"], baseName' = FName \"bytesNeeded\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CachePoolStatsProto.bytesCached\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CachePoolStatsProto\"], baseName' = FName \"bytesCached\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CachePoolStatsProto.bytesOverlimit\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CachePoolStatsProto\"], baseName' = FName \"bytesOverlimit\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CachePoolStatsProto.filesNeeded\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CachePoolStatsProto\"], baseName' = FName \"filesNeeded\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CachePoolStatsProto.filesCached\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CachePoolStatsProto\"], baseName' = FName \"filesCached\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType CachePoolStatsProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg CachePoolStatsProto where
  textPut msg
   = do
       P'.tellT "bytesNeeded" (bytesNeeded msg)
       P'.tellT "bytesCached" (bytesCached msg)
       P'.tellT "bytesOverlimit" (bytesOverlimit msg)
       P'.tellT "filesNeeded" (filesNeeded msg)
       P'.tellT "filesCached" (filesCached msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice [parse'bytesNeeded, parse'bytesCached, parse'bytesOverlimit, parse'filesNeeded, parse'filesCached])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'bytesNeeded
         = P'.try
            (do
               v <- P'.getT "bytesNeeded"
               Prelude'.return (\ o -> o{bytesNeeded = v}))
        parse'bytesCached
         = P'.try
            (do
               v <- P'.getT "bytesCached"
               Prelude'.return (\ o -> o{bytesCached = v}))
        parse'bytesOverlimit
         = P'.try
            (do
               v <- P'.getT "bytesOverlimit"
               Prelude'.return (\ o -> o{bytesOverlimit = v}))
        parse'filesNeeded
         = P'.try
            (do
               v <- P'.getT "filesNeeded"
               Prelude'.return (\ o -> o{filesNeeded = v}))
        parse'filesCached
         = P'.try
            (do
               v <- P'.getT "filesCached"
               Prelude'.return (\ o -> o{filesCached = v}))