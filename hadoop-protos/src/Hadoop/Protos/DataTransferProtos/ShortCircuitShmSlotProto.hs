{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.ShortCircuitShmSlotProto (ShortCircuitShmSlotProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DataTransferProtos.ShortCircuitShmIdProto as DataTransferProtos (ShortCircuitShmIdProto)
 
data ShortCircuitShmSlotProto = ShortCircuitShmSlotProto{shmId :: !(DataTransferProtos.ShortCircuitShmIdProto),
                                                         slotIdx :: !(P'.Int32)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ShortCircuitShmSlotProto where
  mergeAppend (ShortCircuitShmSlotProto x'1 x'2) (ShortCircuitShmSlotProto y'1 y'2)
   = ShortCircuitShmSlotProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ShortCircuitShmSlotProto where
  defaultValue = ShortCircuitShmSlotProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ShortCircuitShmSlotProto where
  wireSize ft' self'@(ShortCircuitShmSlotProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 5 x'2)
  wirePut ft' self'@(ShortCircuitShmSlotProto x'1 x'2)
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
             P'.wirePutReq 16 5 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{shmId = P'.mergeAppend (shmId old'Self) (new'Field)}) (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{slotIdx = new'Field}) (P'.wireGet 5)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ShortCircuitShmSlotProto) ShortCircuitShmSlotProto where
  getVal m' f' = f' m'
 
instance P'.GPB ShortCircuitShmSlotProto
 
instance P'.ReflectDescriptor ShortCircuitShmSlotProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16]) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.ShortCircuitShmSlotProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"ShortCircuitShmSlotProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DataTransferProtos\",\"ShortCircuitShmSlotProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ShortCircuitShmSlotProto.shmId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"ShortCircuitShmSlotProto\"], baseName' = FName \"shmId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ShortCircuitShmIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"ShortCircuitShmIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ShortCircuitShmSlotProto.slotIdx\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"ShortCircuitShmSlotProto\"], baseName' = FName \"slotIdx\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ShortCircuitShmSlotProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ShortCircuitShmSlotProto where
  textPut msg
   = do
       P'.tellT "shmId" (shmId msg)
       P'.tellT "slotIdx" (slotIdx msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'shmId, parse'slotIdx]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'shmId
         = P'.try
            (do
               v <- P'.getT "shmId"
               Prelude'.return (\ o -> o{shmId = v}))
        parse'slotIdx
         = P'.try
            (do
               v <- P'.getT "slotIdx"
               Prelude'.return (\ o -> o{slotIdx = v}))