{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.JournalProtocolProtos.FenceResponseProto (FenceResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data FenceResponseProto = FenceResponseProto{previousEpoch :: !(P'.Maybe P'.Word64), lastTransactionId :: !(P'.Maybe P'.Word64),
                                             inSync :: !(P'.Maybe P'.Bool)}
                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable FenceResponseProto where
  mergeAppend (FenceResponseProto x'1 x'2 x'3) (FenceResponseProto y'1 y'2 y'3)
   = FenceResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default FenceResponseProto where
  defaultValue = FenceResponseProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire FenceResponseProto where
  wireSize ft' self'@(FenceResponseProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 4 x'1 + P'.wireSizeOpt 1 4 x'2 + P'.wireSizeOpt 1 8 x'3)
  wirePut ft' self'@(FenceResponseProto x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 4 x'1
             P'.wirePutOpt 16 4 x'2
             P'.wirePutOpt 24 8 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{previousEpoch = Prelude'.Just new'Field}) (P'.wireGet 4)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{lastTransactionId = Prelude'.Just new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{inSync = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> FenceResponseProto) FenceResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB FenceResponseProto
 
instance P'.ReflectDescriptor FenceResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.FenceResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"FenceResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"JournalProtocolProtos\",\"FenceResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FenceResponseProto.previousEpoch\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"FenceResponseProto\"], baseName' = FName \"previousEpoch\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FenceResponseProto.lastTransactionId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"FenceResponseProto\"], baseName' = FName \"lastTransactionId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FenceResponseProto.inSync\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"FenceResponseProto\"], baseName' = FName \"inSync\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType FenceResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg FenceResponseProto where
  textPut msg
   = do
       P'.tellT "previousEpoch" (previousEpoch msg)
       P'.tellT "lastTransactionId" (lastTransactionId msg)
       P'.tellT "inSync" (inSync msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'previousEpoch, parse'lastTransactionId, parse'inSync]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'previousEpoch
         = P'.try
            (do
               v <- P'.getT "previousEpoch"
               Prelude'.return (\ o -> o{previousEpoch = v}))
        parse'lastTransactionId
         = P'.try
            (do
               v <- P'.getT "lastTransactionId"
               Prelude'.return (\ o -> o{lastTransactionId = v}))
        parse'inSync
         = P'.try
            (do
               v <- P'.getT "inSync"
               Prelude'.return (\ o -> o{inSync = v}))