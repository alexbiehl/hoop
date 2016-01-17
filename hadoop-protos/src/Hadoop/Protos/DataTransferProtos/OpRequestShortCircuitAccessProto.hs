{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.OpRequestShortCircuitAccessProto (OpRequestShortCircuitAccessProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DataTransferProtos.BaseHeaderProto as DataTransferProtos (BaseHeaderProto)
import qualified Hadoop.Protos.DataTransferProtos.ShortCircuitShmSlotProto as DataTransferProtos (ShortCircuitShmSlotProto)
 
data OpRequestShortCircuitAccessProto = OpRequestShortCircuitAccessProto{header :: !(DataTransferProtos.BaseHeaderProto),
                                                                         maxVersion :: !(P'.Word32),
                                                                         slotId ::
                                                                         !(P'.Maybe DataTransferProtos.ShortCircuitShmSlotProto),
                                                                         supportsReceiptVerification :: !(P'.Maybe P'.Bool)}
                                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable OpRequestShortCircuitAccessProto where
  mergeAppend (OpRequestShortCircuitAccessProto x'1 x'2 x'3 x'4) (OpRequestShortCircuitAccessProto y'1 y'2 y'3 y'4)
   = OpRequestShortCircuitAccessProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
 
instance P'.Default OpRequestShortCircuitAccessProto where
  defaultValue = OpRequestShortCircuitAccessProto P'.defaultValue P'.defaultValue P'.defaultValue (Prelude'.Just Prelude'.False)
 
instance P'.Wire OpRequestShortCircuitAccessProto where
  wireSize ft' self'@(OpRequestShortCircuitAccessProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 13 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 8 x'4)
  wirePut ft' self'@(OpRequestShortCircuitAccessProto x'1 x'2 x'3 x'4)
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
             P'.wirePutReq 16 13 x'2
             P'.wirePutOpt 26 11 x'3
             P'.wirePutOpt 32 8 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{header = P'.mergeAppend (header old'Self) (new'Field)}) (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{maxVersion = new'Field}) (P'.wireGet 13)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{slotId = P'.mergeAppend (slotId old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{supportsReceiptVerification = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> OpRequestShortCircuitAccessProto) OpRequestShortCircuitAccessProto where
  getVal m' f' = f' m'
 
instance P'.GPB OpRequestShortCircuitAccessProto
 
instance P'.ReflectDescriptor OpRequestShortCircuitAccessProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16]) (P'.fromDistinctAscList [10, 16, 26, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.OpRequestShortCircuitAccessProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"OpRequestShortCircuitAccessProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DataTransferProtos\",\"OpRequestShortCircuitAccessProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpRequestShortCircuitAccessProto.header\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpRequestShortCircuitAccessProto\"], baseName' = FName \"header\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.BaseHeaderProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"BaseHeaderProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpRequestShortCircuitAccessProto.maxVersion\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpRequestShortCircuitAccessProto\"], baseName' = FName \"maxVersion\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpRequestShortCircuitAccessProto.slotId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpRequestShortCircuitAccessProto\"], baseName' = FName \"slotId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ShortCircuitShmSlotProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"ShortCircuitShmSlotProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.OpRequestShortCircuitAccessProto.supportsReceiptVerification\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"OpRequestShortCircuitAccessProto\"], baseName' = FName \"supportsReceiptVerification\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType OpRequestShortCircuitAccessProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg OpRequestShortCircuitAccessProto where
  textPut msg
   = do
       P'.tellT "header" (header msg)
       P'.tellT "maxVersion" (maxVersion msg)
       P'.tellT "slotId" (slotId msg)
       P'.tellT "supportsReceiptVerification" (supportsReceiptVerification msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'header, parse'maxVersion, parse'slotId, parse'supportsReceiptVerification]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'header
         = P'.try
            (do
               v <- P'.getT "header"
               Prelude'.return (\ o -> o{header = v}))
        parse'maxVersion
         = P'.try
            (do
               v <- P'.getT "maxVersion"
               Prelude'.return (\ o -> o{maxVersion = v}))
        parse'slotId
         = P'.try
            (do
               v <- P'.getT "slotId"
               Prelude'.return (\ o -> o{slotId = v}))
        parse'supportsReceiptVerification
         = P'.try
            (do
               v <- P'.getT "supportsReceiptVerification"
               Prelude'.return (\ o -> o{supportsReceiptVerification = v}))