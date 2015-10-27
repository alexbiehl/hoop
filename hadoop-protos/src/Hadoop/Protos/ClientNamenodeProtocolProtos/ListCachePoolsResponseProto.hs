{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.ListCachePoolsResponseProto (ListCachePoolsResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.CachePoolEntryProto as ClientNamenodeProtocolProtos
       (CachePoolEntryProto)
 
data ListCachePoolsResponseProto = ListCachePoolsResponseProto{entries ::
                                                               !(P'.Seq ClientNamenodeProtocolProtos.CachePoolEntryProto),
                                                               hasMore :: !(P'.Bool)}
                                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ListCachePoolsResponseProto where
  mergeAppend (ListCachePoolsResponseProto x'1 x'2) (ListCachePoolsResponseProto y'1 y'2)
   = ListCachePoolsResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ListCachePoolsResponseProto where
  defaultValue = ListCachePoolsResponseProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ListCachePoolsResponseProto where
  wireSize ft' self'@(ListCachePoolsResponseProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeReq 1 8 x'2)
  wirePut ft' self'@(ListCachePoolsResponseProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 11 x'1
             P'.wirePutReq 16 8 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{entries = P'.append (entries old'Self) new'Field}) (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{hasMore = new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ListCachePoolsResponseProto) ListCachePoolsResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB ListCachePoolsResponseProto
 
instance P'.ReflectDescriptor ListCachePoolsResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [16]) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.ListCachePoolsResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"ListCachePoolsResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"ListCachePoolsResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ListCachePoolsResponseProto.entries\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"ListCachePoolsResponseProto\"], baseName' = FName \"entries\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.CachePoolEntryProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"CachePoolEntryProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ListCachePoolsResponseProto.hasMore\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"ListCachePoolsResponseProto\"], baseName' = FName \"hasMore\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ListCachePoolsResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ListCachePoolsResponseProto where
  textPut msg
   = do
       P'.tellT "entries" (entries msg)
       P'.tellT "hasMore" (hasMore msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'entries, parse'hasMore]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'entries
         = P'.try
            (do
               v <- P'.getT "entries"
               Prelude'.return (\ o -> o{entries = P'.append (entries o) v}))
        parse'hasMore
         = P'.try
            (do
               v <- P'.getT "hasMore"
               Prelude'.return (\ o -> o{hasMore = v}))