{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.FsImageProto.SecretManagerSection (SecretManagerSection(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data SecretManagerSection = SecretManagerSection{currentId :: !(P'.Maybe P'.Word32), tokenSequenceNumber :: !(P'.Maybe P'.Word32),
                                                 numKeys :: !(P'.Maybe P'.Word32), numTokens :: !(P'.Maybe P'.Word32)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SecretManagerSection where
  mergeAppend (SecretManagerSection x'1 x'2 x'3 x'4) (SecretManagerSection y'1 y'2 y'3 y'4)
   = SecretManagerSection (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default SecretManagerSection where
  defaultValue = SecretManagerSection P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire SecretManagerSection where
  wireSize ft' self'@(SecretManagerSection x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 13 x'1 + P'.wireSizeOpt 1 13 x'2 + P'.wireSizeOpt 1 13 x'3 + P'.wireSizeOpt 1 13 x'4)
  wirePut ft' self'@(SecretManagerSection x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 13 x'1
             P'.wirePutOpt 16 13 x'2
             P'.wirePutOpt 24 13 x'3
             P'.wirePutOpt 32 13 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{currentId = Prelude'.Just new'Field}) (P'.wireGet 13)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{tokenSequenceNumber = Prelude'.Just new'Field}) (P'.wireGet 13)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{numKeys = Prelude'.Just new'Field}) (P'.wireGet 13)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{numTokens = Prelude'.Just new'Field}) (P'.wireGet 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> SecretManagerSection) SecretManagerSection where
  getVal m' f' = f' m'
 
instance P'.GPB SecretManagerSection
 
instance P'.ReflectDescriptor SecretManagerSection where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 24, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.SecretManagerSection\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\"], baseName = MName \"SecretManagerSection\"}, descFilePath = [\"Hadoop\",\"Protos\",\"FsImageProto\",\"SecretManagerSection.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SecretManagerSection.currentId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SecretManagerSection\"], baseName' = FName \"currentId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SecretManagerSection.tokenSequenceNumber\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SecretManagerSection\"], baseName' = FName \"tokenSequenceNumber\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SecretManagerSection.numKeys\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SecretManagerSection\"], baseName' = FName \"numKeys\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SecretManagerSection.numTokens\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SecretManagerSection\"], baseName' = FName \"numTokens\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType SecretManagerSection where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg SecretManagerSection where
  textPut msg
   = do
       P'.tellT "currentId" (currentId msg)
       P'.tellT "tokenSequenceNumber" (tokenSequenceNumber msg)
       P'.tellT "numKeys" (numKeys msg)
       P'.tellT "numTokens" (numTokens msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'currentId, parse'tokenSequenceNumber, parse'numKeys, parse'numTokens]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'currentId
         = P'.try
            (do
               v <- P'.getT "currentId"
               Prelude'.return (\ o -> o{currentId = v}))
        parse'tokenSequenceNumber
         = P'.try
            (do
               v <- P'.getT "tokenSequenceNumber"
               Prelude'.return (\ o -> o{tokenSequenceNumber = v}))
        parse'numKeys
         = P'.try
            (do
               v <- P'.getT "numKeys"
               Prelude'.return (\ o -> o{numKeys = v}))
        parse'numTokens
         = P'.try
            (do
               v <- P'.getT "numTokens"
               Prelude'.return (\ o -> o{numTokens = v}))