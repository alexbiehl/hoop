{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.FsImageProto.SnapshotDiffSection.DiffEntry (DiffEntry(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.FsImageProto.SnapshotDiffSection.DiffEntry.Type as FsImageProto.SnapshotDiffSection.DiffEntry (Type)
 
data DiffEntry = DiffEntry{type' :: !(FsImageProto.SnapshotDiffSection.DiffEntry.Type), inodeId :: !(P'.Maybe P'.Word64),
                           numOfDiff :: !(P'.Maybe P'.Word32)}
               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable DiffEntry where
  mergeAppend (DiffEntry x'1 x'2 x'3) (DiffEntry y'1 y'2 y'3)
   = DiffEntry (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default DiffEntry where
  defaultValue = DiffEntry P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire DiffEntry where
  wireSize ft' self'@(DiffEntry x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 14 x'1 + P'.wireSizeOpt 1 4 x'2 + P'.wireSizeOpt 1 13 x'3)
  wirePut ft' self'@(DiffEntry x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 14 x'1
             P'.wirePutOpt 16 4 x'2
             P'.wirePutOpt 24 13 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{type' = new'Field}) (P'.wireGet 14)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{inodeId = Prelude'.Just new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{numOfDiff = Prelude'.Just new'Field}) (P'.wireGet 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> DiffEntry) DiffEntry where
  getVal m' f' = f' m'
 
instance P'.GPB DiffEntry
 
instance P'.ReflectDescriptor DiffEntry where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8, 16, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.SnapshotDiffSection.DiffEntry\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"SnapshotDiffSection\"], baseName = MName \"DiffEntry\"}, descFilePath = [\"Hadoop\",\"Protos\",\"FsImageProto\",\"SnapshotDiffSection\",\"DiffEntry.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SnapshotDiffSection.DiffEntry.type\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SnapshotDiffSection\",MName \"DiffEntry\"], baseName' = FName \"type'\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.SnapshotDiffSection.DiffEntry.Type\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"SnapshotDiffSection\",MName \"DiffEntry\"], baseName = MName \"Type\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SnapshotDiffSection.DiffEntry.inodeId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SnapshotDiffSection\",MName \"DiffEntry\"], baseName' = FName \"inodeId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SnapshotDiffSection.DiffEntry.numOfDiff\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SnapshotDiffSection\",MName \"DiffEntry\"], baseName' = FName \"numOfDiff\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType DiffEntry where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg DiffEntry where
  textPut msg
   = do
       P'.tellT "type" (type' msg)
       P'.tellT "inodeId" (inodeId msg)
       P'.tellT "numOfDiff" (numOfDiff msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'type', parse'inodeId, parse'numOfDiff]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'type'
         = P'.try
            (do
               v <- P'.getT "type"
               Prelude'.return (\ o -> o{type' = v}))
        parse'inodeId
         = P'.try
            (do
               v <- P'.getT "inodeId"
               Prelude'.return (\ o -> o{inodeId = v}))
        parse'numOfDiff
         = P'.try
            (do
               v <- P'.getT "numOfDiff"
               Prelude'.return (\ o -> o{numOfDiff = v}))