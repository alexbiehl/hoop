{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.InotifyProtos.EventBatchProto (EventBatchProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.InotifyProtos.EventProto as InotifyProtos (EventProto)
 
data EventBatchProto = EventBatchProto{txid :: !(P'.Int64), events :: !(P'.Seq InotifyProtos.EventProto)}
                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable EventBatchProto where
  mergeAppend (EventBatchProto x'1 x'2) (EventBatchProto y'1 y'2)
   = EventBatchProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default EventBatchProto where
  defaultValue = EventBatchProto P'.defaultValue P'.defaultValue
 
instance P'.Wire EventBatchProto where
  wireSize ft' self'@(EventBatchProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 3 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePut ft' self'@(EventBatchProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 3 x'1
             P'.wirePutRep 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{txid = new'Field}) (P'.wireGet 3)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{events = P'.append (events old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> EventBatchProto) EventBatchProto where
  getVal m' f' = f' m'
 
instance P'.GPB EventBatchProto
 
instance P'.ReflectDescriptor EventBatchProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.EventBatchProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InotifyProtos\"], baseName = MName \"EventBatchProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"InotifyProtos\",\"EventBatchProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.EventBatchProto.txid\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"EventBatchProto\"], baseName' = FName \"txid\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.EventBatchProto.events\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"EventBatchProto\"], baseName' = FName \"events\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.EventProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InotifyProtos\"], baseName = MName \"EventProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType EventBatchProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg EventBatchProto where
  textPut msg
   = do
       P'.tellT "txid" (txid msg)
       P'.tellT "events" (events msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'txid, parse'events]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'txid
         = P'.try
            (do
               v <- P'.getT "txid"
               Prelude'.return (\ o -> o{txid = v}))
        parse'events
         = P'.try
            (do
               v <- P'.getT "events"
               Prelude'.return (\ o -> o{events = P'.append (events o) v}))