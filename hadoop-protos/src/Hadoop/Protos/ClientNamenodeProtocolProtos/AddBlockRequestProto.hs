{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.AddBlockRequestProto (AddBlockRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.DatanodeInfoProto as HdfsProtos (DatanodeInfoProto)
import qualified Hadoop.Protos.HdfsProtos.ExtendedBlockProto as HdfsProtos (ExtendedBlockProto)
 
data AddBlockRequestProto = AddBlockRequestProto{src :: !(P'.Utf8), clientName :: !(P'.Utf8),
                                                 previous :: !(P'.Maybe HdfsProtos.ExtendedBlockProto),
                                                 excludeNodes :: !(P'.Seq HdfsProtos.DatanodeInfoProto),
                                                 fileId :: !(P'.Maybe P'.Word64), favoredNodes :: !(P'.Seq P'.Utf8)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AddBlockRequestProto where
  mergeAppend (AddBlockRequestProto x'1 x'2 x'3 x'4 x'5 x'6) (AddBlockRequestProto y'1 y'2 y'3 y'4 y'5 y'6)
   = AddBlockRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
 
instance P'.Default AddBlockRequestProto where
  defaultValue
   = AddBlockRequestProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue (Prelude'.Just 0) P'.defaultValue
 
instance P'.Wire AddBlockRequestProto where
  wireSize ft' self'@(AddBlockRequestProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeRep 1 11 x'4 +
             P'.wireSizeOpt 1 4 x'5
             + P'.wireSizeRep 1 9 x'6)
  wirePut ft' self'@(AddBlockRequestProto x'1 x'2 x'3 x'4 x'5 x'6)
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
             P'.wirePutOpt 26 11 x'3
             P'.wirePutRep 34 11 x'4
             P'.wirePutOpt 40 4 x'5
             P'.wirePutRep 50 9 x'6
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{src = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{clientName = new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{previous = P'.mergeAppend (previous old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{excludeNodes = P'.append (excludeNodes old'Self) new'Field})
                    (P'.wireGet 11)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{fileId = Prelude'.Just new'Field}) (P'.wireGet 4)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{favoredNodes = P'.append (favoredNodes old'Self) new'Field})
                    (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> AddBlockRequestProto) AddBlockRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB AddBlockRequestProto
 
instance P'.ReflectDescriptor AddBlockRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18]) (P'.fromDistinctAscList [10, 18, 26, 34, 40, 50])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.AddBlockRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"AddBlockRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"AddBlockRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AddBlockRequestProto.src\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"AddBlockRequestProto\"], baseName' = FName \"src\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AddBlockRequestProto.clientName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"AddBlockRequestProto\"], baseName' = FName \"clientName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AddBlockRequestProto.previous\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"AddBlockRequestProto\"], baseName' = FName \"previous\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ExtendedBlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"ExtendedBlockProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AddBlockRequestProto.excludeNodes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"AddBlockRequestProto\"], baseName' = FName \"excludeNodes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AddBlockRequestProto.fileId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"AddBlockRequestProto\"], baseName' = FName \"fileId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AddBlockRequestProto.favoredNodes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"AddBlockRequestProto\"], baseName' = FName \"favoredNodes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType AddBlockRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg AddBlockRequestProto where
  textPut msg
   = do
       P'.tellT "src" (src msg)
       P'.tellT "clientName" (clientName msg)
       P'.tellT "previous" (previous msg)
       P'.tellT "excludeNodes" (excludeNodes msg)
       P'.tellT "fileId" (fileId msg)
       P'.tellT "favoredNodes" (favoredNodes msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice [parse'src, parse'clientName, parse'previous, parse'excludeNodes, parse'fileId, parse'favoredNodes])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'src
         = P'.try
            (do
               v <- P'.getT "src"
               Prelude'.return (\ o -> o{src = v}))
        parse'clientName
         = P'.try
            (do
               v <- P'.getT "clientName"
               Prelude'.return (\ o -> o{clientName = v}))
        parse'previous
         = P'.try
            (do
               v <- P'.getT "previous"
               Prelude'.return (\ o -> o{previous = v}))
        parse'excludeNodes
         = P'.try
            (do
               v <- P'.getT "excludeNodes"
               Prelude'.return (\ o -> o{excludeNodes = P'.append (excludeNodes o) v}))
        parse'fileId
         = P'.try
            (do
               v <- P'.getT "fileId"
               Prelude'.return (\ o -> o{fileId = v}))
        parse'favoredNodes
         = P'.try
            (do
               v <- P'.getT "favoredNodes"
               Prelude'.return (\ o -> o{favoredNodes = P'.append (favoredNodes o) v}))