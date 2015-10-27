{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.OpReplaceBlockProto (OpReplaceBlockProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DataTransferProtos.BaseHeaderProto as DataTransferProtos (BaseHeaderProto)
import qualified Hadoop.Protos.HdfsProtos.DatanodeInfoProto as HdfsProtos (DatanodeInfoProto)
import qualified Hadoop.Protos.HdfsProtos.StorageTypeProto as HdfsProtos (StorageTypeProto)
 
data OpReplaceBlockProto = OpReplaceBlockProto{header :: !(DataTransferProtos.BaseHeaderProto), delHint :: !(P'.Utf8),
                                               source :: !(HdfsProtos.DatanodeInfoProto),
                                               storageType :: !(P'.Maybe HdfsProtos.StorageTypeProto)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable OpReplaceBlockProto where
  mergeAppend (OpReplaceBlockProto x'1 x'2 x'3 x'4) (OpReplaceBlockProto y'1 y'2 y'3 y'4)
   = OpReplaceBlockProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default OpReplaceBlockProto where
  defaultValue = OpReplaceBlockProto P'.defaultValue P'.defaultValue P'.defaultValue (Prelude'.Just (Prelude'.read "DISK"))
 
instance P'.Wire OpReplaceBlockProto where
  wireSize ft' self'@(OpReplaceBlockProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeReq 1 11 x'3 + P'.wireSizeOpt 1 14 x'4)
  wirePut ft' self'@(OpReplaceBlockProto x'1 x'2 x'3 x'4)
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
             P'.wirePutReq 18 9 x'2
             P'.wirePutReq 26 11 x'3
             P'.wirePutOpt 32 14 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{header = P'.mergeAppend (header old'Self) (new'Field)}) (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{delHint = new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{source = P'.mergeAppend (source old'Self) (new'Field)}) (P'.wireGet 11)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{storageType = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> OpReplaceBlockProto) OpReplaceBlockProto where
  getVal m' f' = f' m'
 
instance P'.GPB OpReplaceBlockProto
 
instance P'.ReflectDescriptor OpReplaceBlockProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18, 26]) (P'.fromDistinctAscList [10, 18, 26, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.OpReplaceBlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"OpReplaceBlockProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DataTransferProtos\",\"OpReplaceBlockProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpReplaceBlockProto.header\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpReplaceBlockProto\"], baseName' = FName \"header\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.BaseHeaderProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"BaseHeaderProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpReplaceBlockProto.delHint\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpReplaceBlockProto\"], baseName' = FName \"delHint\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpReplaceBlockProto.source\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpReplaceBlockProto\"], baseName' = FName \"source\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpReplaceBlockProto.storageType\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpReplaceBlockProto\"], baseName' = FName \"storageType\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageTypeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageTypeProto\"}), hsRawDefault = Just \"DISK\", hsDefault = Just (HsDef'Enum \"DISK\")}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType OpReplaceBlockProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg OpReplaceBlockProto where
  textPut msg
   = do
       P'.tellT "header" (header msg)
       P'.tellT "delHint" (delHint msg)
       P'.tellT "source" (source msg)
       P'.tellT "storageType" (storageType msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'header, parse'delHint, parse'source, parse'storageType]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'header
         = P'.try
            (do
               v <- P'.getT "header"
               Prelude'.return (\ o -> o{header = v}))
        parse'delHint
         = P'.try
            (do
               v <- P'.getT "delHint"
               Prelude'.return (\ o -> o{delHint = v}))
        parse'source
         = P'.try
            (do
               v <- P'.getT "source"
               Prelude'.return (\ o -> o{source = v}))
        parse'storageType
         = P'.try
            (do
               v <- P'.getT "storageType"
               Prelude'.return (\ o -> o{storageType = v}))