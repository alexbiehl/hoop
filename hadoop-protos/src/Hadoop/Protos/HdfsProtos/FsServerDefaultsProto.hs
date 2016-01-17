{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.FsServerDefaultsProto (FsServerDefaultsProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.ChecksumTypeProto as HdfsProtos (ChecksumTypeProto)
 
data FsServerDefaultsProto = FsServerDefaultsProto{blockSize :: !(P'.Word64), bytesPerChecksum :: !(P'.Word32),
                                                   writePacketSize :: !(P'.Word32), replication :: !(P'.Word32),
                                                   fileBufferSize :: !(P'.Word32), encryptDataTransfer :: !(P'.Maybe P'.Bool),
                                                   trashInterval :: !(P'.Maybe P'.Word64),
                                                   checksumType :: !(P'.Maybe HdfsProtos.ChecksumTypeProto)}
                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable FsServerDefaultsProto where
  mergeAppend (FsServerDefaultsProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8) (FsServerDefaultsProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8)
   = FsServerDefaultsProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
 
instance P'.Default FsServerDefaultsProto where
  defaultValue
   = FsServerDefaultsProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      (Prelude'.Just Prelude'.False)
      (Prelude'.Just 0)
      (Prelude'.Just (Prelude'.read "CHECKSUM_CRC32"))
 
instance P'.Wire FsServerDefaultsProto where
  wireSize ft' self'@(FsServerDefaultsProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 4 x'1 + P'.wireSizeReq 1 13 x'2 + P'.wireSizeReq 1 13 x'3 + P'.wireSizeReq 1 13 x'4 +
             P'.wireSizeReq 1 13 x'5
             + P'.wireSizeOpt 1 8 x'6
             + P'.wireSizeOpt 1 4 x'7
             + P'.wireSizeOpt 1 14 x'8)
  wirePut ft' self'@(FsServerDefaultsProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
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
             P'.wirePutReq 16 13 x'2
             P'.wirePutReq 24 13 x'3
             P'.wirePutReq 32 13 x'4
             P'.wirePutReq 40 13 x'5
             P'.wirePutOpt 48 8 x'6
             P'.wirePutOpt 56 4 x'7
             P'.wirePutOpt 64 14 x'8
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{blockSize = new'Field}) (P'.wireGet 4)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{bytesPerChecksum = new'Field}) (P'.wireGet 13)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{writePacketSize = new'Field}) (P'.wireGet 13)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{replication = new'Field}) (P'.wireGet 13)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{fileBufferSize = new'Field}) (P'.wireGet 13)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{encryptDataTransfer = Prelude'.Just new'Field}) (P'.wireGet 8)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{trashInterval = Prelude'.Just new'Field}) (P'.wireGet 4)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{checksumType = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> FsServerDefaultsProto) FsServerDefaultsProto where
  getVal m' f' = f' m'
 
instance P'.GPB FsServerDefaultsProto
 
instance P'.ReflectDescriptor FsServerDefaultsProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [8, 16, 24, 32, 40]) (P'.fromDistinctAscList [8, 16, 24, 32, 40, 48, 56, 64])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.FsServerDefaultsProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"FsServerDefaultsProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"FsServerDefaultsProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FsServerDefaultsProto.blockSize\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"FsServerDefaultsProto\"], baseName' = FName \"blockSize\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FsServerDefaultsProto.bytesPerChecksum\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"FsServerDefaultsProto\"], baseName' = FName \"bytesPerChecksum\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FsServerDefaultsProto.writePacketSize\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"FsServerDefaultsProto\"], baseName' = FName \"writePacketSize\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FsServerDefaultsProto.replication\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"FsServerDefaultsProto\"], baseName' = FName \"replication\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FsServerDefaultsProto.fileBufferSize\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"FsServerDefaultsProto\"], baseName' = FName \"fileBufferSize\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FsServerDefaultsProto.encryptDataTransfer\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"FsServerDefaultsProto\"], baseName' = FName \"encryptDataTransfer\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FsServerDefaultsProto.trashInterval\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"FsServerDefaultsProto\"], baseName' = FName \"trashInterval\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FsServerDefaultsProto.checksumType\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"FsServerDefaultsProto\"], baseName' = FName \"checksumType\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ChecksumTypeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"ChecksumTypeProto\"}), hsRawDefault = Just \"CHECKSUM_CRC32\", hsDefault = Just (HsDef'Enum \"CHECKSUM_CRC32\")}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType FsServerDefaultsProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg FsServerDefaultsProto where
  textPut msg
   = do
       P'.tellT "blockSize" (blockSize msg)
       P'.tellT "bytesPerChecksum" (bytesPerChecksum msg)
       P'.tellT "writePacketSize" (writePacketSize msg)
       P'.tellT "replication" (replication msg)
       P'.tellT "fileBufferSize" (fileBufferSize msg)
       P'.tellT "encryptDataTransfer" (encryptDataTransfer msg)
       P'.tellT "trashInterval" (trashInterval msg)
       P'.tellT "checksumType" (checksumType msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'blockSize, parse'bytesPerChecksum, parse'writePacketSize, parse'replication, parse'fileBufferSize,
                   parse'encryptDataTransfer, parse'trashInterval, parse'checksumType])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'blockSize
         = P'.try
            (do
               v <- P'.getT "blockSize"
               Prelude'.return (\ o -> o{blockSize = v}))
        parse'bytesPerChecksum
         = P'.try
            (do
               v <- P'.getT "bytesPerChecksum"
               Prelude'.return (\ o -> o{bytesPerChecksum = v}))
        parse'writePacketSize
         = P'.try
            (do
               v <- P'.getT "writePacketSize"
               Prelude'.return (\ o -> o{writePacketSize = v}))
        parse'replication
         = P'.try
            (do
               v <- P'.getT "replication"
               Prelude'.return (\ o -> o{replication = v}))
        parse'fileBufferSize
         = P'.try
            (do
               v <- P'.getT "fileBufferSize"
               Prelude'.return (\ o -> o{fileBufferSize = v}))
        parse'encryptDataTransfer
         = P'.try
            (do
               v <- P'.getT "encryptDataTransfer"
               Prelude'.return (\ o -> o{encryptDataTransfer = v}))
        parse'trashInterval
         = P'.try
            (do
               v <- P'.getT "trashInterval"
               Prelude'.return (\ o -> o{trashInterval = v}))
        parse'checksumType
         = P'.try
            (do
               v <- P'.getT "checksumType"
               Prelude'.return (\ o -> o{checksumType = v}))