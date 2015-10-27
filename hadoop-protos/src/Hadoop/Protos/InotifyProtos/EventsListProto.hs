{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.InotifyProtos.EventsListProto (EventsListProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.InotifyProtos.EventBatchProto as InotifyProtos (EventBatchProto)
import qualified Hadoop.Protos.InotifyProtos.EventProto as InotifyProtos (EventProto)
 
data EventsListProto = EventsListProto{events :: !(P'.Seq InotifyProtos.EventProto), firstTxid :: !(P'.Int64),
                                       lastTxid :: !(P'.Int64), syncTxid :: !(P'.Int64),
                                       batch :: !(P'.Seq InotifyProtos.EventBatchProto)}
                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable EventsListProto where
  mergeAppend (EventsListProto x'1 x'2 x'3 x'4 x'5) (EventsListProto y'1 y'2 y'3 y'4 y'5)
   = EventsListProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
 
instance P'.Default EventsListProto where
  defaultValue = EventsListProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire EventsListProto where
  wireSize ft' self'@(EventsListProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeReq 1 3 x'2 + P'.wireSizeReq 1 3 x'3 + P'.wireSizeReq 1 3 x'4 +
             P'.wireSizeRep 1 11 x'5)
  wirePut ft' self'@(EventsListProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 11 x'1
             P'.wirePutReq 16 3 x'2
             P'.wirePutReq 24 3 x'3
             P'.wirePutReq 32 3 x'4
             P'.wirePutRep 42 11 x'5
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{events = P'.append (events old'Self) new'Field}) (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{firstTxid = new'Field}) (P'.wireGet 3)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{lastTxid = new'Field}) (P'.wireGet 3)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{syncTxid = new'Field}) (P'.wireGet 3)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{batch = P'.append (batch old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> EventsListProto) EventsListProto where
  getVal m' f' = f' m'
 
instance P'.GPB EventsListProto
 
instance P'.ReflectDescriptor EventsListProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [16, 24, 32]) (P'.fromDistinctAscList [10, 16, 24, 32, 42])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.EventsListProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InotifyProtos\"], baseName = MName \"EventsListProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"InotifyProtos\",\"EventsListProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.EventsListProto.events\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"EventsListProto\"], baseName' = FName \"events\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.EventProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InotifyProtos\"], baseName = MName \"EventProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.EventsListProto.firstTxid\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"EventsListProto\"], baseName' = FName \"firstTxid\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.EventsListProto.lastTxid\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"EventsListProto\"], baseName' = FName \"lastTxid\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.EventsListProto.syncTxid\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"EventsListProto\"], baseName' = FName \"syncTxid\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.EventsListProto.batch\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"EventsListProto\"], baseName' = FName \"batch\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.EventBatchProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InotifyProtos\"], baseName = MName \"EventBatchProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType EventsListProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg EventsListProto where
  textPut msg
   = do
       P'.tellT "events" (events msg)
       P'.tellT "firstTxid" (firstTxid msg)
       P'.tellT "lastTxid" (lastTxid msg)
       P'.tellT "syncTxid" (syncTxid msg)
       P'.tellT "batch" (batch msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'events, parse'firstTxid, parse'lastTxid, parse'syncTxid, parse'batch]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'events
         = P'.try
            (do
               v <- P'.getT "events"
               Prelude'.return (\ o -> o{events = P'.append (events o) v}))
        parse'firstTxid
         = P'.try
            (do
               v <- P'.getT "firstTxid"
               Prelude'.return (\ o -> o{firstTxid = v}))
        parse'lastTxid
         = P'.try
            (do
               v <- P'.getT "lastTxid"
               Prelude'.return (\ o -> o{lastTxid = v}))
        parse'syncTxid
         = P'.try
            (do
               v <- P'.getT "syncTxid"
               Prelude'.return (\ o -> o{syncTxid = v}))
        parse'batch
         = P'.try
            (do
               v <- P'.getT "batch"
               Prelude'.return (\ o -> o{batch = P'.append (batch o) v}))