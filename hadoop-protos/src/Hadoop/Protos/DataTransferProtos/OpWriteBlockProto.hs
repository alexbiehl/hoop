{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.OpWriteBlockProto (OpWriteBlockProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DataTransferProtos.CachingStrategyProto as DataTransferProtos (CachingStrategyProto)
import qualified Hadoop.Protos.DataTransferProtos.ChecksumProto as DataTransferProtos (ChecksumProto)
import qualified Hadoop.Protos.DataTransferProtos.ClientOperationHeaderProto as DataTransferProtos (ClientOperationHeaderProto)
import qualified Hadoop.Protos.DataTransferProtos.OpWriteBlockProto.BlockConstructionStage as DataTransferProtos.OpWriteBlockProto
       (BlockConstructionStage)
import qualified Hadoop.Protos.HdfsProtos.DatanodeInfoProto as HdfsProtos (DatanodeInfoProto)
import qualified Hadoop.Protos.HdfsProtos.StorageTypeProto as HdfsProtos (StorageTypeProto)
 
data OpWriteBlockProto = OpWriteBlockProto{header :: !(DataTransferProtos.ClientOperationHeaderProto),
                                           targets :: !(P'.Seq HdfsProtos.DatanodeInfoProto),
                                           source :: !(P'.Maybe HdfsProtos.DatanodeInfoProto),
                                           stage :: !(DataTransferProtos.OpWriteBlockProto.BlockConstructionStage),
                                           pipelineSize :: !(P'.Word32), minBytesRcvd :: !(P'.Word64), maxBytesRcvd :: !(P'.Word64),
                                           latestGenerationStamp :: !(P'.Word64),
                                           requestedChecksum :: !(DataTransferProtos.ChecksumProto),
                                           cachingStrategy :: !(P'.Maybe DataTransferProtos.CachingStrategyProto),
                                           storageType :: !(P'.Maybe HdfsProtos.StorageTypeProto),
                                           targetStorageTypes :: !(P'.Seq HdfsProtos.StorageTypeProto),
                                           allowLazyPersist :: !(P'.Maybe P'.Bool), pinning :: !(P'.Maybe P'.Bool),
                                           targetPinnings :: !(P'.Seq P'.Bool)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable OpWriteBlockProto where
  mergeAppend (OpWriteBlockProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15)
   (OpWriteBlockProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15)
   = OpWriteBlockProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)
      (P'.mergeAppend x'12 y'12)
      (P'.mergeAppend x'13 y'13)
      (P'.mergeAppend x'14 y'14)
      (P'.mergeAppend x'15 y'15)
 
instance P'.Default OpWriteBlockProto where
  defaultValue
   = OpWriteBlockProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just (Prelude'.read "DISK"))
      P'.defaultValue
      (Prelude'.Just Prelude'.False)
      (Prelude'.Just Prelude'.False)
      P'.defaultValue
 
instance P'.Wire OpWriteBlockProto where
  wireSize ft' self'@(OpWriteBlockProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeRep 1 11 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeReq 1 14 x'4 +
             P'.wireSizeReq 1 13 x'5
             + P'.wireSizeReq 1 4 x'6
             + P'.wireSizeReq 1 4 x'7
             + P'.wireSizeReq 1 4 x'8
             + P'.wireSizeReq 1 11 x'9
             + P'.wireSizeOpt 1 11 x'10
             + P'.wireSizeOpt 1 14 x'11
             + P'.wireSizeRep 1 14 x'12
             + P'.wireSizeOpt 1 8 x'13
             + P'.wireSizeOpt 1 8 x'14
             + P'.wireSizeRep 1 8 x'15)
  wirePut ft' self'@(OpWriteBlockProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15)
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
             P'.wirePutOpt 26 11 x'3
             P'.wirePutReq 32 14 x'4
             P'.wirePutReq 40 13 x'5
             P'.wirePutReq 48 4 x'6
             P'.wirePutReq 56 4 x'7
             P'.wirePutReq 64 4 x'8
             P'.wirePutReq 74 11 x'9
             P'.wirePutOpt 82 11 x'10
             P'.wirePutOpt 88 14 x'11
             P'.wirePutRep 96 14 x'12
             P'.wirePutOpt 104 8 x'13
             P'.wirePutOpt 112 8 x'14
             P'.wirePutRep 120 8 x'15
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
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{source = P'.mergeAppend (source old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{stage = new'Field}) (P'.wireGet 14)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{pipelineSize = new'Field}) (P'.wireGet 13)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{minBytesRcvd = new'Field}) (P'.wireGet 4)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{maxBytesRcvd = new'Field}) (P'.wireGet 4)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{latestGenerationStamp = new'Field}) (P'.wireGet 4)
             74 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{requestedChecksum = P'.mergeAppend (requestedChecksum old'Self) (new'Field)})
                    (P'.wireGet 11)
             82 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{cachingStrategy = P'.mergeAppend (cachingStrategy old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{storageType = Prelude'.Just new'Field}) (P'.wireGet 14)
             96 -> Prelude'.fmap (\ !new'Field -> old'Self{targetStorageTypes = P'.append (targetStorageTypes old'Self) new'Field})
                    (P'.wireGet 14)
             98 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{targetStorageTypes = P'.mergeAppend (targetStorageTypes old'Self) new'Field})
                    (P'.wireGetPacked 14)
             104 -> Prelude'.fmap (\ !new'Field -> old'Self{allowLazyPersist = Prelude'.Just new'Field}) (P'.wireGet 8)
             112 -> Prelude'.fmap (\ !new'Field -> old'Self{pinning = Prelude'.Just new'Field}) (P'.wireGet 8)
             120 -> Prelude'.fmap (\ !new'Field -> old'Self{targetPinnings = P'.append (targetPinnings old'Self) new'Field})
                     (P'.wireGet 8)
             122 -> Prelude'.fmap (\ !new'Field -> old'Self{targetPinnings = P'.mergeAppend (targetPinnings old'Self) new'Field})
                     (P'.wireGetPacked 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> OpWriteBlockProto) OpWriteBlockProto where
  getVal m' f' = f' m'
 
instance P'.GPB OpWriteBlockProto
 
instance P'.ReflectDescriptor OpWriteBlockProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [10, 32, 40, 48, 56, 64, 74])
      (P'.fromDistinctAscList [10, 18, 26, 32, 40, 48, 56, 64, 74, 82, 88, 96, 98, 104, 112, 120, 122])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.OpWriteBlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"OpWriteBlockProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DataTransferProtos\",\"OpWriteBlockProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpWriteBlockProto.header\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpWriteBlockProto\"], baseName' = FName \"header\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ClientOperationHeaderProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"ClientOperationHeaderProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpWriteBlockProto.targets\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpWriteBlockProto\"], baseName' = FName \"targets\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpWriteBlockProto.source\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpWriteBlockProto\"], baseName' = FName \"source\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpWriteBlockProto.stage\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpWriteBlockProto\"], baseName' = FName \"stage\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.OpWriteBlockProto.BlockConstructionStage\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\",MName \"OpWriteBlockProto\"], baseName = MName \"BlockConstructionStage\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpWriteBlockProto.pipelineSize\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpWriteBlockProto\"], baseName' = FName \"pipelineSize\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpWriteBlockProto.minBytesRcvd\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpWriteBlockProto\"], baseName' = FName \"minBytesRcvd\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpWriteBlockProto.maxBytesRcvd\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpWriteBlockProto\"], baseName' = FName \"maxBytesRcvd\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpWriteBlockProto.latestGenerationStamp\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpWriteBlockProto\"], baseName' = FName \"latestGenerationStamp\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpWriteBlockProto.requestedChecksum\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpWriteBlockProto\"], baseName' = FName \"requestedChecksum\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ChecksumProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"ChecksumProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpWriteBlockProto.cachingStrategy\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpWriteBlockProto\"], baseName' = FName \"cachingStrategy\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.CachingStrategyProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"CachingStrategyProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpWriteBlockProto.storageType\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpWriteBlockProto\"], baseName' = FName \"storageType\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageTypeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageTypeProto\"}), hsRawDefault = Just \"DISK\", hsDefault = Just (HsDef'Enum \"DISK\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpWriteBlockProto.targetStorageTypes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpWriteBlockProto\"], baseName' = FName \"targetStorageTypes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 96}, packedTag = Just (WireTag {getWireTag = 96},WireTag {getWireTag = 98}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageTypeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageTypeProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpWriteBlockProto.allowLazyPersist\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpWriteBlockProto\"], baseName' = FName \"allowLazyPersist\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 104}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpWriteBlockProto.pinning\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpWriteBlockProto\"], baseName' = FName \"pinning\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 112}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpWriteBlockProto.targetPinnings\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpWriteBlockProto\"], baseName' = FName \"targetPinnings\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 120}, packedTag = Just (WireTag {getWireTag = 120},WireTag {getWireTag = 122}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType OpWriteBlockProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg OpWriteBlockProto where
  textPut msg
   = do
       P'.tellT "header" (header msg)
       P'.tellT "targets" (targets msg)
       P'.tellT "source" (source msg)
       P'.tellT "stage" (stage msg)
       P'.tellT "pipelineSize" (pipelineSize msg)
       P'.tellT "minBytesRcvd" (minBytesRcvd msg)
       P'.tellT "maxBytesRcvd" (maxBytesRcvd msg)
       P'.tellT "latestGenerationStamp" (latestGenerationStamp msg)
       P'.tellT "requestedChecksum" (requestedChecksum msg)
       P'.tellT "cachingStrategy" (cachingStrategy msg)
       P'.tellT "storageType" (storageType msg)
       P'.tellT "targetStorageTypes" (targetStorageTypes msg)
       P'.tellT "allowLazyPersist" (allowLazyPersist msg)
       P'.tellT "pinning" (pinning msg)
       P'.tellT "targetPinnings" (targetPinnings msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'header, parse'targets, parse'source, parse'stage, parse'pipelineSize, parse'minBytesRcvd,
                   parse'maxBytesRcvd, parse'latestGenerationStamp, parse'requestedChecksum, parse'cachingStrategy,
                   parse'storageType, parse'targetStorageTypes, parse'allowLazyPersist, parse'pinning, parse'targetPinnings])
                P'.spaces
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
        parse'source
         = P'.try
            (do
               v <- P'.getT "source"
               Prelude'.return (\ o -> o{source = v}))
        parse'stage
         = P'.try
            (do
               v <- P'.getT "stage"
               Prelude'.return (\ o -> o{stage = v}))
        parse'pipelineSize
         = P'.try
            (do
               v <- P'.getT "pipelineSize"
               Prelude'.return (\ o -> o{pipelineSize = v}))
        parse'minBytesRcvd
         = P'.try
            (do
               v <- P'.getT "minBytesRcvd"
               Prelude'.return (\ o -> o{minBytesRcvd = v}))
        parse'maxBytesRcvd
         = P'.try
            (do
               v <- P'.getT "maxBytesRcvd"
               Prelude'.return (\ o -> o{maxBytesRcvd = v}))
        parse'latestGenerationStamp
         = P'.try
            (do
               v <- P'.getT "latestGenerationStamp"
               Prelude'.return (\ o -> o{latestGenerationStamp = v}))
        parse'requestedChecksum
         = P'.try
            (do
               v <- P'.getT "requestedChecksum"
               Prelude'.return (\ o -> o{requestedChecksum = v}))
        parse'cachingStrategy
         = P'.try
            (do
               v <- P'.getT "cachingStrategy"
               Prelude'.return (\ o -> o{cachingStrategy = v}))
        parse'storageType
         = P'.try
            (do
               v <- P'.getT "storageType"
               Prelude'.return (\ o -> o{storageType = v}))
        parse'targetStorageTypes
         = P'.try
            (do
               v <- P'.getT "targetStorageTypes"
               Prelude'.return (\ o -> o{targetStorageTypes = P'.append (targetStorageTypes o) v}))
        parse'allowLazyPersist
         = P'.try
            (do
               v <- P'.getT "allowLazyPersist"
               Prelude'.return (\ o -> o{allowLazyPersist = v}))
        parse'pinning
         = P'.try
            (do
               v <- P'.getT "pinning"
               Prelude'.return (\ o -> o{pinning = v}))
        parse'targetPinnings
         = P'.try
            (do
               v <- P'.getT "targetPinnings"
               Prelude'.return (\ o -> o{targetPinnings = P'.append (targetPinnings o) v}))