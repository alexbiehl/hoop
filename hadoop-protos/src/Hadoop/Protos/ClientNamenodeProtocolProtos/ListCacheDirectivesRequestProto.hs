{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.ListCacheDirectivesRequestProto (ListCacheDirectivesRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.CacheDirectiveInfoProto as ClientNamenodeProtocolProtos
       (CacheDirectiveInfoProto)
 
data ListCacheDirectivesRequestProto = ListCacheDirectivesRequestProto{prevId :: !(P'.Int64),
                                                                       filter ::
                                                                       !(ClientNamenodeProtocolProtos.CacheDirectiveInfoProto)}
                                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ListCacheDirectivesRequestProto where
  mergeAppend (ListCacheDirectivesRequestProto x'1 x'2) (ListCacheDirectivesRequestProto y'1 y'2)
   = ListCacheDirectivesRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ListCacheDirectivesRequestProto where
  defaultValue = ListCacheDirectivesRequestProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ListCacheDirectivesRequestProto where
  wireSize ft' self'@(ListCacheDirectivesRequestProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 3 x'1 + P'.wireSizeReq 1 11 x'2)
  wirePut ft' self'@(ListCacheDirectivesRequestProto x'1 x'2)
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
             P'.wirePutReq 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{prevId = new'Field}) (P'.wireGet 3)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{filter = P'.mergeAppend (filter old'Self) (new'Field)}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ListCacheDirectivesRequestProto) ListCacheDirectivesRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB ListCacheDirectivesRequestProto
 
instance P'.ReflectDescriptor ListCacheDirectivesRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 18]) (P'.fromDistinctAscList [8, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.ListCacheDirectivesRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"ListCacheDirectivesRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"ListCacheDirectivesRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ListCacheDirectivesRequestProto.prevId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"ListCacheDirectivesRequestProto\"], baseName' = FName \"prevId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ListCacheDirectivesRequestProto.filter\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"ListCacheDirectivesRequestProto\"], baseName' = FName \"filter\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.CacheDirectiveInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"CacheDirectiveInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ListCacheDirectivesRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ListCacheDirectivesRequestProto where
  textPut msg
   = do
       P'.tellT "prevId" (prevId msg)
       P'.tellT "filter" (filter msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'prevId, parse'filter]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'prevId
         = P'.try
            (do
               v <- P'.getT "prevId"
               Prelude'.return (\ o -> o{prevId = v}))
        parse'filter
         = P'.try
            (do
               v <- P'.getT "filter"
               Prelude'.return (\ o -> o{filter = v}))