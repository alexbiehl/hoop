{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.NamespaceInfoProto (NamespaceInfoProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.StorageInfoProto as HdfsProtos (StorageInfoProto)
 
data NamespaceInfoProto = NamespaceInfoProto{buildVersion :: !(P'.Utf8), unused :: !(P'.Word32), blockPoolID :: !(P'.Utf8),
                                             storageInfo :: !(HdfsProtos.StorageInfoProto), softwareVersion :: !(P'.Utf8),
                                             capabilities :: !(P'.Maybe P'.Word64)}
                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable NamespaceInfoProto where
  mergeAppend (NamespaceInfoProto x'1 x'2 x'3 x'4 x'5 x'6) (NamespaceInfoProto y'1 y'2 y'3 y'4 y'5 y'6)
   = NamespaceInfoProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
 
instance P'.Default NamespaceInfoProto where
  defaultValue
   = NamespaceInfoProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue (Prelude'.Just 0)
 
instance P'.Wire NamespaceInfoProto where
  wireSize ft' self'@(NamespaceInfoProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 13 x'2 + P'.wireSizeReq 1 9 x'3 + P'.wireSizeReq 1 11 x'4 +
             P'.wireSizeReq 1 9 x'5
             + P'.wireSizeOpt 1 4 x'6)
  wirePut ft' self'@(NamespaceInfoProto x'1 x'2 x'3 x'4 x'5 x'6)
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
             P'.wirePutReq 16 13 x'2
             P'.wirePutReq 26 9 x'3
             P'.wirePutReq 34 11 x'4
             P'.wirePutReq 42 9 x'5
             P'.wirePutOpt 48 4 x'6
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{buildVersion = new'Field}) (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{unused = new'Field}) (P'.wireGet 13)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{blockPoolID = new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{storageInfo = P'.mergeAppend (storageInfo old'Self) (new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{softwareVersion = new'Field}) (P'.wireGet 9)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{capabilities = Prelude'.Just new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> NamespaceInfoProto) NamespaceInfoProto where
  getVal m' f' = f' m'
 
instance P'.GPB NamespaceInfoProto
 
instance P'.ReflectDescriptor NamespaceInfoProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16, 26, 34, 42]) (P'.fromDistinctAscList [10, 16, 26, 34, 42, 48])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.NamespaceInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"NamespaceInfoProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"NamespaceInfoProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.NamespaceInfoProto.buildVersion\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"NamespaceInfoProto\"], baseName' = FName \"buildVersion\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.NamespaceInfoProto.unused\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"NamespaceInfoProto\"], baseName' = FName \"unused\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.NamespaceInfoProto.blockPoolID\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"NamespaceInfoProto\"], baseName' = FName \"blockPoolID\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.NamespaceInfoProto.storageInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"NamespaceInfoProto\"], baseName' = FName \"storageInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.NamespaceInfoProto.softwareVersion\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"NamespaceInfoProto\"], baseName' = FName \"softwareVersion\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.NamespaceInfoProto.capabilities\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"NamespaceInfoProto\"], baseName' = FName \"capabilities\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType NamespaceInfoProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg NamespaceInfoProto where
  textPut msg
   = do
       P'.tellT "buildVersion" (buildVersion msg)
       P'.tellT "unused" (unused msg)
       P'.tellT "blockPoolID" (blockPoolID msg)
       P'.tellT "storageInfo" (storageInfo msg)
       P'.tellT "softwareVersion" (softwareVersion msg)
       P'.tellT "capabilities" (capabilities msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'buildVersion, parse'unused, parse'blockPoolID, parse'storageInfo, parse'softwareVersion,
                   parse'capabilities])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'buildVersion
         = P'.try
            (do
               v <- P'.getT "buildVersion"
               Prelude'.return (\ o -> o{buildVersion = v}))
        parse'unused
         = P'.try
            (do
               v <- P'.getT "unused"
               Prelude'.return (\ o -> o{unused = v}))
        parse'blockPoolID
         = P'.try
            (do
               v <- P'.getT "blockPoolID"
               Prelude'.return (\ o -> o{blockPoolID = v}))
        parse'storageInfo
         = P'.try
            (do
               v <- P'.getT "storageInfo"
               Prelude'.return (\ o -> o{storageInfo = v}))
        parse'softwareVersion
         = P'.try
            (do
               v <- P'.getT "softwareVersion"
               Prelude'.return (\ o -> o{softwareVersion = v}))
        parse'capabilities
         = P'.try
            (do
               v <- P'.getT "capabilities"
               Prelude'.return (\ o -> o{capabilities = v}))