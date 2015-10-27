{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.CacheDirectiveInfoExpirationProto (CacheDirectiveInfoExpirationProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data CacheDirectiveInfoExpirationProto = CacheDirectiveInfoExpirationProto{millis :: !(P'.Int64), isRelative :: !(P'.Bool)}
                                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CacheDirectiveInfoExpirationProto where
  mergeAppend (CacheDirectiveInfoExpirationProto x'1 x'2) (CacheDirectiveInfoExpirationProto y'1 y'2)
   = CacheDirectiveInfoExpirationProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default CacheDirectiveInfoExpirationProto where
  defaultValue = CacheDirectiveInfoExpirationProto P'.defaultValue P'.defaultValue
 
instance P'.Wire CacheDirectiveInfoExpirationProto where
  wireSize ft' self'@(CacheDirectiveInfoExpirationProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 3 x'1 + P'.wireSizeReq 1 8 x'2)
  wirePut ft' self'@(CacheDirectiveInfoExpirationProto x'1 x'2)
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
             P'.wirePutReq 16 8 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{millis = new'Field}) (P'.wireGet 3)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{isRelative = new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> CacheDirectiveInfoExpirationProto) CacheDirectiveInfoExpirationProto where
  getVal m' f' = f' m'
 
instance P'.GPB CacheDirectiveInfoExpirationProto
 
instance P'.ReflectDescriptor CacheDirectiveInfoExpirationProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 16]) (P'.fromDistinctAscList [8, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.CacheDirectiveInfoExpirationProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"CacheDirectiveInfoExpirationProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"CacheDirectiveInfoExpirationProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CacheDirectiveInfoExpirationProto.millis\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CacheDirectiveInfoExpirationProto\"], baseName' = FName \"millis\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CacheDirectiveInfoExpirationProto.isRelative\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CacheDirectiveInfoExpirationProto\"], baseName' = FName \"isRelative\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType CacheDirectiveInfoExpirationProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg CacheDirectiveInfoExpirationProto where
  textPut msg
   = do
       P'.tellT "millis" (millis msg)
       P'.tellT "isRelative" (isRelative msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'millis, parse'isRelative]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'millis
         = P'.try
            (do
               v <- P'.getT "millis"
               Prelude'.return (\ o -> o{millis = v}))
        parse'isRelative
         = P'.try
            (do
               v <- P'.getT "isRelative"
               Prelude'.return (\ o -> o{isRelative = v}))