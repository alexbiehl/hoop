{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.GetBlockLocationsRequestProto (GetBlockLocationsRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data GetBlockLocationsRequestProto = GetBlockLocationsRequestProto{src :: !(P'.Utf8), offset :: !(P'.Word64),
                                                                   length :: !(P'.Word64)}
                                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetBlockLocationsRequestProto where
  mergeAppend (GetBlockLocationsRequestProto x'1 x'2 x'3) (GetBlockLocationsRequestProto y'1 y'2 y'3)
   = GetBlockLocationsRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default GetBlockLocationsRequestProto where
  defaultValue = GetBlockLocationsRequestProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire GetBlockLocationsRequestProto where
  wireSize ft' self'@(GetBlockLocationsRequestProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeReq 1 4 x'3)
  wirePut ft' self'@(GetBlockLocationsRequestProto x'1 x'2 x'3)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{src = new'Field}) (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{offset = new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{length = new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetBlockLocationsRequestProto) GetBlockLocationsRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetBlockLocationsRequestProto
 
instance P'.ReflectDescriptor GetBlockLocationsRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16, 24]) (P'.fromDistinctAscList [10, 16, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.GetBlockLocationsRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"GetBlockLocationsRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"GetBlockLocationsRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetBlockLocationsRequestProto.src\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetBlockLocationsRequestProto\"], baseName' = FName \"src\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetBlockLocationsRequestProto.offset\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetBlockLocationsRequestProto\"], baseName' = FName \"offset\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetBlockLocationsRequestProto.length\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetBlockLocationsRequestProto\"], baseName' = FName \"length\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetBlockLocationsRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetBlockLocationsRequestProto where
  textPut msg
   = do
       P'.tellT "src" (src msg)
       P'.tellT "offset" (offset msg)
       P'.tellT "length" (length msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'src, parse'offset, parse'length]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'src
         = P'.try
            (do
               v <- P'.getT "src"
               Prelude'.return (\ o -> o{src = v}))
        parse'offset
         = P'.try
            (do
               v <- P'.getT "offset"
               Prelude'.return (\ o -> o{offset = v}))
        parse'length
         = P'.try
            (do
               v <- P'.getT "length"
               Prelude'.return (\ o -> o{length = v}))