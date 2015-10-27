{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.OpTransferBlockProto (OpTransferBlockProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DataTransferProtos.ClientOperationHeaderProto as DataTransferProtos (ClientOperationHeaderProto)
import qualified Hadoop.Protos.HdfsProtos.DatanodeInfoProto as HdfsProtos (DatanodeInfoProto)
import qualified Hadoop.Protos.HdfsProtos.StorageTypeProto as HdfsProtos (StorageTypeProto)
 
data OpTransferBlockProto = OpTransferBlockProto{header :: !(DataTransferProtos.ClientOperationHeaderProto),
                                                 targets :: !(P'.Seq HdfsProtos.DatanodeInfoProto),
                                                 targetStorageTypes :: !(P'.Seq HdfsProtos.StorageTypeProto)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable OpTransferBlockProto where
  mergeAppend (OpTransferBlockProto x'1 x'2 x'3) (OpTransferBlockProto y'1 y'2 y'3)
   = OpTransferBlockProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default OpTransferBlockProto where
  defaultValue = OpTransferBlockProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire OpTransferBlockProto where
  wireSize ft' self'@(OpTransferBlockProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeRep 1 11 x'2 + P'.wireSizeRep 1 14 x'3)
  wirePut ft' self'@(OpTransferBlockProto x'1 x'2 x'3)
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
             P'.wirePutRep 18 11 x'2
             P'.wirePutRep 24 14 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{header = P'.mergeAppend (header old'Self) (new'Field)}) (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{targets = P'.append (targets old'Self) new'Field}) (P'.wireGet 11)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{targetStorageTypes = P'.append (targetStorageTypes old'Self) new'Field})
                    (P'.wireGet 14)
             26 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{targetStorageTypes = P'.mergeAppend (targetStorageTypes old'Self) new'Field})
                    (P'.wireGetPacked 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> OpTransferBlockProto) OpTransferBlockProto where
  getVal m' f' = f' m'
 
instance P'.GPB OpTransferBlockProto
 
instance P'.ReflectDescriptor OpTransferBlockProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10, 18, 24, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.OpTransferBlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"OpTransferBlockProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DataTransferProtos\",\"OpTransferBlockProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpTransferBlockProto.header\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpTransferBlockProto\"], baseName' = FName \"header\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ClientOperationHeaderProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"ClientOperationHeaderProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpTransferBlockProto.targets\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpTransferBlockProto\"], baseName' = FName \"targets\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpTransferBlockProto.targetStorageTypes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpTransferBlockProto\"], baseName' = FName \"targetStorageTypes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Just (WireTag {getWireTag = 24},WireTag {getWireTag = 26}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageTypeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageTypeProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType OpTransferBlockProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg OpTransferBlockProto where
  textPut msg
   = do
       P'.tellT "header" (header msg)
       P'.tellT "targets" (targets msg)
       P'.tellT "targetStorageTypes" (targetStorageTypes msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'header, parse'targets, parse'targetStorageTypes]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'header
         = P'.try
            (do
               v <- P'.getT "header"
               Prelude'.return (\ o -> o{header = v}))
        parse'targets
         = P'.try
            (do
               v <- P'.getT "targets"
               Prelude'.return (\ o -> o{targets = P'.append (targets o) v}))
        parse'targetStorageTypes
         = P'.try
            (do
               v <- P'.getT "targetStorageTypes"
               Prelude'.return (\ o -> o{targetStorageTypes = P'.append (targetStorageTypes o) v}))