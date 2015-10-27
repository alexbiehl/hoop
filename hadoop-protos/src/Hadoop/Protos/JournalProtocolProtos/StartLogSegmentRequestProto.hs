{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.JournalProtocolProtos.StartLogSegmentRequestProto (StartLogSegmentRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.JournalProtocolProtos.JournalInfoProto as JournalProtocolProtos (JournalInfoProto)
 
data StartLogSegmentRequestProto = StartLogSegmentRequestProto{journalInfo :: !(JournalProtocolProtos.JournalInfoProto),
                                                               txid :: !(P'.Word64), epoch :: !(P'.Word64)}
                                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable StartLogSegmentRequestProto where
  mergeAppend (StartLogSegmentRequestProto x'1 x'2 x'3) (StartLogSegmentRequestProto y'1 y'2 y'3)
   = StartLogSegmentRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default StartLogSegmentRequestProto where
  defaultValue = StartLogSegmentRequestProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire StartLogSegmentRequestProto where
  wireSize ft' self'@(StartLogSegmentRequestProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeReq 1 4 x'3)
  wirePut ft' self'@(StartLogSegmentRequestProto x'1 x'2 x'3)
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
             P'.wirePutReq 24 4 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{journalInfo = P'.mergeAppend (journalInfo old'Self) (new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{txid = new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{epoch = new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> StartLogSegmentRequestProto) StartLogSegmentRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB StartLogSegmentRequestProto
 
instance P'.ReflectDescriptor StartLogSegmentRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16, 24]) (P'.fromDistinctAscList [10, 16, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.StartLogSegmentRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"StartLogSegmentRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"JournalProtocolProtos\",\"StartLogSegmentRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.StartLogSegmentRequestProto.journalInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"StartLogSegmentRequestProto\"], baseName' = FName \"journalInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.JournalInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"JournalInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.StartLogSegmentRequestProto.txid\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"StartLogSegmentRequestProto\"], baseName' = FName \"txid\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.StartLogSegmentRequestProto.epoch\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"StartLogSegmentRequestProto\"], baseName' = FName \"epoch\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType StartLogSegmentRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg StartLogSegmentRequestProto where
  textPut msg
   = do
       P'.tellT "journalInfo" (journalInfo msg)
       P'.tellT "txid" (txid msg)
       P'.tellT "epoch" (epoch msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'journalInfo, parse'txid, parse'epoch]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'journalInfo
         = P'.try
            (do
               v <- P'.getT "journalInfo"
               Prelude'.return (\ o -> o{journalInfo = v}))
        parse'txid
         = P'.try
            (do
               v <- P'.getT "txid"
               Prelude'.return (\ o -> o{txid = v}))
        parse'epoch
         = P'.try
            (do
               v <- P'.getT "epoch"
               Prelude'.return (\ o -> o{epoch = v}))