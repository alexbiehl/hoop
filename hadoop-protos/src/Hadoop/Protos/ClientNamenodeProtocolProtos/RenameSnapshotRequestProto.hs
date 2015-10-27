{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.RenameSnapshotRequestProto (RenameSnapshotRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RenameSnapshotRequestProto = RenameSnapshotRequestProto{snapshotRoot :: !(P'.Utf8), snapshotOldName :: !(P'.Utf8),
                                                             snapshotNewName :: !(P'.Utf8)}
                                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RenameSnapshotRequestProto where
  mergeAppend (RenameSnapshotRequestProto x'1 x'2 x'3) (RenameSnapshotRequestProto y'1 y'2 y'3)
   = RenameSnapshotRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default RenameSnapshotRequestProto where
  defaultValue = RenameSnapshotRequestProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire RenameSnapshotRequestProto where
  wireSize ft' self'@(RenameSnapshotRequestProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeReq 1 9 x'3)
  wirePut ft' self'@(RenameSnapshotRequestProto x'1 x'2 x'3)
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
             P'.wirePutReq 18 9 x'2
             P'.wirePutReq 26 9 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{snapshotRoot = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{snapshotOldName = new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{snapshotNewName = new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RenameSnapshotRequestProto) RenameSnapshotRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB RenameSnapshotRequestProto
 
instance P'.ReflectDescriptor RenameSnapshotRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18, 26]) (P'.fromDistinctAscList [10, 18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.RenameSnapshotRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"RenameSnapshotRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"RenameSnapshotRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.RenameSnapshotRequestProto.snapshotRoot\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"RenameSnapshotRequestProto\"], baseName' = FName \"snapshotRoot\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.RenameSnapshotRequestProto.snapshotOldName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"RenameSnapshotRequestProto\"], baseName' = FName \"snapshotOldName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.RenameSnapshotRequestProto.snapshotNewName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"RenameSnapshotRequestProto\"], baseName' = FName \"snapshotNewName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RenameSnapshotRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RenameSnapshotRequestProto where
  textPut msg
   = do
       P'.tellT "snapshotRoot" (snapshotRoot msg)
       P'.tellT "snapshotOldName" (snapshotOldName msg)
       P'.tellT "snapshotNewName" (snapshotNewName msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'snapshotRoot, parse'snapshotOldName, parse'snapshotNewName]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'snapshotRoot
         = P'.try
            (do
               v <- P'.getT "snapshotRoot"
               Prelude'.return (\ o -> o{snapshotRoot = v}))
        parse'snapshotOldName
         = P'.try
            (do
               v <- P'.getT "snapshotOldName"
               Prelude'.return (\ o -> o{snapshotOldName = v}))
        parse'snapshotNewName
         = P'.try
            (do
               v <- P'.getT "snapshotNewName"
               Prelude'.return (\ o -> o{snapshotNewName = v}))