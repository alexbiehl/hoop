{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.FsImageProto.SnapshotSection (SnapshotSection(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data SnapshotSection = SnapshotSection{snapshotCounter :: !(P'.Maybe P'.Word32), snapshottableDir :: !(P'.Seq P'.Word64),
                                       numSnapshots :: !(P'.Maybe P'.Word32)}
                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SnapshotSection where
  mergeAppend (SnapshotSection x'1 x'2 x'3) (SnapshotSection y'1 y'2 y'3)
   = SnapshotSection (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default SnapshotSection where
  defaultValue = SnapshotSection P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire SnapshotSection where
  wireSize ft' self'@(SnapshotSection x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 13 x'1 + P'.wireSizePacked 1 4 x'2 + P'.wireSizeOpt 1 13 x'3)
  wirePut ft' self'@(SnapshotSection x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 13 x'1
             P'.wirePutPacked 18 4 x'2
             P'.wirePutOpt 24 13 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{snapshotCounter = Prelude'.Just new'Field}) (P'.wireGet 13)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{snapshottableDir = P'.append (snapshottableDir old'Self) new'Field})
                    (P'.wireGet 4)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{snapshottableDir = P'.mergeAppend (snapshottableDir old'Self) new'Field})
                    (P'.wireGetPacked 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{numSnapshots = Prelude'.Just new'Field}) (P'.wireGet 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> SnapshotSection) SnapshotSection where
  getVal m' f' = f' m'
 
instance P'.GPB SnapshotSection
 
instance P'.ReflectDescriptor SnapshotSection where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 18, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.SnapshotSection\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\"], baseName = MName \"SnapshotSection\"}, descFilePath = [\"Hadoop\",\"Protos\",\"FsImageProto\",\"SnapshotSection.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SnapshotSection.snapshotCounter\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SnapshotSection\"], baseName' = FName \"snapshotCounter\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SnapshotSection.snapshottableDir\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SnapshotSection\"], baseName' = FName \"snapshottableDir\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Just (WireTag {getWireTag = 16},WireTag {getWireTag = 18}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SnapshotSection.numSnapshots\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SnapshotSection\"], baseName' = FName \"numSnapshots\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType SnapshotSection where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg SnapshotSection where
  textPut msg
   = do
       P'.tellT "snapshotCounter" (snapshotCounter msg)
       P'.tellT "snapshottableDir" (snapshottableDir msg)
       P'.tellT "numSnapshots" (numSnapshots msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'snapshotCounter, parse'snapshottableDir, parse'numSnapshots]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'snapshotCounter
         = P'.try
            (do
               v <- P'.getT "snapshotCounter"
               Prelude'.return (\ o -> o{snapshotCounter = v}))
        parse'snapshottableDir
         = P'.try
            (do
               v <- P'.getT "snapshottableDir"
               Prelude'.return (\ o -> o{snapshottableDir = P'.append (snapshottableDir o) v}))
        parse'numSnapshots
         = P'.try
            (do
               v <- P'.getT "numSnapshots"
               Prelude'.return (\ o -> o{numSnapshots = v}))