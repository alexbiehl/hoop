{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.FsImageProto.SnapshotDiffSection.DirectoryDiff (DirectoryDiff(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.FsImageProto.INodeSection.INodeDirectory as FsImageProto.INodeSection (INodeDirectory)
 
data DirectoryDiff = DirectoryDiff{snapshotId :: !(P'.Maybe P'.Word32), childrenSize :: !(P'.Maybe P'.Word32),
                                   isSnapshotRoot :: !(P'.Maybe P'.Bool), name :: !(P'.Maybe P'.ByteString),
                                   snapshotCopy :: !(P'.Maybe FsImageProto.INodeSection.INodeDirectory),
                                   createdListSize :: !(P'.Maybe P'.Word32), deletedINode :: !(P'.Seq P'.Word64),
                                   deletedINodeRef :: !(P'.Seq P'.Word32)}
                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable DirectoryDiff where
  mergeAppend (DirectoryDiff x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8) (DirectoryDiff y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8)
   = DirectoryDiff (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
 
instance P'.Default DirectoryDiff where
  defaultValue
   = DirectoryDiff P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
 
instance P'.Wire DirectoryDiff where
  wireSize ft' self'@(DirectoryDiff x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 13 x'1 + P'.wireSizeOpt 1 13 x'2 + P'.wireSizeOpt 1 8 x'3 + P'.wireSizeOpt 1 12 x'4 +
             P'.wireSizeOpt 1 11 x'5
             + P'.wireSizeOpt 1 13 x'6
             + P'.wireSizePacked 1 4 x'7
             + P'.wireSizePacked 1 13 x'8)
  wirePut ft' self'@(DirectoryDiff x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
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
             P'.wirePutOpt 16 13 x'2
             P'.wirePutOpt 24 8 x'3
             P'.wirePutOpt 34 12 x'4
             P'.wirePutOpt 42 11 x'5
             P'.wirePutOpt 48 13 x'6
             P'.wirePutPacked 58 4 x'7
             P'.wirePutPacked 66 13 x'8
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{snapshotId = Prelude'.Just new'Field}) (P'.wireGet 13)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{childrenSize = Prelude'.Just new'Field}) (P'.wireGet 13)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{isSnapshotRoot = Prelude'.Just new'Field}) (P'.wireGet 8)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{name = Prelude'.Just new'Field}) (P'.wireGet 12)
             42 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{snapshotCopy = P'.mergeAppend (snapshotCopy old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{createdListSize = Prelude'.Just new'Field}) (P'.wireGet 13)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{deletedINode = P'.append (deletedINode old'Self) new'Field})
                    (P'.wireGet 4)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{deletedINode = P'.mergeAppend (deletedINode old'Self) new'Field})
                    (P'.wireGetPacked 4)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{deletedINodeRef = P'.append (deletedINodeRef old'Self) new'Field})
                    (P'.wireGet 13)
             66 -> Prelude'.fmap (\ !new'Field -> old'Self{deletedINodeRef = P'.mergeAppend (deletedINodeRef old'Self) new'Field})
                    (P'.wireGetPacked 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> DirectoryDiff) DirectoryDiff where
  getVal m' f' = f' m'
 
instance P'.GPB DirectoryDiff
 
instance P'.ReflectDescriptor DirectoryDiff where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 24, 34, 42, 48, 56, 58, 64, 66])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.SnapshotDiffSection.DirectoryDiff\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"SnapshotDiffSection\"], baseName = MName \"DirectoryDiff\"}, descFilePath = [\"Hadoop\",\"Protos\",\"FsImageProto\",\"SnapshotDiffSection\",\"DirectoryDiff.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SnapshotDiffSection.DirectoryDiff.snapshotId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SnapshotDiffSection\",MName \"DirectoryDiff\"], baseName' = FName \"snapshotId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SnapshotDiffSection.DirectoryDiff.childrenSize\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SnapshotDiffSection\",MName \"DirectoryDiff\"], baseName' = FName \"childrenSize\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SnapshotDiffSection.DirectoryDiff.isSnapshotRoot\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SnapshotDiffSection\",MName \"DirectoryDiff\"], baseName' = FName \"isSnapshotRoot\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SnapshotDiffSection.DirectoryDiff.name\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SnapshotDiffSection\",MName \"DirectoryDiff\"], baseName' = FName \"name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SnapshotDiffSection.DirectoryDiff.snapshotCopy\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SnapshotDiffSection\",MName \"DirectoryDiff\"], baseName' = FName \"snapshotCopy\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeDirectory\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"INodeSection\"], baseName = MName \"INodeDirectory\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SnapshotDiffSection.DirectoryDiff.createdListSize\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SnapshotDiffSection\",MName \"DirectoryDiff\"], baseName' = FName \"createdListSize\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SnapshotDiffSection.DirectoryDiff.deletedINode\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SnapshotDiffSection\",MName \"DirectoryDiff\"], baseName' = FName \"deletedINode\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Just (WireTag {getWireTag = 56},WireTag {getWireTag = 58}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SnapshotDiffSection.DirectoryDiff.deletedINodeRef\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SnapshotDiffSection\",MName \"DirectoryDiff\"], baseName' = FName \"deletedINodeRef\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Just (WireTag {getWireTag = 64},WireTag {getWireTag = 66}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType DirectoryDiff where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg DirectoryDiff where
  textPut msg
   = do
       P'.tellT "snapshotId" (snapshotId msg)
       P'.tellT "childrenSize" (childrenSize msg)
       P'.tellT "isSnapshotRoot" (isSnapshotRoot msg)
       P'.tellT "name" (name msg)
       P'.tellT "snapshotCopy" (snapshotCopy msg)
       P'.tellT "createdListSize" (createdListSize msg)
       P'.tellT "deletedINode" (deletedINode msg)
       P'.tellT "deletedINodeRef" (deletedINodeRef msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'snapshotId, parse'childrenSize, parse'isSnapshotRoot, parse'name, parse'snapshotCopy,
                   parse'createdListSize, parse'deletedINode, parse'deletedINodeRef])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'snapshotId
         = P'.try
            (do
               v <- P'.getT "snapshotId"
               Prelude'.return (\ o -> o{snapshotId = v}))
        parse'childrenSize
         = P'.try
            (do
               v <- P'.getT "childrenSize"
               Prelude'.return (\ o -> o{childrenSize = v}))
        parse'isSnapshotRoot
         = P'.try
            (do
               v <- P'.getT "isSnapshotRoot"
               Prelude'.return (\ o -> o{isSnapshotRoot = v}))
        parse'name
         = P'.try
            (do
               v <- P'.getT "name"
               Prelude'.return (\ o -> o{name = v}))
        parse'snapshotCopy
         = P'.try
            (do
               v <- P'.getT "snapshotCopy"
               Prelude'.return (\ o -> o{snapshotCopy = v}))
        parse'createdListSize
         = P'.try
            (do
               v <- P'.getT "createdListSize"
               Prelude'.return (\ o -> o{createdListSize = v}))
        parse'deletedINode
         = P'.try
            (do
               v <- P'.getT "deletedINode"
               Prelude'.return (\ o -> o{deletedINode = P'.append (deletedINode o) v}))
        parse'deletedINodeRef
         = P'.try
            (do
               v <- P'.getT "deletedINodeRef"
               Prelude'.return (\ o -> o{deletedINodeRef = P'.append (deletedINodeRef o) v}))