{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.ReadOpChecksumInfoProto (ReadOpChecksumInfoProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DataTransferProtos.ChecksumProto as DataTransferProtos (ChecksumProto)
 
data ReadOpChecksumInfoProto = ReadOpChecksumInfoProto{checksum :: !(DataTransferProtos.ChecksumProto), chunkOffset :: !(P'.Word64)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ReadOpChecksumInfoProto where
  mergeAppend (ReadOpChecksumInfoProto x'1 x'2) (ReadOpChecksumInfoProto y'1 y'2)
   = ReadOpChecksumInfoProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ReadOpChecksumInfoProto where
  defaultValue = ReadOpChecksumInfoProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ReadOpChecksumInfoProto where
  wireSize ft' self'@(ReadOpChecksumInfoProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 4 x'2)
  wirePut ft' self'@(ReadOpChecksumInfoProto x'1 x'2)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{checksum = P'.mergeAppend (checksum old'Self) (new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{chunkOffset = new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ReadOpChecksumInfoProto) ReadOpChecksumInfoProto where
  getVal m' f' = f' m'
 
instance P'.GPB ReadOpChecksumInfoProto
 
instance P'.ReflectDescriptor ReadOpChecksumInfoProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16]) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.ReadOpChecksumInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"ReadOpChecksumInfoProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DataTransferProtos\",\"ReadOpChecksumInfoProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ReadOpChecksumInfoProto.checksum\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"ReadOpChecksumInfoProto\"], baseName' = FName \"checksum\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ChecksumProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"ChecksumProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ReadOpChecksumInfoProto.chunkOffset\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"ReadOpChecksumInfoProto\"], baseName' = FName \"chunkOffset\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ReadOpChecksumInfoProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ReadOpChecksumInfoProto where
  textPut msg
   = do
       P'.tellT "checksum" (checksum msg)
       P'.tellT "chunkOffset" (chunkOffset msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'checksum, parse'chunkOffset]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'checksum
         = P'.try
            (do
               v <- P'.getT "checksum"
               Prelude'.return (\ o -> o{checksum = v}))
        parse'chunkOffset
         = P'.try
            (do
               v <- P'.getT "chunkOffset"
               Prelude'.return (\ o -> o{chunkOffset = v}))