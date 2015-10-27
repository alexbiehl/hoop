{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientDatanodeProtocolProtos.GetHdfsBlockLocationsResponseProto (GetHdfsBlockLocationsResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data GetHdfsBlockLocationsResponseProto = GetHdfsBlockLocationsResponseProto{volumeIds :: !(P'.Seq P'.ByteString),
                                                                             volumeIndexes :: !(P'.Seq P'.Word32)}
                                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetHdfsBlockLocationsResponseProto where
  mergeAppend (GetHdfsBlockLocationsResponseProto x'1 x'2) (GetHdfsBlockLocationsResponseProto y'1 y'2)
   = GetHdfsBlockLocationsResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default GetHdfsBlockLocationsResponseProto where
  defaultValue = GetHdfsBlockLocationsResponseProto P'.defaultValue P'.defaultValue
 
instance P'.Wire GetHdfsBlockLocationsResponseProto where
  wireSize ft' self'@(GetHdfsBlockLocationsResponseProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 12 x'1 + P'.wireSizePacked 1 13 x'2)
  wirePut ft' self'@(GetHdfsBlockLocationsResponseProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 12 x'1
             P'.wirePutPacked 18 13 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{volumeIds = P'.append (volumeIds old'Self) new'Field}) (P'.wireGet 12)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{volumeIndexes = P'.append (volumeIndexes old'Self) new'Field})
                    (P'.wireGet 13)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{volumeIndexes = P'.mergeAppend (volumeIndexes old'Self) new'Field})
                    (P'.wireGetPacked 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetHdfsBlockLocationsResponseProto) GetHdfsBlockLocationsResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetHdfsBlockLocationsResponseProto
 
instance P'.ReflectDescriptor GetHdfsBlockLocationsResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.GetHdfsBlockLocationsResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientDatanodeProtocolProtos\"], baseName = MName \"GetHdfsBlockLocationsResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientDatanodeProtocolProtos\",\"GetHdfsBlockLocationsResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetHdfsBlockLocationsResponseProto.volumeIds\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientDatanodeProtocolProtos\",MName \"GetHdfsBlockLocationsResponseProto\"], baseName' = FName \"volumeIds\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetHdfsBlockLocationsResponseProto.volumeIndexes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientDatanodeProtocolProtos\",MName \"GetHdfsBlockLocationsResponseProto\"], baseName' = FName \"volumeIndexes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Just (WireTag {getWireTag = 16},WireTag {getWireTag = 18}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetHdfsBlockLocationsResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetHdfsBlockLocationsResponseProto where
  textPut msg
   = do
       P'.tellT "volumeIds" (volumeIds msg)
       P'.tellT "volumeIndexes" (volumeIndexes msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'volumeIds, parse'volumeIndexes]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'volumeIds
         = P'.try
            (do
               v <- P'.getT "volumeIds"
               Prelude'.return (\ o -> o{volumeIds = P'.append (volumeIds o) v}))
        parse'volumeIndexes
         = P'.try
            (do
               v <- P'.getT "volumeIndexes"
               Prelude'.return (\ o -> o{volumeIndexes = P'.append (volumeIndexes o) v}))