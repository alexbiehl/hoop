{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.OpBlockChecksumResponseProto (OpBlockChecksumResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.ChecksumTypeProto as HdfsProtos (ChecksumTypeProto)
 
data OpBlockChecksumResponseProto = OpBlockChecksumResponseProto{bytesPerCrc :: !(P'.Word32), crcPerBlock :: !(P'.Word64),
                                                                 md5 :: !(P'.ByteString),
                                                                 crcType :: !(P'.Maybe HdfsProtos.ChecksumTypeProto)}
                                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable OpBlockChecksumResponseProto where
  mergeAppend (OpBlockChecksumResponseProto x'1 x'2 x'3 x'4) (OpBlockChecksumResponseProto y'1 y'2 y'3 y'4)
   = OpBlockChecksumResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
 
instance P'.Default OpBlockChecksumResponseProto where
  defaultValue = OpBlockChecksumResponseProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire OpBlockChecksumResponseProto where
  wireSize ft' self'@(OpBlockChecksumResponseProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 13 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeReq 1 12 x'3 + P'.wireSizeOpt 1 14 x'4)
  wirePut ft' self'@(OpBlockChecksumResponseProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 13 x'1
             P'.wirePutReq 16 4 x'2
             P'.wirePutReq 26 12 x'3
             P'.wirePutOpt 32 14 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{bytesPerCrc = new'Field}) (P'.wireGet 13)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{crcPerBlock = new'Field}) (P'.wireGet 4)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{md5 = new'Field}) (P'.wireGet 12)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{crcType = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> OpBlockChecksumResponseProto) OpBlockChecksumResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB OpBlockChecksumResponseProto
 
instance P'.ReflectDescriptor OpBlockChecksumResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 16, 26]) (P'.fromDistinctAscList [8, 16, 26, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.OpBlockChecksumResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"OpBlockChecksumResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DataTransferProtos\",\"OpBlockChecksumResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpBlockChecksumResponseProto.bytesPerCrc\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpBlockChecksumResponseProto\"], baseName' = FName \"bytesPerCrc\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpBlockChecksumResponseProto.crcPerBlock\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpBlockChecksumResponseProto\"], baseName' = FName \"crcPerBlock\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpBlockChecksumResponseProto.md5\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpBlockChecksumResponseProto\"], baseName' = FName \"md5\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpBlockChecksumResponseProto.crcType\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpBlockChecksumResponseProto\"], baseName' = FName \"crcType\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ChecksumTypeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"ChecksumTypeProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType OpBlockChecksumResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg OpBlockChecksumResponseProto where
  textPut msg
   = do
       P'.tellT "bytesPerCrc" (bytesPerCrc msg)
       P'.tellT "crcPerBlock" (crcPerBlock msg)
       P'.tellT "md5" (md5 msg)
       P'.tellT "crcType" (crcType msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'bytesPerCrc, parse'crcPerBlock, parse'md5, parse'crcType]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'bytesPerCrc
         = P'.try
            (do
               v <- P'.getT "bytesPerCrc"
               Prelude'.return (\ o -> o{bytesPerCrc = v}))
        parse'crcPerBlock
         = P'.try
            (do
               v <- P'.getT "crcPerBlock"
               Prelude'.return (\ o -> o{crcPerBlock = v}))
        parse'md5
         = P'.try
            (do
               v <- P'.getT "md5"
               Prelude'.return (\ o -> o{md5 = v}))
        parse'crcType
         = P'.try
            (do
               v <- P'.getT "crcType"
               Prelude'.return (\ o -> o{crcType = v}))