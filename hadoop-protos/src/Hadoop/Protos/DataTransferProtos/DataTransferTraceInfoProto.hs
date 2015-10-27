{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.DataTransferTraceInfoProto (DataTransferTraceInfoProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data DataTransferTraceInfoProto = DataTransferTraceInfoProto{traceId :: !(P'.Word64), parentId :: !(P'.Word64)}
                                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable DataTransferTraceInfoProto where
  mergeAppend (DataTransferTraceInfoProto x'1 x'2) (DataTransferTraceInfoProto y'1 y'2)
   = DataTransferTraceInfoProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default DataTransferTraceInfoProto where
  defaultValue = DataTransferTraceInfoProto P'.defaultValue P'.defaultValue
 
instance P'.Wire DataTransferTraceInfoProto where
  wireSize ft' self'@(DataTransferTraceInfoProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 4 x'1 + P'.wireSizeReq 1 4 x'2)
  wirePut ft' self'@(DataTransferTraceInfoProto x'1 x'2)
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
             P'.wirePutReq 16 4 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{traceId = new'Field}) (P'.wireGet 4)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{parentId = new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> DataTransferTraceInfoProto) DataTransferTraceInfoProto where
  getVal m' f' = f' m'
 
instance P'.GPB DataTransferTraceInfoProto
 
instance P'.ReflectDescriptor DataTransferTraceInfoProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 16]) (P'.fromDistinctAscList [8, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.DataTransferTraceInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"DataTransferTraceInfoProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DataTransferProtos\",\"DataTransferTraceInfoProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DataTransferTraceInfoProto.traceId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"DataTransferTraceInfoProto\"], baseName' = FName \"traceId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DataTransferTraceInfoProto.parentId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"DataTransferTraceInfoProto\"], baseName' = FName \"parentId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType DataTransferTraceInfoProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg DataTransferTraceInfoProto where
  textPut msg
   = do
       P'.tellT "traceId" (traceId msg)
       P'.tellT "parentId" (parentId msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'traceId, parse'parentId]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'traceId
         = P'.try
            (do
               v <- P'.getT "traceId"
               Prelude'.return (\ o -> o{traceId = v}))
        parse'parentId
         = P'.try
            (do
               v <- P'.getT "parentId"
               Prelude'.return (\ o -> o{parentId = v}))