{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.SnapshotDiffReportProto (SnapshotDiffReportProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.SnapshotDiffReportEntryProto as HdfsProtos (SnapshotDiffReportEntryProto)
 
data SnapshotDiffReportProto = SnapshotDiffReportProto{snapshotRoot :: !(P'.Utf8), fromSnapshot :: !(P'.Utf8),
                                                       toSnapshot :: !(P'.Utf8),
                                                       diffReportEntries :: !(P'.Seq HdfsProtos.SnapshotDiffReportEntryProto)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SnapshotDiffReportProto where
  mergeAppend (SnapshotDiffReportProto x'1 x'2 x'3 x'4) (SnapshotDiffReportProto y'1 y'2 y'3 y'4)
   = SnapshotDiffReportProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default SnapshotDiffReportProto where
  defaultValue = SnapshotDiffReportProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire SnapshotDiffReportProto where
  wireSize ft' self'@(SnapshotDiffReportProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeReq 1 9 x'3 + P'.wireSizeRep 1 11 x'4)
  wirePut ft' self'@(SnapshotDiffReportProto x'1 x'2 x'3 x'4)
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
             P'.wirePutReq 18 9 x'2
             P'.wirePutReq 26 9 x'3
             P'.wirePutRep 34 11 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{snapshotRoot = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{fromSnapshot = new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{toSnapshot = new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{diffReportEntries = P'.append (diffReportEntries old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> SnapshotDiffReportProto) SnapshotDiffReportProto where
  getVal m' f' = f' m'
 
instance P'.GPB SnapshotDiffReportProto
 
instance P'.ReflectDescriptor SnapshotDiffReportProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18, 26]) (P'.fromDistinctAscList [10, 18, 26, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.SnapshotDiffReportProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"SnapshotDiffReportProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"SnapshotDiffReportProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SnapshotDiffReportProto.snapshotRoot\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"SnapshotDiffReportProto\"], baseName' = FName \"snapshotRoot\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SnapshotDiffReportProto.fromSnapshot\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"SnapshotDiffReportProto\"], baseName' = FName \"fromSnapshot\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SnapshotDiffReportProto.toSnapshot\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"SnapshotDiffReportProto\"], baseName' = FName \"toSnapshot\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SnapshotDiffReportProto.diffReportEntries\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"SnapshotDiffReportProto\"], baseName' = FName \"diffReportEntries\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.SnapshotDiffReportEntryProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"SnapshotDiffReportEntryProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType SnapshotDiffReportProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg SnapshotDiffReportProto where
  textPut msg
   = do
       P'.tellT "snapshotRoot" (snapshotRoot msg)
       P'.tellT "fromSnapshot" (fromSnapshot msg)
       P'.tellT "toSnapshot" (toSnapshot msg)
       P'.tellT "diffReportEntries" (diffReportEntries msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'snapshotRoot, parse'fromSnapshot, parse'toSnapshot, parse'diffReportEntries]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'snapshotRoot
         = P'.try
            (do
               v <- P'.getT "snapshotRoot"
               Prelude'.return (\ o -> o{snapshotRoot = v}))
        parse'fromSnapshot
         = P'.try
            (do
               v <- P'.getT "fromSnapshot"
               Prelude'.return (\ o -> o{fromSnapshot = v}))
        parse'toSnapshot
         = P'.try
            (do
               v <- P'.getT "toSnapshot"
               Prelude'.return (\ o -> o{toSnapshot = v}))
        parse'diffReportEntries
         = P'.try
            (do
               v <- P'.getT "diffReportEntries"
               Prelude'.return (\ o -> o{diffReportEntries = P'.append (diffReportEntries o) v}))