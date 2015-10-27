{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.StorageReceivedDeletedBlocksProto (StorageReceivedDeletedBlocksProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DatanodeProtocolProtos.ReceivedDeletedBlockInfoProto as DatanodeProtocolProtos
       (ReceivedDeletedBlockInfoProto)
import qualified Hadoop.Protos.HdfsProtos.DatanodeStorageProto as HdfsProtos (DatanodeStorageProto)
 
data StorageReceivedDeletedBlocksProto = StorageReceivedDeletedBlocksProto{storageUuid :: !(P'.Utf8),
                                                                           blocks ::
                                                                           !(P'.Seq
                                                                              DatanodeProtocolProtos.ReceivedDeletedBlockInfoProto),
                                                                           storage :: !(P'.Maybe HdfsProtos.DatanodeStorageProto)}
                                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable StorageReceivedDeletedBlocksProto where
  mergeAppend (StorageReceivedDeletedBlocksProto x'1 x'2 x'3) (StorageReceivedDeletedBlocksProto y'1 y'2 y'3)
   = StorageReceivedDeletedBlocksProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default StorageReceivedDeletedBlocksProto where
  defaultValue = StorageReceivedDeletedBlocksProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire StorageReceivedDeletedBlocksProto where
  wireSize ft' self'@(StorageReceivedDeletedBlocksProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeRep 1 11 x'2 + P'.wireSizeOpt 1 11 x'3)
  wirePut ft' self'@(StorageReceivedDeletedBlocksProto x'1 x'2 x'3)
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
             P'.wirePutRep 18 11 x'2
             P'.wirePutOpt 26 11 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{storageUuid = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{blocks = P'.append (blocks old'Self) new'Field}) (P'.wireGet 11)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{storage = P'.mergeAppend (storage old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> StorageReceivedDeletedBlocksProto) StorageReceivedDeletedBlocksProto where
  getVal m' f' = f' m'
 
instance P'.GPB StorageReceivedDeletedBlocksProto
 
instance P'.ReflectDescriptor StorageReceivedDeletedBlocksProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10, 18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.StorageReceivedDeletedBlocksProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"StorageReceivedDeletedBlocksProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DatanodeProtocolProtos\",\"StorageReceivedDeletedBlocksProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.StorageReceivedDeletedBlocksProto.storageUuid\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"StorageReceivedDeletedBlocksProto\"], baseName' = FName \"storageUuid\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.StorageReceivedDeletedBlocksProto.blocks\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"StorageReceivedDeletedBlocksProto\"], baseName' = FName \"blocks\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.ReceivedDeletedBlockInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"ReceivedDeletedBlockInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.StorageReceivedDeletedBlocksProto.storage\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"StorageReceivedDeletedBlocksProto\"], baseName' = FName \"storage\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeStorageProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeStorageProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType StorageReceivedDeletedBlocksProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg StorageReceivedDeletedBlocksProto where
  textPut msg
   = do
       P'.tellT "storageUuid" (storageUuid msg)
       P'.tellT "blocks" (blocks msg)
       P'.tellT "storage" (storage msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'storageUuid, parse'blocks, parse'storage]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'storageUuid
         = P'.try
            (do
               v <- P'.getT "storageUuid"
               Prelude'.return (\ o -> o{storageUuid = v}))
        parse'blocks
         = P'.try
            (do
               v <- P'.getT "blocks"
               Prelude'.return (\ o -> o{blocks = P'.append (blocks o) v}))
        parse'storage
         = P'.try
            (do
               v <- P'.getT "storage"
               Prelude'.return (\ o -> o{storage = v}))