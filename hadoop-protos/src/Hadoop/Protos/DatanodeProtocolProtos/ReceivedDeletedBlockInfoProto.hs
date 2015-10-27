{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.ReceivedDeletedBlockInfoProto (ReceivedDeletedBlockInfoProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DatanodeProtocolProtos.ReceivedDeletedBlockInfoProto.BlockStatus
       as DatanodeProtocolProtos.ReceivedDeletedBlockInfoProto (BlockStatus)
import qualified Hadoop.Protos.HdfsProtos.BlockProto as HdfsProtos (BlockProto)
 
data ReceivedDeletedBlockInfoProto = ReceivedDeletedBlockInfoProto{block :: !(HdfsProtos.BlockProto),
                                                                   status ::
                                                                   !(DatanodeProtocolProtos.ReceivedDeletedBlockInfoProto.BlockStatus),
                                                                   deleteHint :: !(P'.Maybe P'.Utf8)}
                                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ReceivedDeletedBlockInfoProto where
  mergeAppend (ReceivedDeletedBlockInfoProto x'1 x'2 x'3) (ReceivedDeletedBlockInfoProto y'1 y'2 y'3)
   = ReceivedDeletedBlockInfoProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default ReceivedDeletedBlockInfoProto where
  defaultValue = ReceivedDeletedBlockInfoProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire ReceivedDeletedBlockInfoProto where
  wireSize ft' self'@(ReceivedDeletedBlockInfoProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 14 x'2 + P'.wireSizeOpt 1 9 x'3)
  wirePut ft' self'@(ReceivedDeletedBlockInfoProto x'1 x'2 x'3)
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
             P'.wirePutOpt 18 9 x'3
             P'.wirePutReq 24 14 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{block = P'.mergeAppend (block old'Self) (new'Field)}) (P'.wireGet 11)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{status = new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{deleteHint = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ReceivedDeletedBlockInfoProto) ReceivedDeletedBlockInfoProto where
  getVal m' f' = f' m'
 
instance P'.GPB ReceivedDeletedBlockInfoProto
 
instance P'.ReflectDescriptor ReceivedDeletedBlockInfoProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 24]) (P'.fromDistinctAscList [10, 18, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.ReceivedDeletedBlockInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"ReceivedDeletedBlockInfoProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DatanodeProtocolProtos\",\"ReceivedDeletedBlockInfoProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.ReceivedDeletedBlockInfoProto.block\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"ReceivedDeletedBlockInfoProto\"], baseName' = FName \"block\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.BlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"BlockProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.ReceivedDeletedBlockInfoProto.status\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"ReceivedDeletedBlockInfoProto\"], baseName' = FName \"status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.ReceivedDeletedBlockInfoProto.BlockStatus\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\",MName \"ReceivedDeletedBlockInfoProto\"], baseName = MName \"BlockStatus\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.ReceivedDeletedBlockInfoProto.deleteHint\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"ReceivedDeletedBlockInfoProto\"], baseName' = FName \"deleteHint\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ReceivedDeletedBlockInfoProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ReceivedDeletedBlockInfoProto where
  textPut msg
   = do
       P'.tellT "block" (block msg)
       P'.tellT "status" (status msg)
       P'.tellT "deleteHint" (deleteHint msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'block, parse'status, parse'deleteHint]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'block
         = P'.try
            (do
               v <- P'.getT "block"
               Prelude'.return (\ o -> o{block = v}))
        parse'status
         = P'.try
            (do
               v <- P'.getT "status"
               Prelude'.return (\ o -> o{status = v}))
        parse'deleteHint
         = P'.try
            (do
               v <- P'.getT "deleteHint"
               Prelude'.return (\ o -> o{deleteHint = v}))