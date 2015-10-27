{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.FsImageProto.NameSystemSection (NameSystemSection(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data NameSystemSection = NameSystemSection{namespaceId :: !(P'.Maybe P'.Word32), genstampV1 :: !(P'.Maybe P'.Word64),
                                           genstampV2 :: !(P'.Maybe P'.Word64), genstampV1Limit :: !(P'.Maybe P'.Word64),
                                           lastAllocatedBlockId :: !(P'.Maybe P'.Word64), transactionId :: !(P'.Maybe P'.Word64),
                                           rollingUpgradeStartTime :: !(P'.Maybe P'.Word64)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable NameSystemSection where
  mergeAppend (NameSystemSection x'1 x'2 x'3 x'4 x'5 x'6 x'7) (NameSystemSection y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = NameSystemSection (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
 
instance P'.Default NameSystemSection where
  defaultValue
   = NameSystemSection P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
 
instance P'.Wire NameSystemSection where
  wireSize ft' self'@(NameSystemSection x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 13 x'1 + P'.wireSizeOpt 1 4 x'2 + P'.wireSizeOpt 1 4 x'3 + P'.wireSizeOpt 1 4 x'4 +
             P'.wireSizeOpt 1 4 x'5
             + P'.wireSizeOpt 1 4 x'6
             + P'.wireSizeOpt 1 4 x'7)
  wirePut ft' self'@(NameSystemSection x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 13 x'1
             P'.wirePutOpt 16 4 x'2
             P'.wirePutOpt 24 4 x'3
             P'.wirePutOpt 32 4 x'4
             P'.wirePutOpt 40 4 x'5
             P'.wirePutOpt 48 4 x'6
             P'.wirePutOpt 56 4 x'7
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{namespaceId = Prelude'.Just new'Field}) (P'.wireGet 13)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{genstampV1 = Prelude'.Just new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{genstampV2 = Prelude'.Just new'Field}) (P'.wireGet 4)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{genstampV1Limit = Prelude'.Just new'Field}) (P'.wireGet 4)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{lastAllocatedBlockId = Prelude'.Just new'Field}) (P'.wireGet 4)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{transactionId = Prelude'.Just new'Field}) (P'.wireGet 4)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{rollingUpgradeStartTime = Prelude'.Just new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> NameSystemSection) NameSystemSection where
  getVal m' f' = f' m'
 
instance P'.GPB NameSystemSection
 
instance P'.ReflectDescriptor NameSystemSection where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 24, 32, 40, 48, 56])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.NameSystemSection\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\"], baseName = MName \"NameSystemSection\"}, descFilePath = [\"Hadoop\",\"Protos\",\"FsImageProto\",\"NameSystemSection.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.NameSystemSection.namespaceId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"NameSystemSection\"], baseName' = FName \"namespaceId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.NameSystemSection.genstampV1\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"NameSystemSection\"], baseName' = FName \"genstampV1\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.NameSystemSection.genstampV2\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"NameSystemSection\"], baseName' = FName \"genstampV2\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.NameSystemSection.genstampV1Limit\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"NameSystemSection\"], baseName' = FName \"genstampV1Limit\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.NameSystemSection.lastAllocatedBlockId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"NameSystemSection\"], baseName' = FName \"lastAllocatedBlockId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.NameSystemSection.transactionId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"NameSystemSection\"], baseName' = FName \"transactionId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.NameSystemSection.rollingUpgradeStartTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"NameSystemSection\"], baseName' = FName \"rollingUpgradeStartTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType NameSystemSection where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg NameSystemSection where
  textPut msg
   = do
       P'.tellT "namespaceId" (namespaceId msg)
       P'.tellT "genstampV1" (genstampV1 msg)
       P'.tellT "genstampV2" (genstampV2 msg)
       P'.tellT "genstampV1Limit" (genstampV1Limit msg)
       P'.tellT "lastAllocatedBlockId" (lastAllocatedBlockId msg)
       P'.tellT "transactionId" (transactionId msg)
       P'.tellT "rollingUpgradeStartTime" (rollingUpgradeStartTime msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'namespaceId, parse'genstampV1, parse'genstampV2, parse'genstampV1Limit, parse'lastAllocatedBlockId,
                   parse'transactionId, parse'rollingUpgradeStartTime])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'namespaceId
         = P'.try
            (do
               v <- P'.getT "namespaceId"
               Prelude'.return (\ o -> o{namespaceId = v}))
        parse'genstampV1
         = P'.try
            (do
               v <- P'.getT "genstampV1"
               Prelude'.return (\ o -> o{genstampV1 = v}))
        parse'genstampV2
         = P'.try
            (do
               v <- P'.getT "genstampV2"
               Prelude'.return (\ o -> o{genstampV2 = v}))
        parse'genstampV1Limit
         = P'.try
            (do
               v <- P'.getT "genstampV1Limit"
               Prelude'.return (\ o -> o{genstampV1Limit = v}))
        parse'lastAllocatedBlockId
         = P'.try
            (do
               v <- P'.getT "lastAllocatedBlockId"
               Prelude'.return (\ o -> o{lastAllocatedBlockId = v}))
        parse'transactionId
         = P'.try
            (do
               v <- P'.getT "transactionId"
               Prelude'.return (\ o -> o{transactionId = v}))
        parse'rollingUpgradeStartTime
         = P'.try
            (do
               v <- P'.getT "rollingUpgradeStartTime"
               Prelude'.return (\ o -> o{rollingUpgradeStartTime = v}))