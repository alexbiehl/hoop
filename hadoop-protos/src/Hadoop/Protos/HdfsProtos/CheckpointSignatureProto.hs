{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.CheckpointSignatureProto (CheckpointSignatureProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.StorageInfoProto as HdfsProtos (StorageInfoProto)
 
data CheckpointSignatureProto = CheckpointSignatureProto{blockPoolId :: !(P'.Utf8), mostRecentCheckpointTxId :: !(P'.Word64),
                                                         curSegmentTxId :: !(P'.Word64),
                                                         storageInfo :: !(HdfsProtos.StorageInfoProto)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CheckpointSignatureProto where
  mergeAppend (CheckpointSignatureProto x'1 x'2 x'3 x'4) (CheckpointSignatureProto y'1 y'2 y'3 y'4)
   = CheckpointSignatureProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default CheckpointSignatureProto where
  defaultValue = CheckpointSignatureProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire CheckpointSignatureProto where
  wireSize ft' self'@(CheckpointSignatureProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeReq 1 4 x'3 + P'.wireSizeReq 1 11 x'4)
  wirePut ft' self'@(CheckpointSignatureProto x'1 x'2 x'3 x'4)
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
             P'.wirePutReq 16 4 x'2
             P'.wirePutReq 24 4 x'3
             P'.wirePutReq 34 11 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{blockPoolId = new'Field}) (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{mostRecentCheckpointTxId = new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{curSegmentTxId = new'Field}) (P'.wireGet 4)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{storageInfo = P'.mergeAppend (storageInfo old'Self) (new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> CheckpointSignatureProto) CheckpointSignatureProto where
  getVal m' f' = f' m'
 
instance P'.GPB CheckpointSignatureProto
 
instance P'.ReflectDescriptor CheckpointSignatureProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16, 24, 34]) (P'.fromDistinctAscList [10, 16, 24, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.CheckpointSignatureProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"CheckpointSignatureProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"CheckpointSignatureProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CheckpointSignatureProto.blockPoolId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"CheckpointSignatureProto\"], baseName' = FName \"blockPoolId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CheckpointSignatureProto.mostRecentCheckpointTxId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"CheckpointSignatureProto\"], baseName' = FName \"mostRecentCheckpointTxId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CheckpointSignatureProto.curSegmentTxId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"CheckpointSignatureProto\"], baseName' = FName \"curSegmentTxId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CheckpointSignatureProto.storageInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"CheckpointSignatureProto\"], baseName' = FName \"storageInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType CheckpointSignatureProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg CheckpointSignatureProto where
  textPut msg
   = do
       P'.tellT "blockPoolId" (blockPoolId msg)
       P'.tellT "mostRecentCheckpointTxId" (mostRecentCheckpointTxId msg)
       P'.tellT "curSegmentTxId" (curSegmentTxId msg)
       P'.tellT "storageInfo" (storageInfo msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'blockPoolId, parse'mostRecentCheckpointTxId, parse'curSegmentTxId, parse'storageInfo])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'blockPoolId
         = P'.try
            (do
               v <- P'.getT "blockPoolId"
               Prelude'.return (\ o -> o{blockPoolId = v}))
        parse'mostRecentCheckpointTxId
         = P'.try
            (do
               v <- P'.getT "mostRecentCheckpointTxId"
               Prelude'.return (\ o -> o{mostRecentCheckpointTxId = v}))
        parse'curSegmentTxId
         = P'.try
            (do
               v <- P'.getT "curSegmentTxId"
               Prelude'.return (\ o -> o{curSegmentTxId = v}))
        parse'storageInfo
         = P'.try
            (do
               v <- P'.getT "storageInfo"
               Prelude'.return (\ o -> o{storageInfo = v}))