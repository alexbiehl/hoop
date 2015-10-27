{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.BlockOpResponseProto (BlockOpResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DataTransferProtos.OpBlockChecksumResponseProto as DataTransferProtos (OpBlockChecksumResponseProto)
import qualified Hadoop.Protos.DataTransferProtos.ReadOpChecksumInfoProto as DataTransferProtos (ReadOpChecksumInfoProto)
import qualified Hadoop.Protos.DataTransferProtos.Status as DataTransferProtos (Status)
 
data BlockOpResponseProto = BlockOpResponseProto{status :: !(DataTransferProtos.Status), firstBadLink :: !(P'.Maybe P'.Utf8),
                                                 checksumResponse :: !(P'.Maybe DataTransferProtos.OpBlockChecksumResponseProto),
                                                 readOpChecksumInfo :: !(P'.Maybe DataTransferProtos.ReadOpChecksumInfoProto),
                                                 message :: !(P'.Maybe P'.Utf8), shortCircuitAccessVersion :: !(P'.Maybe P'.Word32)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable BlockOpResponseProto where
  mergeAppend (BlockOpResponseProto x'1 x'2 x'3 x'4 x'5 x'6) (BlockOpResponseProto y'1 y'2 y'3 y'4 y'5 y'6)
   = BlockOpResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
 
instance P'.Default BlockOpResponseProto where
  defaultValue
   = BlockOpResponseProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire BlockOpResponseProto where
  wireSize ft' self'@(BlockOpResponseProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 14 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeOpt 1 13 x'6)
  wirePut ft' self'@(BlockOpResponseProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 14 x'1
             P'.wirePutOpt 18 9 x'2
             P'.wirePutOpt 26 11 x'3
             P'.wirePutOpt 34 11 x'4
             P'.wirePutOpt 42 9 x'5
             P'.wirePutOpt 48 13 x'6
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{status = new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{firstBadLink = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{checksumResponse = P'.mergeAppend (checksumResponse old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{readOpChecksumInfo = P'.mergeAppend (readOpChecksumInfo old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{message = Prelude'.Just new'Field}) (P'.wireGet 9)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{shortCircuitAccessVersion = Prelude'.Just new'Field}) (P'.wireGet 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> BlockOpResponseProto) BlockOpResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB BlockOpResponseProto
 
instance P'.ReflectDescriptor BlockOpResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8, 18, 26, 34, 42, 48])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.BlockOpResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"BlockOpResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DataTransferProtos\",\"BlockOpResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockOpResponseProto.status\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"BlockOpResponseProto\"], baseName' = FName \"status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.Status\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"Status\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockOpResponseProto.firstBadLink\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"BlockOpResponseProto\"], baseName' = FName \"firstBadLink\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockOpResponseProto.checksumResponse\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"BlockOpResponseProto\"], baseName' = FName \"checksumResponse\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.OpBlockChecksumResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"OpBlockChecksumResponseProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockOpResponseProto.readOpChecksumInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"BlockOpResponseProto\"], baseName' = FName \"readOpChecksumInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ReadOpChecksumInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"ReadOpChecksumInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockOpResponseProto.message\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"BlockOpResponseProto\"], baseName' = FName \"message\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.BlockOpResponseProto.shortCircuitAccessVersion\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"BlockOpResponseProto\"], baseName' = FName \"shortCircuitAccessVersion\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType BlockOpResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg BlockOpResponseProto where
  textPut msg
   = do
       P'.tellT "status" (status msg)
       P'.tellT "firstBadLink" (firstBadLink msg)
       P'.tellT "checksumResponse" (checksumResponse msg)
       P'.tellT "readOpChecksumInfo" (readOpChecksumInfo msg)
       P'.tellT "message" (message msg)
       P'.tellT "shortCircuitAccessVersion" (shortCircuitAccessVersion msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'status, parse'firstBadLink, parse'checksumResponse, parse'readOpChecksumInfo, parse'message,
                   parse'shortCircuitAccessVersion])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'status
         = P'.try
            (do
               v <- P'.getT "status"
               Prelude'.return (\ o -> o{status = v}))
        parse'firstBadLink
         = P'.try
            (do
               v <- P'.getT "firstBadLink"
               Prelude'.return (\ o -> o{firstBadLink = v}))
        parse'checksumResponse
         = P'.try
            (do
               v <- P'.getT "checksumResponse"
               Prelude'.return (\ o -> o{checksumResponse = v}))
        parse'readOpChecksumInfo
         = P'.try
            (do
               v <- P'.getT "readOpChecksumInfo"
               Prelude'.return (\ o -> o{readOpChecksumInfo = v}))
        parse'message
         = P'.try
            (do
               v <- P'.getT "message"
               Prelude'.return (\ o -> o{message = v}))
        parse'shortCircuitAccessVersion
         = P'.try
            (do
               v <- P'.getT "shortCircuitAccessVersion"
               Prelude'.return (\ o -> o{shortCircuitAccessVersion = v}))