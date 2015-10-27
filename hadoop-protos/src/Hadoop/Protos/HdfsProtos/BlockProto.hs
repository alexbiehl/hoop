{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.BlockProto (BlockProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data BlockProto = BlockProto{blockId :: !(P'.Word64), genStamp :: !(P'.Word64), numBytes :: !(P'.Maybe P'.Word64)}
                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable BlockProto where
  mergeAppend (BlockProto x'1 x'2 x'3) (BlockProto y'1 y'2 y'3)
   = BlockProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default BlockProto where
  defaultValue = BlockProto P'.defaultValue P'.defaultValue (Prelude'.Just 0)
 
instance P'.Wire BlockProto where
  wireSize ft' self'@(BlockProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 4 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeOpt 1 4 x'3)
  wirePut ft' self'@(BlockProto x'1 x'2 x'3)
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
             P'.wirePutReq 16 4 x'2
             P'.wirePutOpt 24 4 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{blockId = new'Field}) (P'.wireGet 4)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{genStamp = new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{numBytes = Prelude'.Just new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> BlockProto) BlockProto where
  getVal m' f' = f' m'
 
instance P'.GPB BlockProto
 
instance P'.ReflectDescriptor BlockProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 16]) (P'.fromDistinctAscList [8, 16, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.BlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"BlockProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"BlockProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockProto.blockId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"BlockProto\"], baseName' = FName \"blockId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockProto.genStamp\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"BlockProto\"], baseName' = FName \"genStamp\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockProto.numBytes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"BlockProto\"], baseName' = FName \"numBytes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType BlockProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg BlockProto where
  textPut msg
   = do
       P'.tellT "blockId" (blockId msg)
       P'.tellT "genStamp" (genStamp msg)
       P'.tellT "numBytes" (numBytes msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'blockId, parse'genStamp, parse'numBytes]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'blockId
         = P'.try
            (do
               v <- P'.getT "blockId"
               Prelude'.return (\ o -> o{blockId = v}))
        parse'genStamp
         = P'.try
            (do
               v <- P'.getT "genStamp"
               Prelude'.return (\ o -> o{genStamp = v}))
        parse'numBytes
         = P'.try
            (do
               v <- P'.getT "numBytes"
               Prelude'.return (\ o -> o{numBytes = v}))