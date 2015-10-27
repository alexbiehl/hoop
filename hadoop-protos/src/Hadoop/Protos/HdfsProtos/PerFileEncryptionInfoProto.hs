{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.PerFileEncryptionInfoProto (PerFileEncryptionInfoProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data PerFileEncryptionInfoProto = PerFileEncryptionInfoProto{key :: !(P'.ByteString), iv :: !(P'.ByteString),
                                                             ezKeyVersionName :: !(P'.Utf8)}
                                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable PerFileEncryptionInfoProto where
  mergeAppend (PerFileEncryptionInfoProto x'1 x'2 x'3) (PerFileEncryptionInfoProto y'1 y'2 y'3)
   = PerFileEncryptionInfoProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default PerFileEncryptionInfoProto where
  defaultValue = PerFileEncryptionInfoProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire PerFileEncryptionInfoProto where
  wireSize ft' self'@(PerFileEncryptionInfoProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 12 x'1 + P'.wireSizeReq 1 12 x'2 + P'.wireSizeReq 1 9 x'3)
  wirePut ft' self'@(PerFileEncryptionInfoProto x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 12 x'1
             P'.wirePutReq 18 12 x'2
             P'.wirePutReq 26 9 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{key = new'Field}) (P'.wireGet 12)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{iv = new'Field}) (P'.wireGet 12)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{ezKeyVersionName = new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> PerFileEncryptionInfoProto) PerFileEncryptionInfoProto where
  getVal m' f' = f' m'
 
instance P'.GPB PerFileEncryptionInfoProto
 
instance P'.ReflectDescriptor PerFileEncryptionInfoProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18, 26]) (P'.fromDistinctAscList [10, 18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.PerFileEncryptionInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"PerFileEncryptionInfoProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"PerFileEncryptionInfoProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.PerFileEncryptionInfoProto.key\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"PerFileEncryptionInfoProto\"], baseName' = FName \"key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.PerFileEncryptionInfoProto.iv\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"PerFileEncryptionInfoProto\"], baseName' = FName \"iv\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.PerFileEncryptionInfoProto.ezKeyVersionName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"PerFileEncryptionInfoProto\"], baseName' = FName \"ezKeyVersionName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType PerFileEncryptionInfoProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg PerFileEncryptionInfoProto where
  textPut msg
   = do
       P'.tellT "key" (key msg)
       P'.tellT "iv" (iv msg)
       P'.tellT "ezKeyVersionName" (ezKeyVersionName msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'key, parse'iv, parse'ezKeyVersionName]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
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
        parse'ezKeyVersionName
         = P'.try
            (do
               v <- P'.getT "ezKeyVersionName"
               Prelude'.return (\ o -> o{ezKeyVersionName = v}))