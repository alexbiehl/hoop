{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.SnapshottableDirectoryStatusProto (SnapshottableDirectoryStatusProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.HdfsFileStatusProto as HdfsProtos (HdfsFileStatusProto)
 
data SnapshottableDirectoryStatusProto = SnapshottableDirectoryStatusProto{dirStatus :: !(HdfsProtos.HdfsFileStatusProto),
                                                                           snapshot_quota :: !(P'.Word32),
                                                                           snapshot_number :: !(P'.Word32),
                                                                           parent_fullpath :: !(P'.ByteString)}
                                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SnapshottableDirectoryStatusProto where
  mergeAppend (SnapshottableDirectoryStatusProto x'1 x'2 x'3 x'4) (SnapshottableDirectoryStatusProto y'1 y'2 y'3 y'4)
   = SnapshottableDirectoryStatusProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
 
instance P'.Default SnapshottableDirectoryStatusProto where
  defaultValue = SnapshottableDirectoryStatusProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire SnapshottableDirectoryStatusProto where
  wireSize ft' self'@(SnapshottableDirectoryStatusProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 13 x'2 + P'.wireSizeReq 1 13 x'3 + P'.wireSizeReq 1 12 x'4)
  wirePut ft' self'@(SnapshottableDirectoryStatusProto x'1 x'2 x'3 x'4)
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
             P'.wirePutReq 16 13 x'2
             P'.wirePutReq 24 13 x'3
             P'.wirePutReq 34 12 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{dirStatus = P'.mergeAppend (dirStatus old'Self) (new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{snapshot_quota = new'Field}) (P'.wireGet 13)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{snapshot_number = new'Field}) (P'.wireGet 13)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{parent_fullpath = new'Field}) (P'.wireGet 12)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> SnapshottableDirectoryStatusProto) SnapshottableDirectoryStatusProto where
  getVal m' f' = f' m'
 
instance P'.GPB SnapshottableDirectoryStatusProto
 
instance P'.ReflectDescriptor SnapshottableDirectoryStatusProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16, 24, 34]) (P'.fromDistinctAscList [10, 16, 24, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.SnapshottableDirectoryStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"SnapshottableDirectoryStatusProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"SnapshottableDirectoryStatusProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SnapshottableDirectoryStatusProto.dirStatus\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"SnapshottableDirectoryStatusProto\"], baseName' = FName \"dirStatus\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.HdfsFileStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"HdfsFileStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SnapshottableDirectoryStatusProto.snapshot_quota\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"SnapshottableDirectoryStatusProto\"], baseName' = FName \"snapshot_quota\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SnapshottableDirectoryStatusProto.snapshot_number\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"SnapshottableDirectoryStatusProto\"], baseName' = FName \"snapshot_number\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SnapshottableDirectoryStatusProto.parent_fullpath\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"SnapshottableDirectoryStatusProto\"], baseName' = FName \"parent_fullpath\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType SnapshottableDirectoryStatusProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg SnapshottableDirectoryStatusProto where
  textPut msg
   = do
       P'.tellT "dirStatus" (dirStatus msg)
       P'.tellT "snapshot_quota" (snapshot_quota msg)
       P'.tellT "snapshot_number" (snapshot_number msg)
       P'.tellT "parent_fullpath" (parent_fullpath msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'dirStatus, parse'snapshot_quota, parse'snapshot_number, parse'parent_fullpath])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'dirStatus
         = P'.try
            (do
               v <- P'.getT "dirStatus"
               Prelude'.return (\ o -> o{dirStatus = v}))
        parse'snapshot_quota
         = P'.try
            (do
               v <- P'.getT "snapshot_quota"
               Prelude'.return (\ o -> o{snapshot_quota = v}))
        parse'snapshot_number
         = P'.try
            (do
               v <- P'.getT "snapshot_number"
               Prelude'.return (\ o -> o{snapshot_number = v}))
        parse'parent_fullpath
         = P'.try
            (do
               v <- P'.getT "parent_fullpath"
               Prelude'.return (\ o -> o{parent_fullpath = v}))