{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.ExtendedBlockProto (ExtendedBlockProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ExtendedBlockProto = ExtendedBlockProto{poolId :: !(P'.Utf8), blockId :: !(P'.Word64), generationStamp :: !(P'.Word64),
                                             numBytes :: !(P'.Maybe P'.Word64)}
                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ExtendedBlockProto where
  mergeAppend (ExtendedBlockProto x'1 x'2 x'3 x'4) (ExtendedBlockProto y'1 y'2 y'3 y'4)
   = ExtendedBlockProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default ExtendedBlockProto where
  defaultValue = ExtendedBlockProto P'.defaultValue P'.defaultValue P'.defaultValue (Prelude'.Just 0)
 
instance P'.Wire ExtendedBlockProto where
  wireSize ft' self'@(ExtendedBlockProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeReq 1 4 x'3 + P'.wireSizeOpt 1 4 x'4)
  wirePut ft' self'@(ExtendedBlockProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 9 x'1
             P'.wirePutReq 16 4 x'2
             P'.wirePutReq 24 4 x'3
             P'.wirePutOpt 32 4 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{poolId = new'Field}) (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{blockId = new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{generationStamp = new'Field}) (P'.wireGet 4)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{numBytes = Prelude'.Just new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ExtendedBlockProto) ExtendedBlockProto where
  getVal m' f' = f' m'
 
instance P'.GPB ExtendedBlockProto
 
instance P'.ReflectDescriptor ExtendedBlockProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16, 24]) (P'.fromDistinctAscList [10, 16, 24, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.ExtendedBlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"ExtendedBlockProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"ExtendedBlockProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ExtendedBlockProto.poolId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ExtendedBlockProto\"], baseName' = FName \"poolId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ExtendedBlockProto.blockId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ExtendedBlockProto\"], baseName' = FName \"blockId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ExtendedBlockProto.generationStamp\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ExtendedBlockProto\"], baseName' = FName \"generationStamp\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ExtendedBlockProto.numBytes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ExtendedBlockProto\"], baseName' = FName \"numBytes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ExtendedBlockProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ExtendedBlockProto where
  textPut msg
   = do
       P'.tellT "poolId" (poolId msg)
       P'.tellT "blockId" (blockId msg)
       P'.tellT "generationStamp" (generationStamp msg)
       P'.tellT "numBytes" (numBytes msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'poolId, parse'blockId, parse'generationStamp, parse'numBytes]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'poolId
         = P'.try
            (do
               v <- P'.getT "poolId"
               Prelude'.return (\ o -> o{poolId = v}))
        parse'blockId
         = P'.try
            (do
               v <- P'.getT "blockId"
               Prelude'.return (\ o -> o{blockId = v}))
        parse'generationStamp
         = P'.try
            (do
               v <- P'.getT "generationStamp"
               Prelude'.return (\ o -> o{generationStamp = v}))
        parse'numBytes
         = P'.try
            (do
               v <- P'.getT "numBytes"
               Prelude'.return (\ o -> o{numBytes = v}))