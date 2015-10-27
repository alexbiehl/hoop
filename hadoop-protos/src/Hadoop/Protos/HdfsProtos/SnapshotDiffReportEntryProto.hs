{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.SnapshotDiffReportEntryProto (SnapshotDiffReportEntryProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data SnapshotDiffReportEntryProto = SnapshotDiffReportEntryProto{fullpath :: !(P'.ByteString), modificationLabel :: !(P'.Utf8),
                                                                 targetPath :: !(P'.Maybe P'.ByteString)}
                                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SnapshotDiffReportEntryProto where
  mergeAppend (SnapshotDiffReportEntryProto x'1 x'2 x'3) (SnapshotDiffReportEntryProto y'1 y'2 y'3)
   = SnapshotDiffReportEntryProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default SnapshotDiffReportEntryProto where
  defaultValue = SnapshotDiffReportEntryProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire SnapshotDiffReportEntryProto where
  wireSize ft' self'@(SnapshotDiffReportEntryProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 12 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeOpt 1 12 x'3)
  wirePut ft' self'@(SnapshotDiffReportEntryProto x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 12 x'1
             P'.wirePutReq 18 9 x'2
             P'.wirePutOpt 26 12 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{fullpath = new'Field}) (P'.wireGet 12)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{modificationLabel = new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{targetPath = Prelude'.Just new'Field}) (P'.wireGet 12)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> SnapshotDiffReportEntryProto) SnapshotDiffReportEntryProto where
  getVal m' f' = f' m'
 
instance P'.GPB SnapshotDiffReportEntryProto
 
instance P'.ReflectDescriptor SnapshotDiffReportEntryProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18]) (P'.fromDistinctAscList [10, 18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.SnapshotDiffReportEntryProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"SnapshotDiffReportEntryProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"SnapshotDiffReportEntryProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SnapshotDiffReportEntryProto.fullpath\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"SnapshotDiffReportEntryProto\"], baseName' = FName \"fullpath\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SnapshotDiffReportEntryProto.modificationLabel\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"SnapshotDiffReportEntryProto\"], baseName' = FName \"modificationLabel\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SnapshotDiffReportEntryProto.targetPath\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"SnapshotDiffReportEntryProto\"], baseName' = FName \"targetPath\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType SnapshotDiffReportEntryProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg SnapshotDiffReportEntryProto where
  textPut msg
   = do
       P'.tellT "fullpath" (fullpath msg)
       P'.tellT "modificationLabel" (modificationLabel msg)
       P'.tellT "targetPath" (targetPath msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'fullpath, parse'modificationLabel, parse'targetPath]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'fullpath
         = P'.try
            (do
               v <- P'.getT "fullpath"
               Prelude'.return (\ o -> o{fullpath = v}))
        parse'modificationLabel
         = P'.try
            (do
               v <- P'.getT "modificationLabel"
               Prelude'.return (\ o -> o{modificationLabel = v}))
        parse'targetPath
         = P'.try
            (do
               v <- P'.getT "targetPath"
               Prelude'.return (\ o -> o{targetPath = v}))