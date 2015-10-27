{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.CacheDirectiveEntryProto (CacheDirectiveEntryProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.CacheDirectiveInfoProto as ClientNamenodeProtocolProtos
       (CacheDirectiveInfoProto)
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.CacheDirectiveStatsProto as ClientNamenodeProtocolProtos
       (CacheDirectiveStatsProto)
 
data CacheDirectiveEntryProto = CacheDirectiveEntryProto{info :: !(ClientNamenodeProtocolProtos.CacheDirectiveInfoProto),
                                                         stats :: !(ClientNamenodeProtocolProtos.CacheDirectiveStatsProto)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CacheDirectiveEntryProto where
  mergeAppend (CacheDirectiveEntryProto x'1 x'2) (CacheDirectiveEntryProto y'1 y'2)
   = CacheDirectiveEntryProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default CacheDirectiveEntryProto where
  defaultValue = CacheDirectiveEntryProto P'.defaultValue P'.defaultValue
 
instance P'.Wire CacheDirectiveEntryProto where
  wireSize ft' self'@(CacheDirectiveEntryProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 11 x'2)
  wirePut ft' self'@(CacheDirectiveEntryProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 11 x'1
             P'.wirePutReq 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{info = P'.mergeAppend (info old'Self) (new'Field)}) (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{stats = P'.mergeAppend (stats old'Self) (new'Field)}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> CacheDirectiveEntryProto) CacheDirectiveEntryProto where
  getVal m' f' = f' m'
 
instance P'.GPB CacheDirectiveEntryProto
 
instance P'.ReflectDescriptor CacheDirectiveEntryProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18]) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.CacheDirectiveEntryProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"CacheDirectiveEntryProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"CacheDirectiveEntryProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CacheDirectiveEntryProto.info\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CacheDirectiveEntryProto\"], baseName' = FName \"info\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.CacheDirectiveInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"CacheDirectiveInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CacheDirectiveEntryProto.stats\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CacheDirectiveEntryProto\"], baseName' = FName \"stats\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.CacheDirectiveStatsProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"CacheDirectiveStatsProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType CacheDirectiveEntryProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg CacheDirectiveEntryProto where
  textPut msg
   = do
       P'.tellT "info" (info msg)
       P'.tellT "stats" (stats msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'info, parse'stats]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'info
         = P'.try
            (do
               v <- P'.getT "info"
               Prelude'.return (\ o -> o{info = v}))
        parse'stats
         = P'.try
            (do
               v <- P'.getT "stats"
               Prelude'.return (\ o -> o{stats = v}))