{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.StorageBlockReportProto (StorageBlockReportProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.DatanodeStorageProto as HdfsProtos (DatanodeStorageProto)
 
data StorageBlockReportProto = StorageBlockReportProto{storage :: !(HdfsProtos.DatanodeStorageProto), blocks :: !(P'.Seq P'.Word64),
                                                       numberOfBlocks :: !(P'.Maybe P'.Word64),
                                                       blocksBuffers :: !(P'.Seq P'.ByteString)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable StorageBlockReportProto where
  mergeAppend (StorageBlockReportProto x'1 x'2 x'3 x'4) (StorageBlockReportProto y'1 y'2 y'3 y'4)
   = StorageBlockReportProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default StorageBlockReportProto where
  defaultValue = StorageBlockReportProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire StorageBlockReportProto where
  wireSize ft' self'@(StorageBlockReportProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizePacked 1 4 x'2 + P'.wireSizeOpt 1 4 x'3 + P'.wireSizeRep 1 12 x'4)
  wirePut ft' self'@(StorageBlockReportProto x'1 x'2 x'3 x'4)
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
             P'.wirePutPacked 18 4 x'2
             P'.wirePutOpt 24 4 x'3
             P'.wirePutRep 34 12 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{storage = P'.mergeAppend (storage old'Self) (new'Field)}) (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{blocks = P'.append (blocks old'Self) new'Field}) (P'.wireGet 4)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{blocks = P'.mergeAppend (blocks old'Self) new'Field})
                    (P'.wireGetPacked 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{numberOfBlocks = Prelude'.Just new'Field}) (P'.wireGet 4)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{blocksBuffers = P'.append (blocksBuffers old'Self) new'Field})
                    (P'.wireGet 12)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> StorageBlockReportProto) StorageBlockReportProto where
  getVal m' f' = f' m'
 
instance P'.GPB StorageBlockReportProto
 
instance P'.ReflectDescriptor StorageBlockReportProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10, 16, 18, 24, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.StorageBlockReportProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"StorageBlockReportProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DatanodeProtocolProtos\",\"StorageBlockReportProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.StorageBlockReportProto.storage\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"StorageBlockReportProto\"], baseName' = FName \"storage\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeStorageProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeStorageProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.StorageBlockReportProto.blocks\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"StorageBlockReportProto\"], baseName' = FName \"blocks\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Just (WireTag {getWireTag = 16},WireTag {getWireTag = 18}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.StorageBlockReportProto.numberOfBlocks\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"StorageBlockReportProto\"], baseName' = FName \"numberOfBlocks\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.StorageBlockReportProto.blocksBuffers\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"StorageBlockReportProto\"], baseName' = FName \"blocksBuffers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType StorageBlockReportProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg StorageBlockReportProto where
  textPut msg
   = do
       P'.tellT "storage" (storage msg)
       P'.tellT "blocks" (blocks msg)
       P'.tellT "numberOfBlocks" (numberOfBlocks msg)
       P'.tellT "blocksBuffers" (blocksBuffers msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'storage, parse'blocks, parse'numberOfBlocks, parse'blocksBuffers]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'storage
         = P'.try
            (do
               v <- P'.getT "storage"
               Prelude'.return (\ o -> o{storage = v}))
        parse'blocks
         = P'.try
            (do
               v <- P'.getT "blocks"
               Prelude'.return (\ o -> o{blocks = P'.append (blocks o) v}))
        parse'numberOfBlocks
         = P'.try
            (do
               v <- P'.getT "numberOfBlocks"
               Prelude'.return (\ o -> o{numberOfBlocks = v}))
        parse'blocksBuffers
         = P'.try
            (do
               v <- P'.getT "blocksBuffers"
               Prelude'.return (\ o -> o{blocksBuffers = P'.append (blocksBuffers o) v}))