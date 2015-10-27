{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.FsImageProto.INodeSection.INodeSymlink (INodeSymlink(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data INodeSymlink = INodeSymlink{permission :: !(P'.Maybe P'.Word64), target :: !(P'.Maybe P'.ByteString),
                                 modificationTime :: !(P'.Maybe P'.Word64), accessTime :: !(P'.Maybe P'.Word64)}
                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable INodeSymlink where
  mergeAppend (INodeSymlink x'1 x'2 x'3 x'4) (INodeSymlink y'1 y'2 y'3 y'4)
   = INodeSymlink (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default INodeSymlink where
  defaultValue = INodeSymlink P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire INodeSymlink where
  wireSize ft' self'@(INodeSymlink x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 6 x'1 + P'.wireSizeOpt 1 12 x'2 + P'.wireSizeOpt 1 4 x'3 + P'.wireSizeOpt 1 4 x'4)
  wirePut ft' self'@(INodeSymlink x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 9 6 x'1
             P'.wirePutOpt 18 12 x'2
             P'.wirePutOpt 24 4 x'3
             P'.wirePutOpt 32 4 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             9 -> Prelude'.fmap (\ !new'Field -> old'Self{permission = Prelude'.Just new'Field}) (P'.wireGet 6)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{target = Prelude'.Just new'Field}) (P'.wireGet 12)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{modificationTime = Prelude'.Just new'Field}) (P'.wireGet 4)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{accessTime = Prelude'.Just new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> INodeSymlink) INodeSymlink where
  getVal m' f' = f' m'
 
instance P'.GPB INodeSymlink
 
instance P'.ReflectDescriptor INodeSymlink where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [9, 18, 24, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeSymlink\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"INodeSection\"], baseName = MName \"INodeSymlink\"}, descFilePath = [\"Hadoop\",\"Protos\",\"FsImageProto\",\"INodeSection\",\"INodeSymlink.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeSymlink.permission\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeSymlink\"], baseName' = FName \"permission\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 9}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 6}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeSymlink.target\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeSymlink\"], baseName' = FName \"target\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeSymlink.modificationTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeSymlink\"], baseName' = FName \"modificationTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.INodeSymlink.accessTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"INodeSymlink\"], baseName' = FName \"accessTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType INodeSymlink where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg INodeSymlink where
  textPut msg
   = do
       P'.tellT "permission" (permission msg)
       P'.tellT "target" (target msg)
       P'.tellT "modificationTime" (modificationTime msg)
       P'.tellT "accessTime" (accessTime msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'permission, parse'target, parse'modificationTime, parse'accessTime]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'permission
         = P'.try
            (do
               v <- P'.getT "permission"
               Prelude'.return (\ o -> o{permission = v}))
        parse'target
         = P'.try
            (do
               v <- P'.getT "target"
               Prelude'.return (\ o -> o{target = v}))
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