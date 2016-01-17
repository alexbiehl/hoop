{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.GetAdditionalDatanodeRequestProto (GetAdditionalDatanodeRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.DatanodeInfoProto as HdfsProtos (DatanodeInfoProto)
import qualified Hadoop.Protos.HdfsProtos.ExtendedBlockProto as HdfsProtos (ExtendedBlockProto)
 
data GetAdditionalDatanodeRequestProto = GetAdditionalDatanodeRequestProto{src :: !(P'.Utf8),
                                                                           blk :: !(HdfsProtos.ExtendedBlockProto),
                                                                           existings :: !(P'.Seq HdfsProtos.DatanodeInfoProto),
                                                                           excludes :: !(P'.Seq HdfsProtos.DatanodeInfoProto),
                                                                           numAdditionalNodes :: !(P'.Word32),
                                                                           clientName :: !(P'.Utf8),
                                                                           existingStorageUuids :: !(P'.Seq P'.Utf8),
                                                                           fileId :: !(P'.Maybe P'.Word64)}
                                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetAdditionalDatanodeRequestProto where
  mergeAppend (GetAdditionalDatanodeRequestProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   (GetAdditionalDatanodeRequestProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8)
   = GetAdditionalDatanodeRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
 
instance P'.Default GetAdditionalDatanodeRequestProto where
  defaultValue
   = GetAdditionalDatanodeRequestProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just 0)
 
instance P'.Wire GetAdditionalDatanodeRequestProto where
  wireSize ft' self'@(GetAdditionalDatanodeRequestProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 11 x'2 + P'.wireSizeRep 1 11 x'3 + P'.wireSizeRep 1 11 x'4 +
             P'.wireSizeReq 1 13 x'5
             + P'.wireSizeReq 1 9 x'6
             + P'.wireSizeRep 1 9 x'7
             + P'.wireSizeOpt 1 4 x'8)
  wirePut ft' self'@(GetAdditionalDatanodeRequestProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
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
             P'.wirePutReq 18 11 x'2
             P'.wirePutRep 26 11 x'3
             P'.wirePutRep 34 11 x'4
             P'.wirePutReq 40 13 x'5
             P'.wirePutReq 50 9 x'6
             P'.wirePutRep 58 9 x'7
             P'.wirePutOpt 64 4 x'8
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{src = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{blk = P'.mergeAppend (blk old'Self) (new'Field)}) (P'.wireGet 11)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{existings = P'.append (existings old'Self) new'Field}) (P'.wireGet 11)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{excludes = P'.append (excludes old'Self) new'Field}) (P'.wireGet 11)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{numAdditionalNodes = new'Field}) (P'.wireGet 13)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{clientName = new'Field}) (P'.wireGet 9)
             58 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{existingStorageUuids = P'.append (existingStorageUuids old'Self) new'Field})
                    (P'.wireGet 9)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{fileId = Prelude'.Just new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetAdditionalDatanodeRequestProto) GetAdditionalDatanodeRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetAdditionalDatanodeRequestProto
 
instance P'.ReflectDescriptor GetAdditionalDatanodeRequestProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18, 40, 50]) (P'.fromDistinctAscList [10, 18, 26, 34, 40, 50, 58, 64])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.GetAdditionalDatanodeRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"GetAdditionalDatanodeRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"GetAdditionalDatanodeRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetAdditionalDatanodeRequestProto.src\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetAdditionalDatanodeRequestProto\"], baseName' = FName \"src\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetAdditionalDatanodeRequestProto.blk\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetAdditionalDatanodeRequestProto\"], baseName' = FName \"blk\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ExtendedBlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"ExtendedBlockProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetAdditionalDatanodeRequestProto.existings\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetAdditionalDatanodeRequestProto\"], baseName' = FName \"existings\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetAdditionalDatanodeRequestProto.excludes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetAdditionalDatanodeRequestProto\"], baseName' = FName \"excludes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetAdditionalDatanodeRequestProto.numAdditionalNodes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetAdditionalDatanodeRequestProto\"], baseName' = FName \"numAdditionalNodes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetAdditionalDatanodeRequestProto.clientName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetAdditionalDatanodeRequestProto\"], baseName' = FName \"clientName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetAdditionalDatanodeRequestProto.existingStorageUuids\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetAdditionalDatanodeRequestProto\"], baseName' = FName \"existingStorageUuids\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetAdditionalDatanodeRequestProto.fileId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetAdditionalDatanodeRequestProto\"], baseName' = FName \"fileId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetAdditionalDatanodeRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetAdditionalDatanodeRequestProto where
  textPut msg
   = do
       P'.tellT "src" (src msg)
       P'.tellT "blk" (blk msg)
       P'.tellT "existings" (existings msg)
       P'.tellT "excludes" (excludes msg)
       P'.tellT "numAdditionalNodes" (numAdditionalNodes msg)
       P'.tellT "clientName" (clientName msg)
       P'.tellT "existingStorageUuids" (existingStorageUuids msg)
       P'.tellT "fileId" (fileId msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'src, parse'blk, parse'existings, parse'excludes, parse'numAdditionalNodes, parse'clientName,
                   parse'existingStorageUuids, parse'fileId])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'src
         = P'.try
            (do
               v <- P'.getT "src"
               Prelude'.return (\ o -> o{src = v}))
        parse'blk
         = P'.try
            (do
               v <- P'.getT "blk"
               Prelude'.return (\ o -> o{blk = v}))
        parse'existings
         = P'.try
            (do
               v <- P'.getT "existings"
               Prelude'.return (\ o -> o{existings = P'.append (existings o) v}))
        parse'excludes
         = P'.try
            (do
               v <- P'.getT "excludes"
               Prelude'.return (\ o -> o{excludes = P'.append (excludes o) v}))
        parse'numAdditionalNodes
         = P'.try
            (do
               v <- P'.getT "numAdditionalNodes"
               Prelude'.return (\ o -> o{numAdditionalNodes = v}))
        parse'clientName
         = P'.try
            (do
               v <- P'.getT "clientName"
               Prelude'.return (\ o -> o{clientName = v}))
        parse'existingStorageUuids
         = P'.try
            (do
               v <- P'.getT "existingStorageUuids"
               Prelude'.return (\ o -> o{existingStorageUuids = P'.append (existingStorageUuids o) v}))
        parse'fileId
         = P'.try
            (do
               v <- P'.getT "fileId"
               Prelude'.return (\ o -> o{fileId = v}))