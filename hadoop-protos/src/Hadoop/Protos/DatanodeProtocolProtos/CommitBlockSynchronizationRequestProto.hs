{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.CommitBlockSynchronizationRequestProto (CommitBlockSynchronizationRequestProto(..))
       where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.DatanodeIDProto as HdfsProtos (DatanodeIDProto)
import qualified Hadoop.Protos.HdfsProtos.ExtendedBlockProto as HdfsProtos (ExtendedBlockProto)
 
data CommitBlockSynchronizationRequestProto = CommitBlockSynchronizationRequestProto{block :: !(HdfsProtos.ExtendedBlockProto),
                                                                                     newGenStamp :: !(P'.Word64),
                                                                                     newLength :: !(P'.Word64),
                                                                                     closeFile :: !(P'.Bool),
                                                                                     deleteBlock :: !(P'.Bool),
                                                                                     newTaragets ::
                                                                                     !(P'.Seq HdfsProtos.DatanodeIDProto),
                                                                                     newTargetStorages :: !(P'.Seq P'.Utf8)}
                                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CommitBlockSynchronizationRequestProto where
  mergeAppend (CommitBlockSynchronizationRequestProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   (CommitBlockSynchronizationRequestProto y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = CommitBlockSynchronizationRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
 
instance P'.Default CommitBlockSynchronizationRequestProto where
  defaultValue
   = CommitBlockSynchronizationRequestProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire CommitBlockSynchronizationRequestProto where
  wireSize ft' self'@(CommitBlockSynchronizationRequestProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeReq 1 4 x'3 + P'.wireSizeReq 1 8 x'4 +
             P'.wireSizeReq 1 8 x'5
             + P'.wireSizeRep 1 11 x'6
             + P'.wireSizeRep 1 9 x'7)
  wirePut ft' self'@(CommitBlockSynchronizationRequestProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
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
             P'.wirePutReq 16 4 x'2
             P'.wirePutReq 24 4 x'3
             P'.wirePutReq 32 8 x'4
             P'.wirePutReq 40 8 x'5
             P'.wirePutRep 50 11 x'6
             P'.wirePutRep 58 9 x'7
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{block = P'.mergeAppend (block old'Self) (new'Field)}) (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{newGenStamp = new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{newLength = new'Field}) (P'.wireGet 4)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{closeFile = new'Field}) (P'.wireGet 8)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{deleteBlock = new'Field}) (P'.wireGet 8)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{newTaragets = P'.append (newTaragets old'Self) new'Field})
                    (P'.wireGet 11)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{newTargetStorages = P'.append (newTargetStorages old'Self) new'Field})
                    (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> CommitBlockSynchronizationRequestProto) CommitBlockSynchronizationRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB CommitBlockSynchronizationRequestProto
 
instance P'.ReflectDescriptor CommitBlockSynchronizationRequestProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16, 24, 32, 40]) (P'.fromDistinctAscList [10, 16, 24, 32, 40, 50, 58])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.CommitBlockSynchronizationRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"CommitBlockSynchronizationRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DatanodeProtocolProtos\",\"CommitBlockSynchronizationRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.CommitBlockSynchronizationRequestProto.block\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"CommitBlockSynchronizationRequestProto\"], baseName' = FName \"block\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ExtendedBlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"ExtendedBlockProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.CommitBlockSynchronizationRequestProto.newGenStamp\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"CommitBlockSynchronizationRequestProto\"], baseName' = FName \"newGenStamp\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.CommitBlockSynchronizationRequestProto.newLength\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"CommitBlockSynchronizationRequestProto\"], baseName' = FName \"newLength\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.CommitBlockSynchronizationRequestProto.closeFile\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"CommitBlockSynchronizationRequestProto\"], baseName' = FName \"closeFile\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.CommitBlockSynchronizationRequestProto.deleteBlock\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"CommitBlockSynchronizationRequestProto\"], baseName' = FName \"deleteBlock\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.CommitBlockSynchronizationRequestProto.newTaragets\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"CommitBlockSynchronizationRequestProto\"], baseName' = FName \"newTaragets\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeIDProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeIDProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.CommitBlockSynchronizationRequestProto.newTargetStorages\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"CommitBlockSynchronizationRequestProto\"], baseName' = FName \"newTargetStorages\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType CommitBlockSynchronizationRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg CommitBlockSynchronizationRequestProto where
  textPut msg
   = do
       P'.tellT "block" (block msg)
       P'.tellT "newGenStamp" (newGenStamp msg)
       P'.tellT "newLength" (newLength msg)
       P'.tellT "closeFile" (closeFile msg)
       P'.tellT "deleteBlock" (deleteBlock msg)
       P'.tellT "newTaragets" (newTaragets msg)
       P'.tellT "newTargetStorages" (newTargetStorages msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'block, parse'newGenStamp, parse'newLength, parse'closeFile, parse'deleteBlock, parse'newTaragets,
                   parse'newTargetStorages])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'block
         = P'.try
            (do
               v <- P'.getT "block"
               Prelude'.return (\ o -> o{block = v}))
        parse'newGenStamp
         = P'.try
            (do
               v <- P'.getT "newGenStamp"
               Prelude'.return (\ o -> o{newGenStamp = v}))
        parse'newLength
         = P'.try
            (do
               v <- P'.getT "newLength"
               Prelude'.return (\ o -> o{newLength = v}))
        parse'closeFile
         = P'.try
            (do
               v <- P'.getT "closeFile"
               Prelude'.return (\ o -> o{closeFile = v}))
        parse'deleteBlock
         = P'.try
            (do
               v <- P'.getT "deleteBlock"
               Prelude'.return (\ o -> o{deleteBlock = v}))
        parse'newTaragets
         = P'.try
            (do
               v <- P'.getT "newTaragets"
               Prelude'.return (\ o -> o{newTaragets = P'.append (newTaragets o) v}))
        parse'newTargetStorages
         = P'.try
            (do
               v <- P'.getT "newTargetStorages"
               Prelude'.return (\ o -> o{newTargetStorages = P'.append (newTargetStorages o) v}))