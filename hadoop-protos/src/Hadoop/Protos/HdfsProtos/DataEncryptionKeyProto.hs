{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.DataEncryptionKeyProto (DataEncryptionKeyProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data DataEncryptionKeyProto = DataEncryptionKeyProto{keyId :: !(P'.Word32), blockPoolId :: !(P'.Utf8), nonce :: !(P'.ByteString),
                                                     encryptionKey :: !(P'.ByteString), expiryDate :: !(P'.Word64),
                                                     encryptionAlgorithm :: !(P'.Maybe P'.Utf8)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable DataEncryptionKeyProto where
  mergeAppend (DataEncryptionKeyProto x'1 x'2 x'3 x'4 x'5 x'6) (DataEncryptionKeyProto y'1 y'2 y'3 y'4 y'5 y'6)
   = DataEncryptionKeyProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
 
instance P'.Default DataEncryptionKeyProto where
  defaultValue
   = DataEncryptionKeyProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire DataEncryptionKeyProto where
  wireSize ft' self'@(DataEncryptionKeyProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 13 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeReq 1 12 x'3 + P'.wireSizeReq 1 12 x'4 +
             P'.wireSizeReq 1 4 x'5
             + P'.wireSizeOpt 1 9 x'6)
  wirePut ft' self'@(DataEncryptionKeyProto x'1 x'2 x'3 x'4 x'5 x'6)
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
             P'.wirePutReq 18 9 x'2
             P'.wirePutReq 26 12 x'3
             P'.wirePutReq 34 12 x'4
             P'.wirePutReq 40 4 x'5
             P'.wirePutOpt 50 9 x'6
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{keyId = new'Field}) (P'.wireGet 13)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{blockPoolId = new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{nonce = new'Field}) (P'.wireGet 12)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{encryptionKey = new'Field}) (P'.wireGet 12)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{expiryDate = new'Field}) (P'.wireGet 4)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{encryptionAlgorithm = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> DataEncryptionKeyProto) DataEncryptionKeyProto where
  getVal m' f' = f' m'
 
instance P'.GPB DataEncryptionKeyProto
 
instance P'.ReflectDescriptor DataEncryptionKeyProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 18, 26, 34, 40]) (P'.fromDistinctAscList [8, 18, 26, 34, 40, 50])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.DataEncryptionKeyProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DataEncryptionKeyProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"DataEncryptionKeyProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DataEncryptionKeyProto.keyId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DataEncryptionKeyProto\"], baseName' = FName \"keyId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DataEncryptionKeyProto.blockPoolId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DataEncryptionKeyProto\"], baseName' = FName \"blockPoolId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DataEncryptionKeyProto.nonce\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DataEncryptionKeyProto\"], baseName' = FName \"nonce\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DataEncryptionKeyProto.encryptionKey\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DataEncryptionKeyProto\"], baseName' = FName \"encryptionKey\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DataEncryptionKeyProto.expiryDate\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DataEncryptionKeyProto\"], baseName' = FName \"expiryDate\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DataEncryptionKeyProto.encryptionAlgorithm\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DataEncryptionKeyProto\"], baseName' = FName \"encryptionAlgorithm\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType DataEncryptionKeyProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg DataEncryptionKeyProto where
  textPut msg
   = do
       P'.tellT "keyId" (keyId msg)
       P'.tellT "blockPoolId" (blockPoolId msg)
       P'.tellT "nonce" (nonce msg)
       P'.tellT "encryptionKey" (encryptionKey msg)
       P'.tellT "expiryDate" (expiryDate msg)
       P'.tellT "encryptionAlgorithm" (encryptionAlgorithm msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'keyId, parse'blockPoolId, parse'nonce, parse'encryptionKey, parse'expiryDate, parse'encryptionAlgorithm])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'keyId
         = P'.try
            (do
               v <- P'.getT "keyId"
               Prelude'.return (\ o -> o{keyId = v}))
        parse'blockPoolId
         = P'.try
            (do
               v <- P'.getT "blockPoolId"
               Prelude'.return (\ o -> o{blockPoolId = v}))
        parse'nonce
         = P'.try
            (do
               v <- P'.getT "nonce"
               Prelude'.return (\ o -> o{nonce = v}))
        parse'encryptionKey
         = P'.try
            (do
               v <- P'.getT "encryptionKey"
               Prelude'.return (\ o -> o{encryptionKey = v}))
        parse'expiryDate
         = P'.try
            (do
               v <- P'.getT "expiryDate"
               Prelude'.return (\ o -> o{expiryDate = v}))
        parse'encryptionAlgorithm
         = P'.try
            (do
               v <- P'.getT "encryptionAlgorithm"
               Prelude'.return (\ o -> o{encryptionAlgorithm = v}))