{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.BlockCommandProto (BlockCommandProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DatanodeProtocolProtos.BlockCommandProto.Action as DatanodeProtocolProtos.BlockCommandProto (Action)
import qualified Hadoop.Protos.HdfsProtos.BlockProto as HdfsProtos (BlockProto)
import qualified Hadoop.Protos.HdfsProtos.DatanodeInfosProto as HdfsProtos (DatanodeInfosProto)
import qualified Hadoop.Protos.HdfsProtos.StorageTypesProto as HdfsProtos (StorageTypesProto)
import qualified Hadoop.Protos.HdfsProtos.StorageUuidsProto as HdfsProtos (StorageUuidsProto)
 
data BlockCommandProto = BlockCommandProto{action :: !(DatanodeProtocolProtos.BlockCommandProto.Action), blockPoolId :: !(P'.Utf8),
                                           blocks :: !(P'.Seq HdfsProtos.BlockProto),
                                           targets :: !(P'.Seq HdfsProtos.DatanodeInfosProto),
                                           targetStorageUuids :: !(P'.Seq HdfsProtos.StorageUuidsProto),
                                           targetStorageTypes :: !(P'.Seq HdfsProtos.StorageTypesProto)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable BlockCommandProto where
  mergeAppend (BlockCommandProto x'1 x'2 x'3 x'4 x'5 x'6) (BlockCommandProto y'1 y'2 y'3 y'4 y'5 y'6)
   = BlockCommandProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
 
instance P'.Default BlockCommandProto where
  defaultValue = BlockCommandProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire BlockCommandProto where
  wireSize ft' self'@(BlockCommandProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 14 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeRep 1 11 x'3 + P'.wireSizeRep 1 11 x'4 +
             P'.wireSizeRep 1 11 x'5
             + P'.wireSizeRep 1 11 x'6)
  wirePut ft' self'@(BlockCommandProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 14 x'1
             P'.wirePutReq 18 9 x'2
             P'.wirePutRep 26 11 x'3
             P'.wirePutRep 34 11 x'4
             P'.wirePutRep 42 11 x'5
             P'.wirePutRep 50 11 x'6
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{action = new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{blockPoolId = new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{blocks = P'.append (blocks old'Self) new'Field}) (P'.wireGet 11)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{targets = P'.append (targets old'Self) new'Field}) (P'.wireGet 11)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{targetStorageUuids = P'.append (targetStorageUuids old'Self) new'Field})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{targetStorageTypes = P'.append (targetStorageTypes old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> BlockCommandProto) BlockCommandProto where
  getVal m' f' = f' m'
 
instance P'.GPB BlockCommandProto
 
instance P'.ReflectDescriptor BlockCommandProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 18]) (P'.fromDistinctAscList [8, 18, 26, 34, 42, 50])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.BlockCommandProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"BlockCommandProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DatanodeProtocolProtos\",\"BlockCommandProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.BlockCommandProto.action\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"BlockCommandProto\"], baseName' = FName \"action\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.BlockCommandProto.Action\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\",MName \"BlockCommandProto\"], baseName = MName \"Action\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.BlockCommandProto.blockPoolId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"BlockCommandProto\"], baseName' = FName \"blockPoolId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.BlockCommandProto.blocks\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"BlockCommandProto\"], baseName' = FName \"blocks\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.BlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"BlockProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.BlockCommandProto.targets\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"BlockCommandProto\"], baseName' = FName \"targets\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeInfosProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeInfosProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.BlockCommandProto.targetStorageUuids\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"BlockCommandProto\"], baseName' = FName \"targetStorageUuids\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageUuidsProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageUuidsProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.BlockCommandProto.targetStorageTypes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"BlockCommandProto\"], baseName' = FName \"targetStorageTypes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageTypesProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageTypesProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType BlockCommandProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg BlockCommandProto where
  textPut msg
   = do
       P'.tellT "action" (action msg)
       P'.tellT "blockPoolId" (blockPoolId msg)
       P'.tellT "blocks" (blocks msg)
       P'.tellT "targets" (targets msg)
       P'.tellT "targetStorageUuids" (targetStorageUuids msg)
       P'.tellT "targetStorageTypes" (targetStorageTypes msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'action, parse'blockPoolId, parse'blocks, parse'targets, parse'targetStorageUuids,
                   parse'targetStorageTypes])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'action
         = P'.try
            (do
               v <- P'.getT "action"
               Prelude'.return (\ o -> o{action = v}))
        parse'blockPoolId
         = P'.try
            (do
               v <- P'.getT "blockPoolId"
               Prelude'.return (\ o -> o{blockPoolId = v}))
        parse'blocks
         = P'.try
            (do
               v <- P'.getT "blocks"
               Prelude'.return (\ o -> o{blocks = P'.append (blocks o) v}))
        parse'targets
         = P'.try
            (do
               v <- P'.getT "targets"
               Prelude'.return (\ o -> o{targets = P'.append (targets o) v}))
        parse'targetStorageUuids
         = P'.try
            (do
               v <- P'.getT "targetStorageUuids"
               Prelude'.return (\ o -> o{targetStorageUuids = P'.append (targetStorageUuids o) v}))
        parse'targetStorageTypes
         = P'.try
            (do
               v <- P'.getT "targetStorageTypes"
               Prelude'.return (\ o -> o{targetStorageTypes = P'.append (targetStorageTypes o) v}))