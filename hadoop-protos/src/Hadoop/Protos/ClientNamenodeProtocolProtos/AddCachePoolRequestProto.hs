{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.AddCachePoolRequestProto (AddCachePoolRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.CachePoolInfoProto as ClientNamenodeProtocolProtos (CachePoolInfoProto)
 
data AddCachePoolRequestProto = AddCachePoolRequestProto{info :: !(ClientNamenodeProtocolProtos.CachePoolInfoProto)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AddCachePoolRequestProto where
  mergeAppend (AddCachePoolRequestProto x'1) (AddCachePoolRequestProto y'1) = AddCachePoolRequestProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default AddCachePoolRequestProto where
  defaultValue = AddCachePoolRequestProto P'.defaultValue
 
instance P'.Wire AddCachePoolRequestProto where
  wireSize ft' self'@(AddCachePoolRequestProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1)
  wirePut ft' self'@(AddCachePoolRequestProto x'1)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{info = P'.mergeAppend (info old'Self) (new'Field)}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> AddCachePoolRequestProto) AddCachePoolRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB AddCachePoolRequestProto
 
instance P'.ReflectDescriptor AddCachePoolRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.AddCachePoolRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"AddCachePoolRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"AddCachePoolRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AddCachePoolRequestProto.info\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"AddCachePoolRequestProto\"], baseName' = FName \"info\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.CachePoolInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"CachePoolInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType AddCachePoolRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg AddCachePoolRequestProto where
  textPut msg
   = do
       P'.tellT "info" (info msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'info]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'info
         = P'.try
            (do
               v <- P'.getT "info"
               Prelude'.return (\ o -> o{info = v}))