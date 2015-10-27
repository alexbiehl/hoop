{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.ReleaseShortCircuitAccessRequestProto (ReleaseShortCircuitAccessRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DataTransferProtos.DataTransferTraceInfoProto as DataTransferProtos (DataTransferTraceInfoProto)
import qualified Hadoop.Protos.DataTransferProtos.ShortCircuitShmSlotProto as DataTransferProtos (ShortCircuitShmSlotProto)
 
data ReleaseShortCircuitAccessRequestProto = ReleaseShortCircuitAccessRequestProto{slotId ::
                                                                                   !(DataTransferProtos.ShortCircuitShmSlotProto),
                                                                                   traceInfo ::
                                                                                   !(P'.Maybe
                                                                                      DataTransferProtos.DataTransferTraceInfoProto)}
                                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ReleaseShortCircuitAccessRequestProto where
  mergeAppend (ReleaseShortCircuitAccessRequestProto x'1 x'2) (ReleaseShortCircuitAccessRequestProto y'1 y'2)
   = ReleaseShortCircuitAccessRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ReleaseShortCircuitAccessRequestProto where
  defaultValue = ReleaseShortCircuitAccessRequestProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ReleaseShortCircuitAccessRequestProto where
  wireSize ft' self'@(ReleaseShortCircuitAccessRequestProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePut ft' self'@(ReleaseShortCircuitAccessRequestProto x'1 x'2)
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
             P'.wirePutOpt 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{slotId = P'.mergeAppend (slotId old'Self) (new'Field)}) (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{traceInfo = P'.mergeAppend (traceInfo old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ReleaseShortCircuitAccessRequestProto) ReleaseShortCircuitAccessRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB ReleaseShortCircuitAccessRequestProto
 
instance P'.ReflectDescriptor ReleaseShortCircuitAccessRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.ReleaseShortCircuitAccessRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"ReleaseShortCircuitAccessRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DataTransferProtos\",\"ReleaseShortCircuitAccessRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ReleaseShortCircuitAccessRequestProto.slotId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"ReleaseShortCircuitAccessRequestProto\"], baseName' = FName \"slotId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ShortCircuitShmSlotProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"ShortCircuitShmSlotProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ReleaseShortCircuitAccessRequestProto.traceInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"ReleaseShortCircuitAccessRequestProto\"], baseName' = FName \"traceInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DataTransferTraceInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"DataTransferTraceInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ReleaseShortCircuitAccessRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ReleaseShortCircuitAccessRequestProto where
  textPut msg
   = do
       P'.tellT "slotId" (slotId msg)
       P'.tellT "traceInfo" (traceInfo msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'slotId, parse'traceInfo]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'slotId
         = P'.try
            (do
               v <- P'.getT "slotId"
               Prelude'.return (\ o -> o{slotId = v}))
        parse'traceInfo
         = P'.try
            (do
               v <- P'.getT "traceInfo"
               Prelude'.return (\ o -> o{traceInfo = v}))