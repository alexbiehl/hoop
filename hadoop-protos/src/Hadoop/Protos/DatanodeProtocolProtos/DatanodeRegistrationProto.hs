{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.DatanodeRegistrationProto (DatanodeRegistrationProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.DatanodeIDProto as HdfsProtos (DatanodeIDProto)
import qualified Hadoop.Protos.HdfsProtos.ExportedBlockKeysProto as HdfsProtos (ExportedBlockKeysProto)
import qualified Hadoop.Protos.HdfsProtos.StorageInfoProto as HdfsProtos (StorageInfoProto)
 
data DatanodeRegistrationProto = DatanodeRegistrationProto{datanodeID :: !(HdfsProtos.DatanodeIDProto),
                                                           storageInfo :: !(HdfsProtos.StorageInfoProto),
                                                           keys :: !(HdfsProtos.ExportedBlockKeysProto),
                                                           softwareVersion :: !(P'.Utf8)}
                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable DatanodeRegistrationProto where
  mergeAppend (DatanodeRegistrationProto x'1 x'2 x'3 x'4) (DatanodeRegistrationProto y'1 y'2 y'3 y'4)
   = DatanodeRegistrationProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default DatanodeRegistrationProto where
  defaultValue = DatanodeRegistrationProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire DatanodeRegistrationProto where
  wireSize ft' self'@(DatanodeRegistrationProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 11 x'2 + P'.wireSizeReq 1 11 x'3 + P'.wireSizeReq 1 9 x'4)
  wirePut ft' self'@(DatanodeRegistrationProto x'1 x'2 x'3 x'4)
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
             P'.wirePutReq 18 11 x'2
             P'.wirePutReq 26 11 x'3
             P'.wirePutReq 34 9 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{datanodeID = P'.mergeAppend (datanodeID old'Self) (new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{storageInfo = P'.mergeAppend (storageInfo old'Self) (new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{keys = P'.mergeAppend (keys old'Self) (new'Field)}) (P'.wireGet 11)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{softwareVersion = new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> DatanodeRegistrationProto) DatanodeRegistrationProto where
  getVal m' f' = f' m'
 
instance P'.GPB DatanodeRegistrationProto
 
instance P'.ReflectDescriptor DatanodeRegistrationProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18, 26, 34]) (P'.fromDistinctAscList [10, 18, 26, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.DatanodeRegistrationProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"DatanodeRegistrationProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DatanodeProtocolProtos\",\"DatanodeRegistrationProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.DatanodeRegistrationProto.datanodeID\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"DatanodeRegistrationProto\"], baseName' = FName \"datanodeID\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeIDProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeIDProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.DatanodeRegistrationProto.storageInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"DatanodeRegistrationProto\"], baseName' = FName \"storageInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.DatanodeRegistrationProto.keys\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"DatanodeRegistrationProto\"], baseName' = FName \"keys\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ExportedBlockKeysProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"ExportedBlockKeysProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.DatanodeRegistrationProto.softwareVersion\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"DatanodeRegistrationProto\"], baseName' = FName \"softwareVersion\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType DatanodeRegistrationProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg DatanodeRegistrationProto where
  textPut msg
   = do
       P'.tellT "datanodeID" (datanodeID msg)
       P'.tellT "storageInfo" (storageInfo msg)
       P'.tellT "keys" (keys msg)
       P'.tellT "softwareVersion" (softwareVersion msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'datanodeID, parse'storageInfo, parse'keys, parse'softwareVersion]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'datanodeID
         = P'.try
            (do
               v <- P'.getT "datanodeID"
               Prelude'.return (\ o -> o{datanodeID = v}))
        parse'storageInfo
         = P'.try
            (do
               v <- P'.getT "storageInfo"
               Prelude'.return (\ o -> o{storageInfo = v}))
        parse'keys
         = P'.try
            (do
               v <- P'.getT "keys"
               Prelude'.return (\ o -> o{keys = v}))
        parse'softwareVersion
         = P'.try
            (do
               v <- P'.getT "softwareVersion"
               Prelude'.return (\ o -> o{softwareVersion = v}))