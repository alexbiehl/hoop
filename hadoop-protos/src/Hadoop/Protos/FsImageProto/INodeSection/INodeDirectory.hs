{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.FsImageProto.INodeSection.INodeDirectory (INodeDirectory(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.FsImageProto.INodeSection.AclFeatureProto as FsImageProto.INodeSection (AclFeatureProto)
import qualified Hadoop.Protos.FsImageProto.INodeSection.QuotaByStorageTypeFeatureProto as FsImageProto.INodeSection
       (QuotaByStorageTypeFeatureProto)
import qualified Hadoop.Protos.FsImageProto.INodeSection.XAttrFeatureProto as FsImageProto.INodeSection (XAttrFeatureProto)
 
data INodeDirectory = INodeDirectory{modificationTime :: !(P'.Maybe P'.Word64), nsQuota :: !(P'.Maybe P'.Word64),
                                     dsQuota :: !(P'.Maybe P'.Word64), permission :: !(P'.Maybe P'.Word64),
                                     acl :: !(P'.Maybe FsImageProto.INodeSection.AclFeatureProto),
                                     xAttrs :: !(P'.Maybe FsImageProto.INodeSection.XAttrFeatureProto),
                                     typeQuotas :: !(P'.Maybe FsImageProto.INodeSection.QuotaByStorageTypeFeatureProto)}
                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable INodeDirectory where
  mergeAppend (INodeDirectory x'1 x'2 x'3 x'4 x'5 x'6 x'7) (INodeDirectory y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = INodeDirectory (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
 
instance P'.Default INodeDirectory where
  defaultValue
   = INodeDirectory P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire INodeDirectory where
  wireSize ft' self'@(INodeDirectory x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 4 x'1 + P'.wireSizeOpt 1 4 x'2 + P'.wireSizeOpt 1 4 x'3 + P'.wireSizeOpt 1 6 x'4 +
             P'.wireSizeOpt 1 11 x'5
             + P'.wireSizeOpt 1 11 x'6
             + P'.wireSizeOpt 1 11 x'7)
  wirePut ft' self'@(INodeDirectory x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 4 x'1
             P'.wirePutOpt 16 4 x'2
             P'.wirePutOpt 24 4 x'3
             P'.wirePutOpt 33 6 x'4
             P'.wirePutOpt 42 11 x'5
             P'.wirePutOpt 50 11 x'6
             P'.wirePutOpt 58 11 x'7
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{modificationTime = Prelude'.Just new'Field}) (P'.wireGet 4)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{nsQuota = Prelude'.Just new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{dsQuota = Prelude'.Just new'Field}) (P'.wireGet 4)
             33 -> Prelude'.fmap (\ !new'Field -> old'Self{permission = Prelude'.Just new'Field}) (P'.wireGet 6)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{acl = P'.mergeAppend (acl old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{xAttrs = P'.mergeAppend (xAttrs old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             58 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{typeQuotas = P'.mergeAppend (typeQuotas old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> INodeDirectory) INodeDirectory where
  getVal m' f' = f' m'
 
instance P'.GPB INodeDirectory
 
instance P'.ReflectDescriptor INodeDirectory where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 24, 33, 42, 50, 58])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeDirectory\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"INodeSection\"], baseName = MName \"INodeDirectory\"}, descFilePath = [\"Hadoop\",\"Protos\",\"FsImageProto\",\"INodeSection\",\"INodeDirectory.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeDirectory.modificationTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeDirectory\"], baseName' = FName \"modificationTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeDirectory.nsQuota\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeDirectory\"], baseName' = FName \"nsQuota\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeDirectory.dsQuota\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeDirectory\"], baseName' = FName \"dsQuota\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeDirectory.permission\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeDirectory\"], baseName' = FName \"permission\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 33}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 6}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeDirectory.acl\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeDirectory\"], baseName' = FName \"acl\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.INodeSection.AclFeatureProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"INodeSection\"], baseName = MName \"AclFeatureProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeDirectory.xAttrs\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeDirectory\"], baseName' = FName \"xAttrs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.INodeSection.XAttrFeatureProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"INodeSection\"], baseName = MName \"XAttrFeatureProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeDirectory.typeQuotas\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeDirectory\"], baseName' = FName \"typeQuotas\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.INodeSection.QuotaByStorageTypeFeatureProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"INodeSection\"], baseName = MName \"QuotaByStorageTypeFeatureProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType INodeDirectory where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg INodeDirectory where
  textPut msg
   = do
       P'.tellT "modificationTime" (modificationTime msg)
       P'.tellT "nsQuota" (nsQuota msg)
       P'.tellT "dsQuota" (dsQuota msg)
       P'.tellT "permission" (permission msg)
       P'.tellT "acl" (acl msg)
       P'.tellT "xAttrs" (xAttrs msg)
       P'.tellT "typeQuotas" (typeQuotas msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'modificationTime, parse'nsQuota, parse'dsQuota, parse'permission, parse'acl, parse'xAttrs,
                   parse'typeQuotas])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'modificationTime
         = P'.try
            (do
               v <- P'.getT "modificationTime"
               Prelude'.return (\ o -> o{modificationTime = v}))
        parse'nsQuota
         = P'.try
            (do
               v <- P'.getT "nsQuota"
               Prelude'.return (\ o -> o{nsQuota = v}))
        parse'dsQuota
         = P'.try
            (do
               v <- P'.getT "dsQuota"
               Prelude'.return (\ o -> o{dsQuota = v}))
        parse'permission
         = P'.try
            (do
               v <- P'.getT "permission"
               Prelude'.return (\ o -> o{permission = v}))
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
        parse'typeQuotas
         = P'.try
            (do
               v <- P'.getT "typeQuotas"
               Prelude'.return (\ o -> o{typeQuotas = v}))