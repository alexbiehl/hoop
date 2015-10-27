{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.InotifyProtos.MetadataUpdateEventProto (MetadataUpdateEventProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.AclProtos.AclEntryProto as AclProtos (AclEntryProto)
import qualified Hadoop.Protos.HdfsProtos.FsPermissionProto as HdfsProtos (FsPermissionProto)
import qualified Hadoop.Protos.InotifyProtos.MetadataUpdateType as InotifyProtos (MetadataUpdateType)
import qualified Hadoop.Protos.XAttrProtos.XAttrProto as XAttrProtos (XAttrProto)
 
data MetadataUpdateEventProto = MetadataUpdateEventProto{path :: !(P'.Utf8), type' :: !(InotifyProtos.MetadataUpdateType),
                                                         mtime :: !(P'.Maybe P'.Int64), atime :: !(P'.Maybe P'.Int64),
                                                         replication :: !(P'.Maybe P'.Int32), ownerName :: !(P'.Maybe P'.Utf8),
                                                         groupName :: !(P'.Maybe P'.Utf8),
                                                         perms :: !(P'.Maybe HdfsProtos.FsPermissionProto),
                                                         acls :: !(P'.Seq AclProtos.AclEntryProto),
                                                         xAttrs :: !(P'.Seq XAttrProtos.XAttrProto),
                                                         xAttrsRemoved :: !(P'.Maybe P'.Bool)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable MetadataUpdateEventProto where
  mergeAppend (MetadataUpdateEventProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11)
   (MetadataUpdateEventProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11)
   = MetadataUpdateEventProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)
 
instance P'.Default MetadataUpdateEventProto where
  defaultValue
   = MetadataUpdateEventProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire MetadataUpdateEventProto where
  wireSize ft' self'@(MetadataUpdateEventProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 14 x'2 + P'.wireSizeOpt 1 3 x'3 + P'.wireSizeOpt 1 3 x'4 +
             P'.wireSizeOpt 1 5 x'5
             + P'.wireSizeOpt 1 9 x'6
             + P'.wireSizeOpt 1 9 x'7
             + P'.wireSizeOpt 1 11 x'8
             + P'.wireSizeRep 1 11 x'9
             + P'.wireSizeRep 1 11 x'10
             + P'.wireSizeOpt 1 8 x'11)
  wirePut ft' self'@(MetadataUpdateEventProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11)
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
             P'.wirePutReq 16 14 x'2
             P'.wirePutOpt 24 3 x'3
             P'.wirePutOpt 32 3 x'4
             P'.wirePutOpt 40 5 x'5
             P'.wirePutOpt 50 9 x'6
             P'.wirePutOpt 58 9 x'7
             P'.wirePutOpt 66 11 x'8
             P'.wirePutRep 74 11 x'9
             P'.wirePutRep 82 11 x'10
             P'.wirePutOpt 88 8 x'11
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{path = new'Field}) (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{type' = new'Field}) (P'.wireGet 14)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{mtime = Prelude'.Just new'Field}) (P'.wireGet 3)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{atime = Prelude'.Just new'Field}) (P'.wireGet 3)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{replication = Prelude'.Just new'Field}) (P'.wireGet 5)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{ownerName = Prelude'.Just new'Field}) (P'.wireGet 9)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{groupName = Prelude'.Just new'Field}) (P'.wireGet 9)
             66 -> Prelude'.fmap (\ !new'Field -> old'Self{perms = P'.mergeAppend (perms old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             74 -> Prelude'.fmap (\ !new'Field -> old'Self{acls = P'.append (acls old'Self) new'Field}) (P'.wireGet 11)
             82 -> Prelude'.fmap (\ !new'Field -> old'Self{xAttrs = P'.append (xAttrs old'Self) new'Field}) (P'.wireGet 11)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{xAttrsRemoved = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> MetadataUpdateEventProto) MetadataUpdateEventProto where
  getVal m' f' = f' m'
 
instance P'.GPB MetadataUpdateEventProto
 
instance P'.ReflectDescriptor MetadataUpdateEventProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16]) (P'.fromDistinctAscList [10, 16, 24, 32, 40, 50, 58, 66, 74, 82, 88])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.MetadataUpdateEventProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InotifyProtos\"], baseName = MName \"MetadataUpdateEventProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"InotifyProtos\",\"MetadataUpdateEventProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.MetadataUpdateEventProto.path\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"MetadataUpdateEventProto\"], baseName' = FName \"path\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.MetadataUpdateEventProto.type\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"MetadataUpdateEventProto\"], baseName' = FName \"type'\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.MetadataUpdateType\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InotifyProtos\"], baseName = MName \"MetadataUpdateType\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.MetadataUpdateEventProto.mtime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"MetadataUpdateEventProto\"], baseName' = FName \"mtime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.MetadataUpdateEventProto.atime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"MetadataUpdateEventProto\"], baseName' = FName \"atime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.MetadataUpdateEventProto.replication\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"MetadataUpdateEventProto\"], baseName' = FName \"replication\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.MetadataUpdateEventProto.ownerName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"MetadataUpdateEventProto\"], baseName' = FName \"ownerName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.MetadataUpdateEventProto.groupName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"MetadataUpdateEventProto\"], baseName' = FName \"groupName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.MetadataUpdateEventProto.perms\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"MetadataUpdateEventProto\"], baseName' = FName \"perms\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.FsPermissionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"FsPermissionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.MetadataUpdateEventProto.acls\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"MetadataUpdateEventProto\"], baseName' = FName \"acls\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.AclEntryProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"AclProtos\"], baseName = MName \"AclEntryProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.MetadataUpdateEventProto.xAttrs\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"MetadataUpdateEventProto\"], baseName' = FName \"xAttrs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.XAttrProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"XAttrProtos\"], baseName = MName \"XAttrProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.MetadataUpdateEventProto.xAttrsRemoved\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"MetadataUpdateEventProto\"], baseName' = FName \"xAttrsRemoved\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType MetadataUpdateEventProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg MetadataUpdateEventProto where
  textPut msg
   = do
       P'.tellT "path" (path msg)
       P'.tellT "type" (type' msg)
       P'.tellT "mtime" (mtime msg)
       P'.tellT "atime" (atime msg)
       P'.tellT "replication" (replication msg)
       P'.tellT "ownerName" (ownerName msg)
       P'.tellT "groupName" (groupName msg)
       P'.tellT "perms" (perms msg)
       P'.tellT "acls" (acls msg)
       P'.tellT "xAttrs" (xAttrs msg)
       P'.tellT "xAttrsRemoved" (xAttrsRemoved msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'path, parse'type', parse'mtime, parse'atime, parse'replication, parse'ownerName, parse'groupName,
                   parse'perms, parse'acls, parse'xAttrs, parse'xAttrsRemoved])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'path
         = P'.try
            (do
               v <- P'.getT "path"
               Prelude'.return (\ o -> o{path = v}))
        parse'type'
         = P'.try
            (do
               v <- P'.getT "type"
               Prelude'.return (\ o -> o{type' = v}))
        parse'mtime
         = P'.try
            (do
               v <- P'.getT "mtime"
               Prelude'.return (\ o -> o{mtime = v}))
        parse'atime
         = P'.try
            (do
               v <- P'.getT "atime"
               Prelude'.return (\ o -> o{atime = v}))
        parse'replication
         = P'.try
            (do
               v <- P'.getT "replication"
               Prelude'.return (\ o -> o{replication = v}))
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
        parse'acls
         = P'.try
            (do
               v <- P'.getT "acls"
               Prelude'.return (\ o -> o{acls = P'.append (acls o) v}))
        parse'xAttrs
         = P'.try
            (do
               v <- P'.getT "xAttrs"
               Prelude'.return (\ o -> o{xAttrs = P'.append (xAttrs o) v}))
        parse'xAttrsRemoved
         = P'.try
            (do
               v <- P'.getT "xAttrsRemoved"
               Prelude'.return (\ o -> o{xAttrsRemoved = v}))