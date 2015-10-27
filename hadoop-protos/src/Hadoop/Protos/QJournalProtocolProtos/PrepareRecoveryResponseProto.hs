{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.QJournalProtocolProtos.PrepareRecoveryResponseProto (PrepareRecoveryResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.QJournalProtocolProtos.SegmentStateProto as QJournalProtocolProtos (SegmentStateProto)
 
data PrepareRecoveryResponseProto = PrepareRecoveryResponseProto{segmentState ::
                                                                 !(P'.Maybe QJournalProtocolProtos.SegmentStateProto),
                                                                 acceptedInEpoch :: !(P'.Maybe P'.Word64),
                                                                 lastWriterEpoch :: !(P'.Word64),
                                                                 lastCommittedTxId :: !(P'.Maybe P'.Word64)}
                                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable PrepareRecoveryResponseProto where
  mergeAppend (PrepareRecoveryResponseProto x'1 x'2 x'3 x'4) (PrepareRecoveryResponseProto y'1 y'2 y'3 y'4)
   = PrepareRecoveryResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
 
instance P'.Default PrepareRecoveryResponseProto where
  defaultValue = PrepareRecoveryResponseProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire PrepareRecoveryResponseProto where
  wireSize ft' self'@(PrepareRecoveryResponseProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 4 x'2 + P'.wireSizeReq 1 4 x'3 + P'.wireSizeOpt 1 4 x'4)
  wirePut ft' self'@(PrepareRecoveryResponseProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 11 x'1
             P'.wirePutOpt 16 4 x'2
             P'.wirePutReq 24 4 x'3
             P'.wirePutOpt 32 4 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{segmentState = P'.mergeAppend (segmentState old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{acceptedInEpoch = Prelude'.Just new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{lastWriterEpoch = new'Field}) (P'.wireGet 4)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{lastCommittedTxId = Prelude'.Just new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> PrepareRecoveryResponseProto) PrepareRecoveryResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB PrepareRecoveryResponseProto
 
instance P'.ReflectDescriptor PrepareRecoveryResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [24]) (P'.fromDistinctAscList [10, 16, 24, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.PrepareRecoveryResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"PrepareRecoveryResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"QJournalProtocolProtos\",\"PrepareRecoveryResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.PrepareRecoveryResponseProto.segmentState\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"PrepareRecoveryResponseProto\"], baseName' = FName \"segmentState\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.SegmentStateProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"SegmentStateProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.PrepareRecoveryResponseProto.acceptedInEpoch\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"PrepareRecoveryResponseProto\"], baseName' = FName \"acceptedInEpoch\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.PrepareRecoveryResponseProto.lastWriterEpoch\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"PrepareRecoveryResponseProto\"], baseName' = FName \"lastWriterEpoch\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.PrepareRecoveryResponseProto.lastCommittedTxId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"PrepareRecoveryResponseProto\"], baseName' = FName \"lastCommittedTxId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType PrepareRecoveryResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg PrepareRecoveryResponseProto where
  textPut msg
   = do
       P'.tellT "segmentState" (segmentState msg)
       P'.tellT "acceptedInEpoch" (acceptedInEpoch msg)
       P'.tellT "lastWriterEpoch" (lastWriterEpoch msg)
       P'.tellT "lastCommittedTxId" (lastCommittedTxId msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'segmentState, parse'acceptedInEpoch, parse'lastWriterEpoch, parse'lastCommittedTxId])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'segmentState
         = P'.try
            (do
               v <- P'.getT "segmentState"
               Prelude'.return (\ o -> o{segmentState = v}))
        parse'acceptedInEpoch
         = P'.try
            (do
               v <- P'.getT "acceptedInEpoch"
               Prelude'.return (\ o -> o{acceptedInEpoch = v}))
        parse'lastWriterEpoch
         = P'.try
            (do
               v <- P'.getT "lastWriterEpoch"
               Prelude'.return (\ o -> o{lastWriterEpoch = v}))
        parse'lastCommittedTxId
         = P'.try
            (do
               v <- P'.getT "lastCommittedTxId"
               Prelude'.return (\ o -> o{lastCommittedTxId = v}))