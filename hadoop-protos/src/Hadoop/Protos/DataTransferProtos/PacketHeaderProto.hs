{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.PacketHeaderProto (PacketHeaderProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data PacketHeaderProto = PacketHeaderProto{offsetInBlock :: !(P'.Int64), seqno :: !(P'.Int64), lastPacketInBlock :: !(P'.Bool),
                                           dataLen :: !(P'.Int32), syncBlock :: !(P'.Maybe P'.Bool)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable PacketHeaderProto where
  mergeAppend (PacketHeaderProto x'1 x'2 x'3 x'4 x'5) (PacketHeaderProto y'1 y'2 y'3 y'4 y'5)
   = PacketHeaderProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
 
instance P'.Default PacketHeaderProto where
  defaultValue = PacketHeaderProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue (Prelude'.Just Prelude'.False)
 
instance P'.Wire PacketHeaderProto where
  wireSize ft' self'@(PacketHeaderProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 16 x'1 + P'.wireSizeReq 1 16 x'2 + P'.wireSizeReq 1 8 x'3 + P'.wireSizeReq 1 15 x'4 +
             P'.wireSizeOpt 1 8 x'5)
  wirePut ft' self'@(PacketHeaderProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 9 16 x'1
             P'.wirePutReq 17 16 x'2
             P'.wirePutReq 24 8 x'3
             P'.wirePutReq 37 15 x'4
             P'.wirePutOpt 40 8 x'5
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             9 -> Prelude'.fmap (\ !new'Field -> old'Self{offsetInBlock = new'Field}) (P'.wireGet 16)
             17 -> Prelude'.fmap (\ !new'Field -> old'Self{seqno = new'Field}) (P'.wireGet 16)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{lastPacketInBlock = new'Field}) (P'.wireGet 8)
             37 -> Prelude'.fmap (\ !new'Field -> old'Self{dataLen = new'Field}) (P'.wireGet 15)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{syncBlock = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> PacketHeaderProto) PacketHeaderProto where
  getVal m' f' = f' m'
 
instance P'.GPB PacketHeaderProto
 
instance P'.ReflectDescriptor PacketHeaderProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [9, 17, 24, 37]) (P'.fromDistinctAscList [9, 17, 24, 37, 40])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.PacketHeaderProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"PacketHeaderProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DataTransferProtos\",\"PacketHeaderProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.PacketHeaderProto.offsetInBlock\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"PacketHeaderProto\"], baseName' = FName \"offsetInBlock\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 9}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 16}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.PacketHeaderProto.seqno\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"PacketHeaderProto\"], baseName' = FName \"seqno\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 17}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 16}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.PacketHeaderProto.lastPacketInBlock\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"PacketHeaderProto\"], baseName' = FName \"lastPacketInBlock\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.PacketHeaderProto.dataLen\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"PacketHeaderProto\"], baseName' = FName \"dataLen\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 37}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 15}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.PacketHeaderProto.syncBlock\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"PacketHeaderProto\"], baseName' = FName \"syncBlock\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType PacketHeaderProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg PacketHeaderProto where
  textPut msg
   = do
       P'.tellT "offsetInBlock" (offsetInBlock msg)
       P'.tellT "seqno" (seqno msg)
       P'.tellT "lastPacketInBlock" (lastPacketInBlock msg)
       P'.tellT "dataLen" (dataLen msg)
       P'.tellT "syncBlock" (syncBlock msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'offsetInBlock, parse'seqno, parse'lastPacketInBlock, parse'dataLen, parse'syncBlock])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'offsetInBlock
         = P'.try
            (do
               v <- P'.getT "offsetInBlock"
               Prelude'.return (\ o -> o{offsetInBlock = v}))
        parse'seqno
         = P'.try
            (do
               v <- P'.getT "seqno"
               Prelude'.return (\ o -> o{seqno = v}))
        parse'lastPacketInBlock
         = P'.try
            (do
               v <- P'.getT "lastPacketInBlock"
               Prelude'.return (\ o -> o{lastPacketInBlock = v}))
        parse'dataLen
         = P'.try
            (do
               v <- P'.getT "dataLen"
               Prelude'.return (\ o -> o{dataLen = v}))
        parse'syncBlock
         = P'.try
            (do
               v <- P'.getT "syncBlock"
               Prelude'.return (\ o -> o{syncBlock = v}))