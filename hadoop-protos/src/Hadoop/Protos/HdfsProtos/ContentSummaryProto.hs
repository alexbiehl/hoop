{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.ContentSummaryProto (ContentSummaryProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.StorageTypeQuotaInfosProto as HdfsProtos (StorageTypeQuotaInfosProto)
 
data ContentSummaryProto = ContentSummaryProto{length :: !(P'.Word64), fileCount :: !(P'.Word64), directoryCount :: !(P'.Word64),
                                               quota :: !(P'.Word64), spaceConsumed :: !(P'.Word64), spaceQuota :: !(P'.Word64),
                                               typeQuotaInfos :: !(P'.Maybe HdfsProtos.StorageTypeQuotaInfosProto)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ContentSummaryProto where
  mergeAppend (ContentSummaryProto x'1 x'2 x'3 x'4 x'5 x'6 x'7) (ContentSummaryProto y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = ContentSummaryProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
 
instance P'.Default ContentSummaryProto where
  defaultValue
   = ContentSummaryProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
 
instance P'.Wire ContentSummaryProto where
  wireSize ft' self'@(ContentSummaryProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 4 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeReq 1 4 x'3 + P'.wireSizeReq 1 4 x'4 +
             P'.wireSizeReq 1 4 x'5
             + P'.wireSizeReq 1 4 x'6
             + P'.wireSizeOpt 1 11 x'7)
  wirePut ft' self'@(ContentSummaryProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
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
             P'.wirePutOpt 58 11 x'7
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{length = new'Field}) (P'.wireGet 4)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{fileCount = new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{directoryCount = new'Field}) (P'.wireGet 4)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{quota = new'Field}) (P'.wireGet 4)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{spaceConsumed = new'Field}) (P'.wireGet 4)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{spaceQuota = new'Field}) (P'.wireGet 4)
             58 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{typeQuotaInfos = P'.mergeAppend (typeQuotaInfos old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ContentSummaryProto) ContentSummaryProto where
  getVal m' f' = f' m'
 
instance P'.GPB ContentSummaryProto
 
instance P'.ReflectDescriptor ContentSummaryProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [8, 16, 24, 32, 40, 48]) (P'.fromDistinctAscList [8, 16, 24, 32, 40, 48, 58])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.ContentSummaryProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"ContentSummaryProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"ContentSummaryProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ContentSummaryProto.length\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ContentSummaryProto\"], baseName' = FName \"length\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ContentSummaryProto.fileCount\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ContentSummaryProto\"], baseName' = FName \"fileCount\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ContentSummaryProto.directoryCount\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ContentSummaryProto\"], baseName' = FName \"directoryCount\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ContentSummaryProto.quota\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ContentSummaryProto\"], baseName' = FName \"quota\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ContentSummaryProto.spaceConsumed\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ContentSummaryProto\"], baseName' = FName \"spaceConsumed\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ContentSummaryProto.spaceQuota\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ContentSummaryProto\"], baseName' = FName \"spaceQuota\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ContentSummaryProto.typeQuotaInfos\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ContentSummaryProto\"], baseName' = FName \"typeQuotaInfos\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageTypeQuotaInfosProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageTypeQuotaInfosProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ContentSummaryProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ContentSummaryProto where
  textPut msg
   = do
       P'.tellT "length" (length msg)
       P'.tellT "fileCount" (fileCount msg)
       P'.tellT "directoryCount" (directoryCount msg)
       P'.tellT "quota" (quota msg)
       P'.tellT "spaceConsumed" (spaceConsumed msg)
       P'.tellT "spaceQuota" (spaceQuota msg)
       P'.tellT "typeQuotaInfos" (typeQuotaInfos msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'length, parse'fileCount, parse'directoryCount, parse'quota, parse'spaceConsumed, parse'spaceQuota,
                   parse'typeQuotaInfos])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'length
         = P'.try
            (do
               v <- P'.getT "length"
               Prelude'.return (\ o -> o{length = v}))
        parse'fileCount
         = P'.try
            (do
               v <- P'.getT "fileCount"
               Prelude'.return (\ o -> o{fileCount = v}))
        parse'directoryCount
         = P'.try
            (do
               v <- P'.getT "directoryCount"
               Prelude'.return (\ o -> o{directoryCount = v}))
        parse'quota
         = P'.try
            (do
               v <- P'.getT "quota"
               Prelude'.return (\ o -> o{quota = v}))
        parse'spaceConsumed
         = P'.try
            (do
               v <- P'.getT "spaceConsumed"
               Prelude'.return (\ o -> o{spaceConsumed = v}))
        parse'spaceQuota
         = P'.try
            (do
               v <- P'.getT "spaceQuota"
               Prelude'.return (\ o -> o{spaceQuota = v}))
        parse'typeQuotaInfos
         = P'.try
            (do
               v <- P'.getT "typeQuotaInfos"
               Prelude'.return (\ o -> o{typeQuotaInfos = v}))