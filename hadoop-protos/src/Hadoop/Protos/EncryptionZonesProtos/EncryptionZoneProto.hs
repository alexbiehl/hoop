{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.EncryptionZonesProtos.EncryptionZoneProto (EncryptionZoneProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.CipherSuiteProto as HdfsProtos (CipherSuiteProto)
import qualified Hadoop.Protos.HdfsProtos.CryptoProtocolVersionProto as HdfsProtos (CryptoProtocolVersionProto)
 
data EncryptionZoneProto = EncryptionZoneProto{id :: !(P'.Int64), path :: !(P'.Utf8), suite :: !(HdfsProtos.CipherSuiteProto),
                                               cryptoProtocolVersion :: !(HdfsProtos.CryptoProtocolVersionProto),
                                               keyName :: !(P'.Utf8)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable EncryptionZoneProto where
  mergeAppend (EncryptionZoneProto x'1 x'2 x'3 x'4 x'5) (EncryptionZoneProto y'1 y'2 y'3 y'4 y'5)
   = EncryptionZoneProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
 
instance P'.Default EncryptionZoneProto where
  defaultValue = EncryptionZoneProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire EncryptionZoneProto where
  wireSize ft' self'@(EncryptionZoneProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 3 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeReq 1 14 x'3 + P'.wireSizeReq 1 14 x'4 +
             P'.wireSizeReq 1 9 x'5)
  wirePut ft' self'@(EncryptionZoneProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 3 x'1
             P'.wirePutReq 18 9 x'2
             P'.wirePutReq 24 14 x'3
             P'.wirePutReq 32 14 x'4
             P'.wirePutReq 42 9 x'5
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{id = new'Field}) (P'.wireGet 3)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{path = new'Field}) (P'.wireGet 9)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{suite = new'Field}) (P'.wireGet 14)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{cryptoProtocolVersion = new'Field}) (P'.wireGet 14)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{keyName = new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> EncryptionZoneProto) EncryptionZoneProto where
  getVal m' f' = f' m'
 
instance P'.GPB EncryptionZoneProto
 
instance P'.ReflectDescriptor EncryptionZoneProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 18, 24, 32, 42]) (P'.fromDistinctAscList [8, 18, 24, 32, 42])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.EncryptionZoneProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"EncryptionZonesProtos\"], baseName = MName \"EncryptionZoneProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"EncryptionZonesProtos\",\"EncryptionZoneProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.EncryptionZoneProto.id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"EncryptionZonesProtos\",MName \"EncryptionZoneProto\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.EncryptionZoneProto.path\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"EncryptionZonesProtos\",MName \"EncryptionZoneProto\"], baseName' = FName \"path\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.EncryptionZoneProto.suite\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"EncryptionZonesProtos\",MName \"EncryptionZoneProto\"], baseName' = FName \"suite\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.CipherSuiteProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"CipherSuiteProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.EncryptionZoneProto.cryptoProtocolVersion\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"EncryptionZonesProtos\",MName \"EncryptionZoneProto\"], baseName' = FName \"cryptoProtocolVersion\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.CryptoProtocolVersionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"CryptoProtocolVersionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.EncryptionZoneProto.keyName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"EncryptionZonesProtos\",MName \"EncryptionZoneProto\"], baseName' = FName \"keyName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType EncryptionZoneProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg EncryptionZoneProto where
  textPut msg
   = do
       P'.tellT "id" (id msg)
       P'.tellT "path" (path msg)
       P'.tellT "suite" (suite msg)
       P'.tellT "cryptoProtocolVersion" (cryptoProtocolVersion msg)
       P'.tellT "keyName" (keyName msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'id, parse'path, parse'suite, parse'cryptoProtocolVersion, parse'keyName]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'id
         = P'.try
            (do
               v <- P'.getT "id"
               Prelude'.return (\ o -> o{id = v}))
        parse'path
         = P'.try
            (do
               v <- P'.getT "path"
               Prelude'.return (\ o -> o{path = v}))
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
        parse'keyName
         = P'.try
            (do
               v <- P'.getT "keyName"
               Prelude'.return (\ o -> o{keyName = v}))