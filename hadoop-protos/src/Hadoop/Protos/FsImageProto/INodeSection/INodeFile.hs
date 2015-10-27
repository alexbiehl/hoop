{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.FsImageProto.INodeSection.INodeFile (INodeFile(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.FsImageProto.INodeSection.AclFeatureProto as FsImageProto.INodeSection (AclFeatureProto)
import qualified Hadoop.Protos.FsImageProto.INodeSection.FileUnderConstructionFeature as FsImageProto.INodeSection
       (FileUnderConstructionFeature)
import qualified Hadoop.Protos.FsImageProto.INodeSection.XAttrFeatureProto as FsImageProto.INodeSection (XAttrFeatureProto)
import qualified Hadoop.Protos.HdfsProtos.BlockProto as HdfsProtos (BlockProto)
 
data INodeFile = INodeFile{replication :: !(P'.Maybe P'.Word32), modificationTime :: !(P'.Maybe P'.Word64),
                           accessTime :: !(P'.Maybe P'.Word64), preferredBlockSize :: !(P'.Maybe P'.Word64),
                           permission :: !(P'.Maybe P'.Word64), blocks :: !(P'.Seq HdfsProtos.BlockProto),
                           fileUC :: !(P'.Maybe FsImageProto.INodeSection.FileUnderConstructionFeature),
                           acl :: !(P'.Maybe FsImageProto.INodeSection.AclFeatureProto),
                           xAttrs :: !(P'.Maybe FsImageProto.INodeSection.XAttrFeatureProto),
                           storagePolicyID :: !(P'.Maybe P'.Word32)}
               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable INodeFile where
  mergeAppend (INodeFile x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10) (INodeFile y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10)
   = INodeFile (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
 
instance P'.Default INodeFile where
  defaultValue
   = INodeFile P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire INodeFile where
  wireSize ft' self'@(INodeFile x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 13 x'1 + P'.wireSizeOpt 1 4 x'2 + P'.wireSizeOpt 1 4 x'3 + P'.wireSizeOpt 1 4 x'4 +
             P'.wireSizeOpt 1 6 x'5
             + P'.wireSizeRep 1 11 x'6
             + P'.wireSizeOpt 1 11 x'7
             + P'.wireSizeOpt 1 11 x'8
             + P'.wireSizeOpt 1 11 x'9
             + P'.wireSizeOpt 1 13 x'10)
  wirePut ft' self'@(INodeFile x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10)
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
             P'.wirePutOpt 16 4 x'2
             P'.wirePutOpt 24 4 x'3
             P'.wirePutOpt 32 4 x'4
             P'.wirePutOpt 41 6 x'5
             P'.wirePutRep 50 11 x'6
             P'.wirePutOpt 58 11 x'7
             P'.wirePutOpt 66 11 x'8
             P'.wirePutOpt 74 11 x'9
             P'.wirePutOpt 80 13 x'10
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{replication = Prelude'.Just new'Field}) (P'.wireGet 13)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{modificationTime = Prelude'.Just new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{accessTime = Prelude'.Just new'Field}) (P'.wireGet 4)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{preferredBlockSize = Prelude'.Just new'Field}) (P'.wireGet 4)
             41 -> Prelude'.fmap (\ !new'Field -> old'Self{permission = Prelude'.Just new'Field}) (P'.wireGet 6)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{blocks = P'.append (blocks old'Self) new'Field}) (P'.wireGet 11)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{fileUC = P'.mergeAppend (fileUC old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             66 -> Prelude'.fmap (\ !new'Field -> old'Self{acl = P'.mergeAppend (acl old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             74 -> Prelude'.fmap (\ !new'Field -> old'Self{xAttrs = P'.mergeAppend (xAttrs old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             80 -> Prelude'.fmap (\ !new'Field -> old'Self{storagePolicyID = Prelude'.Just new'Field}) (P'.wireGet 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> INodeFile) INodeFile where
  getVal m' f' = f' m'
 
instance P'.GPB INodeFile
 
instance P'.ReflectDescriptor INodeFile where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 24, 32, 41, 50, 58, 66, 74, 80])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeFile\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"INodeSection\"], baseName = MName \"INodeFile\"}, descFilePath = [\"Hadoop\",\"Protos\",\"FsImageProto\",\"INodeSection\",\"INodeFile.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeFile.replication\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeFile\"], baseName' = FName \"replication\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeFile.modificationTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeFile\"], baseName' = FName \"modificationTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeFile.accessTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeFile\"], baseName' = FName \"accessTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeFile.preferredBlockSize\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeFile\"], baseName' = FName \"preferredBlockSize\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeFile.permission\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeFile\"], baseName' = FName \"permission\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 41}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 6}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeFile.blocks\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeFile\"], baseName' = FName \"blocks\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.BlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"BlockProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeFile.fileUC\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeFile\"], baseName' = FName \"fileUC\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.INodeSection.FileUnderConstructionFeature\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"INodeSection\"], baseName = MName \"FileUnderConstructionFeature\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeFile.acl\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeFile\"], baseName' = FName \"acl\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.INodeSection.AclFeatureProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"INodeSection\"], baseName = MName \"AclFeatureProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeFile.xAttrs\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeFile\"], baseName' = FName \"xAttrs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.INodeSection.XAttrFeatureProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"INodeSection\"], baseName = MName \"XAttrFeatureProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeFile.storagePolicyID\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeFile\"], baseName' = FName \"storagePolicyID\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 80}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType INodeFile where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg INodeFile where
  textPut msg
   = do
       P'.tellT "replication" (replication msg)
       P'.tellT "modificationTime" (modificationTime msg)
       P'.tellT "accessTime" (accessTime msg)
       P'.tellT "preferredBlockSize" (preferredBlockSize msg)
       P'.tellT "permission" (permission msg)
       P'.tellT "blocks" (blocks msg)
       P'.tellT "fileUC" (fileUC msg)
       P'.tellT "acl" (acl msg)
       P'.tellT "xAttrs" (xAttrs msg)
       P'.tellT "storagePolicyID" (storagePolicyID msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'replication, parse'modificationTime, parse'accessTime, parse'preferredBlockSize, parse'permission,
                   parse'blocks, parse'fileUC, parse'acl, parse'xAttrs, parse'storagePolicyID])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'replication
         = P'.try
            (do
               v <- P'.getT "replication"
               Prelude'.return (\ o -> o{replication = v}))
        parse'modificationTime
         = P'.try
            (do
               v <- P'.getT "modificationTime"
               Prelude'.return (\ o -> o{modificationTime = v}))
        parse'accessTime
         = P'.try
            (do
               v <- P'.getT "accessTime"
               Prelude'.return (\ o -> o{accessTime = v}))
        parse'preferredBlockSize
         = P'.try
            (do
               v <- P'.getT "preferredBlockSize"
               Prelude'.return (\ o -> o{preferredBlockSize = v}))
        parse'permission
         = P'.try
            (do
               v <- P'.getT "permission"
               Prelude'.return (\ o -> o{permission = v}))
        parse'blocks
         = P'.try
            (do
               v <- P'.getT "blocks"
               Prelude'.return (\ o -> o{blocks = P'.append (blocks o) v}))
        parse'fileUC
         = P'.try
            (do
               v <- P'.getT "fileUC"
               Prelude'.return (\ o -> o{fileUC = v}))
        parse'acl
         = P'.try
            (do
               v <- P'.getT "acl"
               Prelude'.return (\ o -> o{acl = v}))
        parse'xAttrs
         = P'.try
            (do
               v <- P'.getT "xAttrs"
               Prelude'.return (\ o -> o{xAttrs = v}))
        parse'storagePolicyID
         = P'.try
            (do
               v <- P'.getT "storagePolicyID"
               Prelude'.return (\ o -> o{storagePolicyID = v}))