{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.LocatedBlocksProto (LocatedBlocksProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.FileEncryptionInfoProto as HdfsProtos (FileEncryptionInfoProto)
import qualified Hadoop.Protos.HdfsProtos.LocatedBlockProto as HdfsProtos (LocatedBlockProto)
 
data LocatedBlocksProto = LocatedBlocksProto{fileLength :: !(P'.Word64), blocks :: !(P'.Seq HdfsProtos.LocatedBlockProto),
                                             underConstruction :: !(P'.Bool), lastBlock :: !(P'.Maybe HdfsProtos.LocatedBlockProto),
                                             isLastBlockComplete :: !(P'.Bool),
                                             fileEncryptionInfo :: !(P'.Maybe HdfsProtos.FileEncryptionInfoProto)}
                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable LocatedBlocksProto where
  mergeAppend (LocatedBlocksProto x'1 x'2 x'3 x'4 x'5 x'6) (LocatedBlocksProto y'1 y'2 y'3 y'4 y'5 y'6)
   = LocatedBlocksProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
 
instance P'.Default LocatedBlocksProto where
  defaultValue = LocatedBlocksProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire LocatedBlocksProto where
  wireSize ft' self'@(LocatedBlocksProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 4 x'1 + P'.wireSizeRep 1 11 x'2 + P'.wireSizeReq 1 8 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeReq 1 8 x'5
             + P'.wireSizeOpt 1 11 x'6)
  wirePut ft' self'@(LocatedBlocksProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 4 x'1
             P'.wirePutRep 18 11 x'2
             P'.wirePutReq 24 8 x'3
             P'.wirePutOpt 34 11 x'4
             P'.wirePutReq 40 8 x'5
             P'.wirePutOpt 50 11 x'6
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{fileLength = new'Field}) (P'.wireGet 4)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{blocks = P'.append (blocks old'Self) new'Field}) (P'.wireGet 11)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{underConstruction = new'Field}) (P'.wireGet 8)
             34 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{lastBlock = P'.mergeAppend (lastBlock old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{isLastBlockComplete = new'Field}) (P'.wireGet 8)
             50 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{fileEncryptionInfo = P'.mergeAppend (fileEncryptionInfo old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> LocatedBlocksProto) LocatedBlocksProto where
  getVal m' f' = f' m'
 
instance P'.GPB LocatedBlocksProto
 
instance P'.ReflectDescriptor LocatedBlocksProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 24, 40]) (P'.fromDistinctAscList [8, 18, 24, 34, 40, 50])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.LocatedBlocksProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"LocatedBlocksProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"LocatedBlocksProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.LocatedBlocksProto.fileLength\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"LocatedBlocksProto\"], baseName' = FName \"fileLength\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.LocatedBlocksProto.blocks\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"LocatedBlocksProto\"], baseName' = FName \"blocks\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.LocatedBlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"LocatedBlockProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.LocatedBlocksProto.underConstruction\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"LocatedBlocksProto\"], baseName' = FName \"underConstruction\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.LocatedBlocksProto.lastBlock\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"LocatedBlocksProto\"], baseName' = FName \"lastBlock\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.LocatedBlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"LocatedBlockProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.LocatedBlocksProto.isLastBlockComplete\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"LocatedBlocksProto\"], baseName' = FName \"isLastBlockComplete\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.LocatedBlocksProto.fileEncryptionInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"LocatedBlocksProto\"], baseName' = FName \"fileEncryptionInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.FileEncryptionInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"FileEncryptionInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType LocatedBlocksProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg LocatedBlocksProto where
  textPut msg
   = do
       P'.tellT "fileLength" (fileLength msg)
       P'.tellT "blocks" (blocks msg)
       P'.tellT "underConstruction" (underConstruction msg)
       P'.tellT "lastBlock" (lastBlock msg)
       P'.tellT "isLastBlockComplete" (isLastBlockComplete msg)
       P'.tellT "fileEncryptionInfo" (fileEncryptionInfo msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'fileLength, parse'blocks, parse'underConstruction, parse'lastBlock, parse'isLastBlockComplete,
                   parse'fileEncryptionInfo])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'fileLength
         = P'.try
            (do
               v <- P'.getT "fileLength"
               Prelude'.return (\ o -> o{fileLength = v}))
        parse'blocks
         = P'.try
            (do
               v <- P'.getT "blocks"
               Prelude'.return (\ o -> o{blocks = P'.append (blocks o) v}))
        parse'underConstruction
         = P'.try
            (do
               v <- P'.getT "underConstruction"
               Prelude'.return (\ o -> o{underConstruction = v}))
        parse'lastBlock
         = P'.try
            (do
               v <- P'.getT "lastBlock"
               Prelude'.return (\ o -> o{lastBlock = v}))
        parse'isLastBlockComplete
         = P'.try
            (do
               v <- P'.getT "isLastBlockComplete"
               Prelude'.return (\ o -> o{isLastBlockComplete = v}))
        parse'fileEncryptionInfo
         = P'.try
            (do
               v <- P'.getT "fileEncryptionInfo"
               Prelude'.return (\ o -> o{fileEncryptionInfo = v}))