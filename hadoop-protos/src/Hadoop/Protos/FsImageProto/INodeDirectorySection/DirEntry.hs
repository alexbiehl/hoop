{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.FsImageProto.INodeDirectorySection.DirEntry (DirEntry(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data DirEntry = DirEntry{parent :: !(P'.Maybe P'.Word64), children :: !(P'.Seq P'.Word64), refChildren :: !(P'.Seq P'.Word32)}
              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable DirEntry where
  mergeAppend (DirEntry x'1 x'2 x'3) (DirEntry y'1 y'2 y'3)
   = DirEntry (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default DirEntry where
  defaultValue = DirEntry P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire DirEntry where
  wireSize ft' self'@(DirEntry x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 4 x'1 + P'.wireSizePacked 1 4 x'2 + P'.wireSizePacked 1 13 x'3)
  wirePut ft' self'@(DirEntry x'1 x'2 x'3)
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
             P'.wirePutPacked 18 4 x'2
             P'.wirePutPacked 26 13 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{parent = Prelude'.Just new'Field}) (P'.wireGet 4)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{children = P'.append (children old'Self) new'Field}) (P'.wireGet 4)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{children = P'.mergeAppend (children old'Self) new'Field})
                    (P'.wireGetPacked 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{refChildren = P'.append (refChildren old'Self) new'Field})
                    (P'.wireGet 13)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{refChildren = P'.mergeAppend (refChildren old'Self) new'Field})
                    (P'.wireGetPacked 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> DirEntry) DirEntry where
  getVal m' f' = f' m'
 
instance P'.GPB DirEntry
 
instance P'.ReflectDescriptor DirEntry where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 18, 24, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.INodeDirectorySection.DirEntry\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"INodeDirectorySection\"], baseName = MName \"DirEntry\"}, descFilePath = [\"Hadoop\",\"Protos\",\"FsImageProto\",\"INodeDirectorySection\",\"DirEntry.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeDirectorySection.DirEntry.parent\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeDirectorySection\",MName \"DirEntry\"], baseName' = FName \"parent\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeDirectorySection.DirEntry.children\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeDirectorySection\",MName \"DirEntry\"], baseName' = FName \"children\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Just (WireTag {getWireTag = 16},WireTag {getWireTag = 18}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeDirectorySection.DirEntry.refChildren\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeDirectorySection\",MName \"DirEntry\"], baseName' = FName \"refChildren\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Just (WireTag {getWireTag = 24},WireTag {getWireTag = 26}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType DirEntry where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg DirEntry where
  textPut msg
   = do
       P'.tellT "parent" (parent msg)
       P'.tellT "children" (children msg)
       P'.tellT "refChildren" (refChildren msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'parent, parse'children, parse'refChildren]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'parent
         = P'.try
            (do
               v <- P'.getT "parent"
               Prelude'.return (\ o -> o{parent = v}))
        parse'children
         = P'.try
            (do
               v <- P'.getT "children"
               Prelude'.return (\ o -> o{children = P'.append (children o) v}))
        parse'refChildren
         = P'.try
            (do
               v <- P'.getT "refChildren"
               Prelude'.return (\ o -> o{refChildren = P'.append (refChildren o) v}))