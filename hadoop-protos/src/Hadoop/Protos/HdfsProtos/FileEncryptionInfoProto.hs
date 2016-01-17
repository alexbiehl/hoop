{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.FileEncryptionInfoProto (FileEncryptionInfoProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.CipherSuiteProto as HdfsProtos (CipherSuiteProto)
import qualified Hadoop.Protos.HdfsProtos.CryptoProtocolVersionProto as HdfsProtos (CryptoProtocolVersionProto)
 
data FileEncryptionInfoProto = FileEncryptionInfoProto{suite :: !(HdfsProtos.CipherSuiteProto),
                                                       cryptoProtocolVersion :: !(HdfsProtos.CryptoProtocolVersionProto),
                                                       key :: !(P'.ByteString), iv :: !(P'.ByteString), keyName :: !(P'.Utf8),
                                                       ezKeyVersionName :: !(P'.Utf8)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable FileEncryptionInfoProto where
  mergeAppend (FileEncryptionInfoProto x'1 x'2 x'3 x'4 x'5 x'6) (FileEncryptionInfoProto y'1 y'2 y'3 y'4 y'5 y'6)
   = FileEncryptionInfoProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
 
instance P'.Default FileEncryptionInfoProto where
  defaultValue
   = FileEncryptionInfoProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire FileEncryptionInfoProto where
  wireSize ft' self'@(FileEncryptionInfoProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 14 x'1 + P'.wireSizeReq 1 14 x'2 + P'.wireSizeReq 1 12 x'3 + P'.wireSizeReq 1 12 x'4 +
             P'.wireSizeReq 1 9 x'5
             + P'.wireSizeReq 1 9 x'6)
  wirePut ft' self'@(FileEncryptionInfoProto x'1 x'2 x'3 x'4 x'5 x'6)
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
             P'.wirePutReq 16 14 x'2
             P'.wirePutReq 26 12 x'3
             P'.wirePutReq 34 12 x'4
             P'.wirePutReq 42 9 x'5
             P'.wirePutReq 50 9 x'6
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{suite = new'Field}) (P'.wireGet 14)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{cryptoProtocolVersion = new'Field}) (P'.wireGet 14)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{key = new'Field}) (P'.wireGet 12)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{iv = new'Field}) (P'.wireGet 12)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{keyName = new'Field}) (P'.wireGet 9)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{ezKeyVersionName = new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> FileEncryptionInfoProto) FileEncryptionInfoProto where
  getVal m' f' = f' m'
 
instance P'.GPB FileEncryptionInfoProto
 
instance P'.ReflectDescriptor FileEncryptionInfoProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [8, 16, 26, 34, 42, 50]) (P'.fromDistinctAscList [8, 16, 26, 34, 42, 50])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.FileEncryptionInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"FileEncryptionInfoProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"FileEncryptionInfoProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FileEncryptionInfoProto.suite\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"FileEncryptionInfoProto\"], baseName' = FName \"suite\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.CipherSuiteProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"CipherSuiteProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FileEncryptionInfoProto.cryptoProtocolVersion\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"FileEncryptionInfoProto\"], baseName' = FName \"cryptoProtocolVersion\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.CryptoProtocolVersionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"CryptoProtocolVersionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FileEncryptionInfoProto.key\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"FileEncryptionInfoProto\"], baseName' = FName \"key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FileEncryptionInfoProto.iv\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"FileEncryptionInfoProto\"], baseName' = FName \"iv\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FileEncryptionInfoProto.keyName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"FileEncryptionInfoProto\"], baseName' = FName \"keyName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FileEncryptionInfoProto.ezKeyVersionName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"FileEncryptionInfoProto\"], baseName' = FName \"ezKeyVersionName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType FileEncryptionInfoProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg FileEncryptionInfoProto where
  textPut msg
   = do
       P'.tellT "suite" (suite msg)
       P'.tellT "cryptoProtocolVersion" (cryptoProtocolVersion msg)
       P'.tellT "key" (key msg)
       P'.tellT "iv" (iv msg)
       P'.tellT "keyName" (keyName msg)
       P'.tellT "ezKeyVersionName" (ezKeyVersionName msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice [parse'suite, parse'cryptoProtocolVersion, parse'key, parse'iv, parse'keyName, parse'ezKeyVersionName])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'suite
         = P'.try
            (do
               v <- P'.getT "suite"
               Prelude'.return (\ o -> o{suite = v}))
        parse'cryptoProtocolVersion
         = P'.try
            (do
               v <- P'.getT "cryptoProtocolVersion"
               Prelude'.return (\ o -> o{cryptoProtocolVersion = v}))
        parse'key
         = P'.try
            (do
               v <- P'.getT "key"
               Prelude'.return (\ o -> o{key = v}))
        parse'iv
         = P'.try
            (do
               v <- P'.getT "iv"
               Prelude'.return (\ o -> o{iv = v}))
        parse'keyName
         = P'.try
            (do
               v <- P'.getT "keyName"
               Prelude'.return (\ o -> o{keyName = v}))
        parse'ezKeyVersionName
         = P'.try
            (do
               v <- P'.getT "ezKeyVersionName"
               Prelude'.return (\ o -> o{ezKeyVersionName = v}))