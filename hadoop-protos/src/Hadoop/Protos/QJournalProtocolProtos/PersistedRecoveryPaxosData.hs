{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.QJournalProtocolProtos.PersistedRecoveryPaxosData (PersistedRecoveryPaxosData(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.QJournalProtocolProtos.SegmentStateProto as QJournalProtocolProtos (SegmentStateProto)
 
data PersistedRecoveryPaxosData = PersistedRecoveryPaxosData{segmentState :: !(QJournalProtocolProtos.SegmentStateProto),
                                                             acceptedInEpoch :: !(P'.Word64)}
                                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable PersistedRecoveryPaxosData where
  mergeAppend (PersistedRecoveryPaxosData x'1 x'2) (PersistedRecoveryPaxosData y'1 y'2)
   = PersistedRecoveryPaxosData (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default PersistedRecoveryPaxosData where
  defaultValue = PersistedRecoveryPaxosData P'.defaultValue P'.defaultValue
 
instance P'.Wire PersistedRecoveryPaxosData where
  wireSize ft' self'@(PersistedRecoveryPaxosData x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 4 x'2)
  wirePut ft' self'@(PersistedRecoveryPaxosData x'1 x'2)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{segmentState = P'.mergeAppend (segmentState old'Self) (new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{acceptedInEpoch = new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> PersistedRecoveryPaxosData) PersistedRecoveryPaxosData where
  getVal m' f' = f' m'
 
instance P'.GPB PersistedRecoveryPaxosData
 
instance P'.ReflectDescriptor PersistedRecoveryPaxosData where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16]) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.PersistedRecoveryPaxosData\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"PersistedRecoveryPaxosData\"}, descFilePath = [\"Hadoop\",\"Protos\",\"QJournalProtocolProtos\",\"PersistedRecoveryPaxosData.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.PersistedRecoveryPaxosData.segmentState\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"PersistedRecoveryPaxosData\"], baseName' = FName \"segmentState\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.SegmentStateProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"SegmentStateProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.PersistedRecoveryPaxosData.acceptedInEpoch\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"PersistedRecoveryPaxosData\"], baseName' = FName \"acceptedInEpoch\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType PersistedRecoveryPaxosData where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg PersistedRecoveryPaxosData where
  textPut msg
   = do
       P'.tellT "segmentState" (segmentState msg)
       P'.tellT "acceptedInEpoch" (acceptedInEpoch msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'segmentState, parse'acceptedInEpoch]) P'.spaces
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