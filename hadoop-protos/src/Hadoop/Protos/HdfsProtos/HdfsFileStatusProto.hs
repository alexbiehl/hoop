{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.HdfsFileStatusProto (HdfsFileStatusProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.FileEncryptionInfoProto as HdfsProtos (FileEncryptionInfoProto)
import qualified Hadoop.Protos.HdfsProtos.FsPermissionProto as HdfsProtos (FsPermissionProto)
import qualified Hadoop.Protos.HdfsProtos.HdfsFileStatusProto.FileType as HdfsProtos.HdfsFileStatusProto (FileType)
import qualified Hadoop.Protos.HdfsProtos.LocatedBlocksProto as HdfsProtos (LocatedBlocksProto)
 
data HdfsFileStatusProto = HdfsFileStatusProto{fileType :: !(HdfsProtos.HdfsFileStatusProto.FileType), path :: !(P'.ByteString),
                                               length :: !(P'.Word64), permission :: !(HdfsProtos.FsPermissionProto),
                                               owner :: !(P'.Utf8), group :: !(P'.Utf8), modification_time :: !(P'.Word64),
                                               access_time :: !(P'.Word64), symlink :: !(P'.Maybe P'.ByteString),
                                               block_replication :: !(P'.Maybe P'.Word32), blocksize :: !(P'.Maybe P'.Word64),
                                               locations :: !(P'.Maybe HdfsProtos.LocatedBlocksProto),
                                               fileId :: !(P'.Maybe P'.Word64), childrenNum :: !(P'.Maybe P'.Int32),
                                               fileEncryptionInfo :: !(P'.Maybe HdfsProtos.FileEncryptionInfoProto),
                                               storagePolicy :: !(P'.Maybe P'.Word32)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable HdfsFileStatusProto where
  mergeAppend (HdfsFileStatusProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16)
   (HdfsFileStatusProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16)
   = HdfsFileStatusProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)
      (P'.mergeAppend x'12 y'12)
      (P'.mergeAppend x'13 y'13)
      (P'.mergeAppend x'14 y'14)
      (P'.mergeAppend x'15 y'15)
      (P'.mergeAppend x'16 y'16)
 
instance P'.Default HdfsFileStatusProto where
  defaultValue
   = HdfsFileStatusProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just 0)
      (Prelude'.Just 0)
      P'.defaultValue
      (Prelude'.Just 0)
      (Prelude'.Just (-1))
      P'.defaultValue
      (Prelude'.Just 0)
 
instance P'.Wire HdfsFileStatusProto where
  wireSize ft' self'@(HdfsFileStatusProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 14 x'1 + P'.wireSizeReq 1 12 x'2 + P'.wireSizeReq 1 4 x'3 + P'.wireSizeReq 1 11 x'4 +
             P'.wireSizeReq 1 9 x'5
             + P'.wireSizeReq 1 9 x'6
             + P'.wireSizeReq 1 4 x'7
             + P'.wireSizeReq 1 4 x'8
             + P'.wireSizeOpt 1 12 x'9
             + P'.wireSizeOpt 1 13 x'10
             + P'.wireSizeOpt 1 4 x'11
             + P'.wireSizeOpt 1 11 x'12
             + P'.wireSizeOpt 1 4 x'13
             + P'.wireSizeOpt 1 5 x'14
             + P'.wireSizeOpt 1 11 x'15
             + P'.wireSizeOpt 2 13 x'16)
  wirePut ft' self'@(HdfsFileStatusProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16)
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
             P'.wirePutReq 18 12 x'2
             P'.wirePutReq 24 4 x'3
             P'.wirePutReq 34 11 x'4
             P'.wirePutReq 42 9 x'5
             P'.wirePutReq 50 9 x'6
             P'.wirePutReq 56 4 x'7
             P'.wirePutReq 64 4 x'8
             P'.wirePutOpt 74 12 x'9
             P'.wirePutOpt 80 13 x'10
             P'.wirePutOpt 88 4 x'11
             P'.wirePutOpt 98 11 x'12
             P'.wirePutOpt 104 4 x'13
             P'.wirePutOpt 112 5 x'14
             P'.wirePutOpt 122 11 x'15
             P'.wirePutOpt 128 13 x'16
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{fileType = new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{path = new'Field}) (P'.wireGet 12)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{length = new'Field}) (P'.wireGet 4)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{permission = P'.mergeAppend (permission old'Self) (new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{owner = new'Field}) (P'.wireGet 9)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{group = new'Field}) (P'.wireGet 9)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{modification_time = new'Field}) (P'.wireGet 4)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{access_time = new'Field}) (P'.wireGet 4)
             74 -> Prelude'.fmap (\ !new'Field -> old'Self{symlink = Prelude'.Just new'Field}) (P'.wireGet 12)
             80 -> Prelude'.fmap (\ !new'Field -> old'Self{block_replication = Prelude'.Just new'Field}) (P'.wireGet 13)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{blocksize = Prelude'.Just new'Field}) (P'.wireGet 4)
             98 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{locations = P'.mergeAppend (locations old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             104 -> Prelude'.fmap (\ !new'Field -> old'Self{fileId = Prelude'.Just new'Field}) (P'.wireGet 4)
             112 -> Prelude'.fmap (\ !new'Field -> old'Self{childrenNum = Prelude'.Just new'Field}) (P'.wireGet 5)
             122 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{fileEncryptionInfo = P'.mergeAppend (fileEncryptionInfo old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             128 -> Prelude'.fmap (\ !new'Field -> old'Self{storagePolicy = Prelude'.Just new'Field}) (P'.wireGet 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> HdfsFileStatusProto) HdfsFileStatusProto where
  getVal m' f' = f' m'
 
instance P'.GPB HdfsFileStatusProto
 
instance P'.ReflectDescriptor HdfsFileStatusProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [8, 18, 24, 34, 42, 50, 56, 64])
      (P'.fromDistinctAscList [8, 18, 24, 34, 42, 50, 56, 64, 74, 80, 88, 98, 104, 112, 122, 128])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.HdfsFileStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"HdfsFileStatusProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"HdfsFileStatusProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.HdfsFileStatusProto.fileType\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"HdfsFileStatusProto\"], baseName' = FName \"fileType\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.HdfsFileStatusProto.FileType\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\",MName \"HdfsFileStatusProto\"], baseName = MName \"FileType\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.HdfsFileStatusProto.path\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"HdfsFileStatusProto\"], baseName' = FName \"path\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.HdfsFileStatusProto.length\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"HdfsFileStatusProto\"], baseName' = FName \"length\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.HdfsFileStatusProto.permission\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"HdfsFileStatusProto\"], baseName' = FName \"permission\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.FsPermissionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"FsPermissionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.HdfsFileStatusProto.owner\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"HdfsFileStatusProto\"], baseName' = FName \"owner\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.HdfsFileStatusProto.group\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"HdfsFileStatusProto\"], baseName' = FName \"group\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.HdfsFileStatusProto.modification_time\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"HdfsFileStatusProto\"], baseName' = FName \"modification_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.HdfsFileStatusProto.access_time\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"HdfsFileStatusProto\"], baseName' = FName \"access_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.HdfsFileStatusProto.symlink\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"HdfsFileStatusProto\"], baseName' = FName \"symlink\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.HdfsFileStatusProto.block_replication\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"HdfsFileStatusProto\"], baseName' = FName \"block_replication\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 80}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.HdfsFileStatusProto.blocksize\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"HdfsFileStatusProto\"], baseName' = FName \"blocksize\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.HdfsFileStatusProto.locations\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"HdfsFileStatusProto\"], baseName' = FName \"locations\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 98}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.LocatedBlocksProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"LocatedBlocksProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.HdfsFileStatusProto.fileId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"HdfsFileStatusProto\"], baseName' = FName \"fileId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 104}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.HdfsFileStatusProto.childrenNum\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"HdfsFileStatusProto\"], baseName' = FName \"childrenNum\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 112}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Just \"-1\", hsDefault = Just (HsDef'Integer (-1))},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.HdfsFileStatusProto.fileEncryptionInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"HdfsFileStatusProto\"], baseName' = FName \"fileEncryptionInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 122}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.FileEncryptionInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"FileEncryptionInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.HdfsFileStatusProto.storagePolicy\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"HdfsFileStatusProto\"], baseName' = FName \"storagePolicy\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 128}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType HdfsFileStatusProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg HdfsFileStatusProto where
  textPut msg
   = do
       P'.tellT "fileType" (fileType msg)
       P'.tellT "path" (path msg)
       P'.tellT "length" (length msg)
       P'.tellT "permission" (permission msg)
       P'.tellT "owner" (owner msg)
       P'.tellT "group" (group msg)
       P'.tellT "modification_time" (modification_time msg)
       P'.tellT "access_time" (access_time msg)
       P'.tellT "symlink" (symlink msg)
       P'.tellT "block_replication" (block_replication msg)
       P'.tellT "blocksize" (blocksize msg)
       P'.tellT "locations" (locations msg)
       P'.tellT "fileId" (fileId msg)
       P'.tellT "childrenNum" (childrenNum msg)
       P'.tellT "fileEncryptionInfo" (fileEncryptionInfo msg)
       P'.tellT "storagePolicy" (storagePolicy msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'fileType, parse'path, parse'length, parse'permission, parse'owner, parse'group, parse'modification_time,
                   parse'access_time, parse'symlink, parse'block_replication, parse'blocksize, parse'locations, parse'fileId,
                   parse'childrenNum, parse'fileEncryptionInfo, parse'storagePolicy])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'fileType
         = P'.try
            (do
               v <- P'.getT "fileType"
               Prelude'.return (\ o -> o{fileType = v}))
        parse'path
         = P'.try
            (do
               v <- P'.getT "path"
               Prelude'.return (\ o -> o{path = v}))
        parse'length
         = P'.try
            (do
               v <- P'.getT "length"
               Prelude'.return (\ o -> o{length = v}))
        parse'permission
         = P'.try
            (do
               v <- P'.getT "permission"
               Prelude'.return (\ o -> o{permission = v}))
        parse'owner
         = P'.try
            (do
               v <- P'.getT "owner"
               Prelude'.return (\ o -> o{owner = v}))
        parse'group
         = P'.try
            (do
               v <- P'.getT "group"
               Prelude'.return (\ o -> o{group = v}))
        parse'modification_time
         = P'.try
            (do
               v <- P'.getT "modification_time"
               Prelude'.return (\ o -> o{modification_time = v}))
        parse'access_time
         = P'.try
            (do
               v <- P'.getT "access_time"
               Prelude'.return (\ o -> o{access_time = v}))
        parse'symlink
         = P'.try
            (do
               v <- P'.getT "symlink"
               Prelude'.return (\ o -> o{symlink = v}))
        parse'block_replication
         = P'.try
            (do
               v <- P'.getT "block_replication"
               Prelude'.return (\ o -> o{block_replication = v}))
        parse'blocksize
         = P'.try
            (do
               v <- P'.getT "blocksize"
               Prelude'.return (\ o -> o{blocksize = v}))
        parse'locations
         = P'.try
            (do
               v <- P'.getT "locations"
               Prelude'.return (\ o -> o{locations = v}))
        parse'fileId
         = P'.try
            (do
               v <- P'.getT "fileId"
               Prelude'.return (\ o -> o{fileId = v}))
        parse'childrenNum
         = P'.try
            (do
               v <- P'.getT "childrenNum"
               Prelude'.return (\ o -> o{childrenNum = v}))
        parse'fileEncryptionInfo
         = P'.try
            (do
               v <- P'.getT "fileEncryptionInfo"
               Prelude'.return (\ o -> o{fileEncryptionInfo = v}))
        parse'storagePolicy
         = P'.try
            (do
               v <- P'.getT "storagePolicy"
               Prelude'.return (\ o -> o{storagePolicy = v}))