{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.CachingStrategyProto (CachingStrategyProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data CachingStrategyProto = CachingStrategyProto{dropBehind :: !(P'.Maybe P'.Bool), readahead :: !(P'.Maybe P'.Int64)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CachingStrategyProto where
  mergeAppend (CachingStrategyProto x'1 x'2) (CachingStrategyProto y'1 y'2)
   = CachingStrategyProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default CachingStrategyProto where
  defaultValue = CachingStrategyProto P'.defaultValue P'.defaultValue
 
instance P'.Wire CachingStrategyProto where
  wireSize ft' self'@(CachingStrategyProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 8 x'1 + P'.wireSizeOpt 1 3 x'2)
  wirePut ft' self'@(CachingStrategyProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 8 x'1
             P'.wirePutOpt 16 3 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{dropBehind = Prelude'.Just new'Field}) (P'.wireGet 8)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{readahead = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> CachingStrategyProto) CachingStrategyProto where
  getVal m' f' = f' m'
 
instance P'.GPB CachingStrategyProto
 
instance P'.ReflectDescriptor CachingStrategyProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.CachingStrategyProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"CachingStrategyProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DataTransferProtos\",\"CachingStrategyProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CachingStrategyProto.dropBehind\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"CachingStrategyProto\"], baseName' = FName \"dropBehind\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CachingStrategyProto.readahead\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"CachingStrategyProto\"], baseName' = FName \"readahead\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType CachingStrategyProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg CachingStrategyProto where
  textPut msg
   = do
       P'.tellT "dropBehind" (dropBehind msg)
       P'.tellT "readahead" (readahead msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'dropBehind, parse'readahead]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'dropBehind
         = P'.try
            (do
               v <- P'.getT "dropBehind"
               Prelude'.return (\ o -> o{dropBehind = v}))
        parse'readahead
         = P'.try
            (do
               v <- P'.getT "readahead"
               Prelude'.return (\ o -> o{readahead = v}))