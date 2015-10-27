{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.FsImageProto.CacheManagerSection (CacheManagerSection(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data CacheManagerSection = CacheManagerSection{nextDirectiveId :: !(P'.Word64), numPools :: !(P'.Word32),
                                               numDirectives :: !(P'.Word32)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CacheManagerSection where
  mergeAppend (CacheManagerSection x'1 x'2 x'3) (CacheManagerSection y'1 y'2 y'3)
   = CacheManagerSection (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default CacheManagerSection where
  defaultValue = CacheManagerSection P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire CacheManagerSection where
  wireSize ft' self'@(CacheManagerSection x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 4 x'1 + P'.wireSizeReq 1 13 x'2 + P'.wireSizeReq 1 13 x'3)
  wirePut ft' self'@(CacheManagerSection x'1 x'2 x'3)
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
             P'.wirePutReq 16 13 x'2
             P'.wirePutReq 24 13 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{nextDirectiveId = new'Field}) (P'.wireGet 4)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{numPools = new'Field}) (P'.wireGet 13)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{numDirectives = new'Field}) (P'.wireGet 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> CacheManagerSection) CacheManagerSection where
  getVal m' f' = f' m'
 
instance P'.GPB CacheManagerSection
 
instance P'.ReflectDescriptor CacheManagerSection where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 16, 24]) (P'.fromDistinctAscList [8, 16, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.CacheManagerSection\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\"], baseName = MName \"CacheManagerSection\"}, descFilePath = [\"Hadoop\",\"Protos\",\"FsImageProto\",\"CacheManagerSection.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.CacheManagerSection.nextDirectiveId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"CacheManagerSection\"], baseName' = FName \"nextDirectiveId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.CacheManagerSection.numPools\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"CacheManagerSection\"], baseName' = FName \"numPools\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.CacheManagerSection.numDirectives\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"CacheManagerSection\"], baseName' = FName \"numDirectives\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType CacheManagerSection where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg CacheManagerSection where
  textPut msg
   = do
       P'.tellT "nextDirectiveId" (nextDirectiveId msg)
       P'.tellT "numPools" (numPools msg)
       P'.tellT "numDirectives" (numDirectives msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'nextDirectiveId, parse'numPools, parse'numDirectives]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'nextDirectiveId
         = P'.try
            (do
               v <- P'.getT "nextDirectiveId"
               Prelude'.return (\ o -> o{nextDirectiveId = v}))
        parse'numPools
         = P'.try
            (do
               v <- P'.getT "numPools"
               Prelude'.return (\ o -> o{numPools = v}))
        parse'numDirectives
         = P'.try
            (do
               v <- P'.getT "numDirectives"
               Prelude'.return (\ o -> o{numDirectives = v}))