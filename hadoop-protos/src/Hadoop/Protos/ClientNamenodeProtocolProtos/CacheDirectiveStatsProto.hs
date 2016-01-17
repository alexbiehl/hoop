{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.CacheDirectiveStatsProto (CacheDirectiveStatsProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data CacheDirectiveStatsProto = CacheDirectiveStatsProto{bytesNeeded :: !(P'.Int64), bytesCached :: !(P'.Int64),
                                                         filesNeeded :: !(P'.Int64), filesCached :: !(P'.Int64),
                                                         hasExpired :: !(P'.Bool)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CacheDirectiveStatsProto where
  mergeAppend (CacheDirectiveStatsProto x'1 x'2 x'3 x'4 x'5) (CacheDirectiveStatsProto y'1 y'2 y'3 y'4 y'5)
   = CacheDirectiveStatsProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
 
instance P'.Default CacheDirectiveStatsProto where
  defaultValue = CacheDirectiveStatsProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire CacheDirectiveStatsProto where
  wireSize ft' self'@(CacheDirectiveStatsProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 3 x'1 + P'.wireSizeReq 1 3 x'2 + P'.wireSizeReq 1 3 x'3 + P'.wireSizeReq 1 3 x'4 +
             P'.wireSizeReq 1 8 x'5)
  wirePut ft' self'@(CacheDirectiveStatsProto x'1 x'2 x'3 x'4 x'5)
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
             P'.wirePutReq 40 8 x'5
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
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{filesNeeded = new'Field}) (P'.wireGet 3)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{filesCached = new'Field}) (P'.wireGet 3)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{hasExpired = new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> CacheDirectiveStatsProto) CacheDirectiveStatsProto where
  getVal m' f' = f' m'
 
instance P'.GPB CacheDirectiveStatsProto
 
instance P'.ReflectDescriptor CacheDirectiveStatsProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 16, 24, 32, 40]) (P'.fromDistinctAscList [8, 16, 24, 32, 40])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.CacheDirectiveStatsProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"CacheDirectiveStatsProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"CacheDirectiveStatsProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CacheDirectiveStatsProto.bytesNeeded\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CacheDirectiveStatsProto\"], baseName' = FName \"bytesNeeded\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CacheDirectiveStatsProto.bytesCached\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CacheDirectiveStatsProto\"], baseName' = FName \"bytesCached\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CacheDirectiveStatsProto.filesNeeded\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CacheDirectiveStatsProto\"], baseName' = FName \"filesNeeded\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CacheDirectiveStatsProto.filesCached\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CacheDirectiveStatsProto\"], baseName' = FName \"filesCached\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CacheDirectiveStatsProto.hasExpired\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CacheDirectiveStatsProto\"], baseName' = FName \"hasExpired\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType CacheDirectiveStatsProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg CacheDirectiveStatsProto where
  textPut msg
   = do
       P'.tellT "bytesNeeded" (bytesNeeded msg)
       P'.tellT "bytesCached" (bytesCached msg)
       P'.tellT "filesNeeded" (filesNeeded msg)
       P'.tellT "filesCached" (filesCached msg)
       P'.tellT "hasExpired" (hasExpired msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice [parse'bytesNeeded, parse'bytesCached, parse'filesNeeded, parse'filesCached, parse'hasExpired])
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
        parse'hasExpired
         = P'.try
            (do
               v <- P'.getT "hasExpired"
               Prelude'.return (\ o -> o{hasExpired = v}))