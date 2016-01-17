{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.InotifyProtos.CreateEventProto (CreateEventProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.FsPermissionProto as HdfsProtos (FsPermissionProto)
import qualified Hadoop.Protos.InotifyProtos.INodeType as InotifyProtos (INodeType)
 
data CreateEventProto = CreateEventProto{type' :: !(InotifyProtos.INodeType), path :: !(P'.Utf8), ctime :: !(P'.Int64),
                                         ownerName :: !(P'.Utf8), groupName :: !(P'.Utf8), perms :: !(HdfsProtos.FsPermissionProto),
                                         replication :: !(P'.Maybe P'.Int32), symlinkTarget :: !(P'.Maybe P'.Utf8),
                                         overwrite :: !(P'.Maybe P'.Bool), defaultBlockSize :: !(P'.Maybe P'.Int64)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CreateEventProto where
  mergeAppend (CreateEventProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10)
   (CreateEventProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10)
   = CreateEventProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
 
instance P'.Default CreateEventProto where
  defaultValue
   = CreateEventProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just 0)
 
instance P'.Wire CreateEventProto where
  wireSize ft' self'@(CreateEventProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 14 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeReq 1 3 x'3 + P'.wireSizeReq 1 9 x'4 +
             P'.wireSizeReq 1 9 x'5
             + P'.wireSizeReq 1 11 x'6
             + P'.wireSizeOpt 1 5 x'7
             + P'.wireSizeOpt 1 9 x'8
             + P'.wireSizeOpt 1 8 x'9
             + P'.wireSizeOpt 1 3 x'10)
  wirePut ft' self'@(CreateEventProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10)
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
             P'.wirePutReq 18 9 x'2
             P'.wirePutReq 24 3 x'3
             P'.wirePutReq 34 9 x'4
             P'.wirePutReq 42 9 x'5
             P'.wirePutReq 50 11 x'6
             P'.wirePutOpt 56 5 x'7
             P'.wirePutOpt 66 9 x'8
             P'.wirePutOpt 72 8 x'9
             P'.wirePutOpt 80 3 x'10
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{type' = new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{path = new'Field}) (P'.wireGet 9)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{ctime = new'Field}) (P'.wireGet 3)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{ownerName = new'Field}) (P'.wireGet 9)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{groupName = new'Field}) (P'.wireGet 9)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{perms = P'.mergeAppend (perms old'Self) (new'Field)}) (P'.wireGet 11)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{replication = Prelude'.Just new'Field}) (P'.wireGet 5)
             66 -> Prelude'.fmap (\ !new'Field -> old'Self{symlinkTarget = Prelude'.Just new'Field}) (P'.wireGet 9)
             72 -> Prelude'.fmap (\ !new'Field -> old'Self{overwrite = Prelude'.Just new'Field}) (P'.wireGet 8)
             80 -> Prelude'.fmap (\ !new'Field -> old'Self{defaultBlockSize = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> CreateEventProto) CreateEventProto where
  getVal m' f' = f' m'
 
instance P'.GPB CreateEventProto
 
instance P'.ReflectDescriptor CreateEventProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [8, 18, 24, 34, 42, 50])
      (P'.fromDistinctAscList [8, 18, 24, 34, 42, 50, 56, 66, 72, 80])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.CreateEventProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InotifyProtos\"], baseName = MName \"CreateEventProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"InotifyProtos\",\"CreateEventProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CreateEventProto.type\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"CreateEventProto\"], baseName' = FName \"type'\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.INodeType\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InotifyProtos\"], baseName = MName \"INodeType\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CreateEventProto.path\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"CreateEventProto\"], baseName' = FName \"path\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CreateEventProto.ctime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"CreateEventProto\"], baseName' = FName \"ctime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CreateEventProto.ownerName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"CreateEventProto\"], baseName' = FName \"ownerName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CreateEventProto.groupName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"CreateEventProto\"], baseName' = FName \"groupName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CreateEventProto.perms\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"CreateEventProto\"], baseName' = FName \"perms\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.FsPermissionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"FsPermissionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CreateEventProto.replication\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"CreateEventProto\"], baseName' = FName \"replication\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CreateEventProto.symlinkTarget\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"CreateEventProto\"], baseName' = FName \"symlinkTarget\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CreateEventProto.overwrite\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"CreateEventProto\"], baseName' = FName \"overwrite\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 72}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CreateEventProto.defaultBlockSize\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"CreateEventProto\"], baseName' = FName \"defaultBlockSize\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 80}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType CreateEventProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg CreateEventProto where
  textPut msg
   = do
       P'.tellT "type" (type' msg)
       P'.tellT "path" (path msg)
       P'.tellT "ctime" (ctime msg)
       P'.tellT "ownerName" (ownerName msg)
       P'.tellT "groupName" (groupName msg)
       P'.tellT "perms" (perms msg)
       P'.tellT "replication" (replication msg)
       P'.tellT "symlinkTarget" (symlinkTarget msg)
       P'.tellT "overwrite" (overwrite msg)
       P'.tellT "defaultBlockSize" (defaultBlockSize msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'type', parse'path, parse'ctime, parse'ownerName, parse'groupName, parse'perms, parse'replication,
                   parse'symlinkTarget, parse'overwrite, parse'defaultBlockSize])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'type'
         = P'.try
            (do
               v <- P'.getT "type"
               Prelude'.return (\ o -> o{type' = v}))
        parse'path
         = P'.try
            (do
               v <- P'.getT "path"
               Prelude'.return (\ o -> o{path = v}))
        parse'ctime
         = P'.try
            (do
               v <- P'.getT "ctime"
               Prelude'.return (\ o -> o{ctime = v}))
        parse'ownerName
         = P'.try
            (do
               v <- P'.getT "ownerName"
               Prelude'.return (\ o -> o{ownerName = v}))
        parse'groupName
         = P'.try
            (do
               v <- P'.getT "groupName"
               Prelude'.return (\ o -> o{groupName = v}))
        parse'perms
         = P'.try
            (do
               v <- P'.getT "perms"
               Prelude'.return (\ o -> o{perms = v}))
        parse'replication
         = P'.try
            (do
               v <- P'.getT "replication"
               Prelude'.return (\ o -> o{replication = v}))
        parse'symlinkTarget
         = P'.try
            (do
               v <- P'.getT "symlinkTarget"
               Prelude'.return (\ o -> o{symlinkTarget = v}))
        parse'overwrite
         = P'.try
            (do
               v <- P'.getT "overwrite"
               Prelude'.return (\ o -> o{overwrite = v}))
        parse'defaultBlockSize
         = P'.try
            (do
               v <- P'.getT "defaultBlockSize"
               Prelude'.return (\ o -> o{defaultBlockSize = v}))