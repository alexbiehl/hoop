{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.ZoneEncryptionInfoProto (ZoneEncryptionInfoProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.CipherSuiteProto as HdfsProtos (CipherSuiteProto)
import qualified Hadoop.Protos.HdfsProtos.CryptoProtocolVersionProto as HdfsProtos (CryptoProtocolVersionProto)
 
data ZoneEncryptionInfoProto = ZoneEncryptionInfoProto{suite :: !(HdfsProtos.CipherSuiteProto),
                                                       cryptoProtocolVersion :: !(HdfsProtos.CryptoProtocolVersionProto),
                                                       keyName :: !(P'.Utf8)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ZoneEncryptionInfoProto where
  mergeAppend (ZoneEncryptionInfoProto x'1 x'2 x'3) (ZoneEncryptionInfoProto y'1 y'2 y'3)
   = ZoneEncryptionInfoProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default ZoneEncryptionInfoProto where
  defaultValue = ZoneEncryptionInfoProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire ZoneEncryptionInfoProto where
  wireSize ft' self'@(ZoneEncryptionInfoProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 14 x'1 + P'.wireSizeReq 1 14 x'2 + P'.wireSizeReq 1 9 x'3)
  wirePut ft' self'@(ZoneEncryptionInfoProto x'1 x'2 x'3)
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
             P'.wirePutReq 26 9 x'3
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
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{keyName = new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ZoneEncryptionInfoProto) ZoneEncryptionInfoProto where
  getVal m' f' = f' m'
 
instance P'.GPB ZoneEncryptionInfoProto
 
instance P'.ReflectDescriptor ZoneEncryptionInfoProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 16, 26]) (P'.fromDistinctAscList [8, 16, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.ZoneEncryptionInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"ZoneEncryptionInfoProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"ZoneEncryptionInfoProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ZoneEncryptionInfoProto.suite\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ZoneEncryptionInfoProto\"], baseName' = FName \"suite\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.CipherSuiteProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"CipherSuiteProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ZoneEncryptionInfoProto.cryptoProtocolVersion\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ZoneEncryptionInfoProto\"], baseName' = FName \"cryptoProtocolVersion\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.CryptoProtocolVersionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"CryptoProtocolVersionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ZoneEncryptionInfoProto.keyName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ZoneEncryptionInfoProto\"], baseName' = FName \"keyName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ZoneEncryptionInfoProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ZoneEncryptionInfoProto where
  textPut msg
   = do
       P'.tellT "suite" (suite msg)
       P'.tellT "cryptoProtocolVersion" (cryptoProtocolVersion msg)
       P'.tellT "keyName" (keyName msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'suite, parse'cryptoProtocolVersion, parse'keyName]) P'.spaces
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
        parse'keyName
         = P'.try
            (do
               v <- P'.getT "keyName"
               Prelude'.return (\ o -> o{keyName = v}))