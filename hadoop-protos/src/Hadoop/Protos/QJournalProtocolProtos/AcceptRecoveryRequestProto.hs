{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.QJournalProtocolProtos.AcceptRecoveryRequestProto (AcceptRecoveryRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.QJournalProtocolProtos.RequestInfoProto as QJournalProtocolProtos (RequestInfoProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.SegmentStateProto as QJournalProtocolProtos (SegmentStateProto)
 
data AcceptRecoveryRequestProto = AcceptRecoveryRequestProto{reqInfo :: !(QJournalProtocolProtos.RequestInfoProto),
                                                             stateToAccept :: !(QJournalProtocolProtos.SegmentStateProto),
                                                             fromURL :: !(P'.Utf8)}
                                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AcceptRecoveryRequestProto where
  mergeAppend (AcceptRecoveryRequestProto x'1 x'2 x'3) (AcceptRecoveryRequestProto y'1 y'2 y'3)
   = AcceptRecoveryRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default AcceptRecoveryRequestProto where
  defaultValue = AcceptRecoveryRequestProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire AcceptRecoveryRequestProto where
  wireSize ft' self'@(AcceptRecoveryRequestProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 11 x'2 + P'.wireSizeReq 1 9 x'3)
  wirePut ft' self'@(AcceptRecoveryRequestProto x'1 x'2 x'3)
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
             P'.wirePutReq 18 11 x'2
             P'.wirePutReq 26 9 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{reqInfo = P'.mergeAppend (reqInfo old'Self) (new'Field)}) (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{stateToAccept = P'.mergeAppend (stateToAccept old'Self) (new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{fromURL = new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> AcceptRecoveryRequestProto) AcceptRecoveryRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB AcceptRecoveryRequestProto
 
instance P'.ReflectDescriptor AcceptRecoveryRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18, 26]) (P'.fromDistinctAscList [10, 18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.AcceptRecoveryRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"AcceptRecoveryRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"QJournalProtocolProtos\",\"AcceptRecoveryRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.AcceptRecoveryRequestProto.reqInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"AcceptRecoveryRequestProto\"], baseName' = FName \"reqInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.RequestInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"RequestInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.AcceptRecoveryRequestProto.stateToAccept\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"AcceptRecoveryRequestProto\"], baseName' = FName \"stateToAccept\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.SegmentStateProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"SegmentStateProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.AcceptRecoveryRequestProto.fromURL\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"AcceptRecoveryRequestProto\"], baseName' = FName \"fromURL\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType AcceptRecoveryRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg AcceptRecoveryRequestProto where
  textPut msg
   = do
       P'.tellT "reqInfo" (reqInfo msg)
       P'.tellT "stateToAccept" (stateToAccept msg)
       P'.tellT "fromURL" (fromURL msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'reqInfo, parse'stateToAccept, parse'fromURL]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'reqInfo
         = P'.try
            (do
               v <- P'.getT "reqInfo"
               Prelude'.return (\ o -> o{reqInfo = v}))
        parse'stateToAccept
         = P'.try
            (do
               v <- P'.getT "stateToAccept"
               Prelude'.return (\ o -> o{stateToAccept = v}))
        parse'fromURL
         = P'.try
            (do
               v <- P'.getT "fromURL"
               Prelude'.return (\ o -> o{fromURL = v}))