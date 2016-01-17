{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.BlockWithLocationsProto (BlockWithLocationsProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.BlockProto as HdfsProtos (BlockProto)
import qualified Hadoop.Protos.HdfsProtos.StorageTypeProto as HdfsProtos (StorageTypeProto)
 
data BlockWithLocationsProto = BlockWithLocationsProto{block :: !(HdfsProtos.BlockProto), datanodeUuids :: !(P'.Seq P'.Utf8),
                                                       storageUuids :: !(P'.Seq P'.Utf8),
                                                       storageTypes :: !(P'.Seq HdfsProtos.StorageTypeProto)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable BlockWithLocationsProto where
  mergeAppend (BlockWithLocationsProto x'1 x'2 x'3 x'4) (BlockWithLocationsProto y'1 y'2 y'3 y'4)
   = BlockWithLocationsProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default BlockWithLocationsProto where
  defaultValue = BlockWithLocationsProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire BlockWithLocationsProto where
  wireSize ft' self'@(BlockWithLocationsProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeRep 1 9 x'2 + P'.wireSizeRep 1 9 x'3 + P'.wireSizeRep 1 14 x'4)
  wirePut ft' self'@(BlockWithLocationsProto x'1 x'2 x'3 x'4)
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
             P'.wirePutRep 18 9 x'2
             P'.wirePutRep 26 9 x'3
             P'.wirePutRep 32 14 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{block = P'.mergeAppend (block old'Self) (new'Field)}) (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{datanodeUuids = P'.append (datanodeUuids old'Self) new'Field})
                    (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{storageUuids = P'.append (storageUuids old'Self) new'Field})
                    (P'.wireGet 9)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{storageTypes = P'.append (storageTypes old'Self) new'Field})
                    (P'.wireGet 14)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{storageTypes = P'.mergeAppend (storageTypes old'Self) new'Field})
                    (P'.wireGetPacked 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> BlockWithLocationsProto) BlockWithLocationsProto where
  getVal m' f' = f' m'
 
instance P'.GPB BlockWithLocationsProto
 
instance P'.ReflectDescriptor BlockWithLocationsProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10, 18, 26, 32, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.BlockWithLocationsProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"BlockWithLocationsProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"BlockWithLocationsProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockWithLocationsProto.block\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"BlockWithLocationsProto\"], baseName' = FName \"block\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.BlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"BlockProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockWithLocationsProto.datanodeUuids\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"BlockWithLocationsProto\"], baseName' = FName \"datanodeUuids\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockWithLocationsProto.storageUuids\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"BlockWithLocationsProto\"], baseName' = FName \"storageUuids\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockWithLocationsProto.storageTypes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"BlockWithLocationsProto\"], baseName' = FName \"storageTypes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Just (WireTag {getWireTag = 32},WireTag {getWireTag = 34}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageTypeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageTypeProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType BlockWithLocationsProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg BlockWithLocationsProto where
  textPut msg
   = do
       P'.tellT "block" (block msg)
       P'.tellT "datanodeUuids" (datanodeUuids msg)
       P'.tellT "storageUuids" (storageUuids msg)
       P'.tellT "storageTypes" (storageTypes msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'block, parse'datanodeUuids, parse'storageUuids, parse'storageTypes]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'block
         = P'.try
            (do
               v <- P'.getT "block"
               Prelude'.return (\ o -> o{block = v}))
        parse'datanodeUuids
         = P'.try
            (do
               v <- P'.getT "datanodeUuids"
               Prelude'.return (\ o -> o{datanodeUuids = P'.append (datanodeUuids o) v}))
        parse'storageUuids
         = P'.try
            (do
               v <- P'.getT "storageUuids"
               Prelude'.return (\ o -> o{storageUuids = P'.append (storageUuids o) v}))
        parse'storageTypes
         = P'.try
            (do
               v <- P'.getT "storageTypes"
               Prelude'.return (\ o -> o{storageTypes = P'.append (storageTypes o) v}))