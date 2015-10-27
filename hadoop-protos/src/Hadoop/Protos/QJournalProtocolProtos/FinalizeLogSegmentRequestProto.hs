{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.QJournalProtocolProtos.FinalizeLogSegmentRequestProto (FinalizeLogSegmentRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.QJournalProtocolProtos.RequestInfoProto as QJournalProtocolProtos (RequestInfoProto)
 
data FinalizeLogSegmentRequestProto = FinalizeLogSegmentRequestProto{reqInfo :: !(QJournalProtocolProtos.RequestInfoProto),
                                                                     startTxId :: !(P'.Word64), endTxId :: !(P'.Word64)}
                                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable FinalizeLogSegmentRequestProto where
  mergeAppend (FinalizeLogSegmentRequestProto x'1 x'2 x'3) (FinalizeLogSegmentRequestProto y'1 y'2 y'3)
   = FinalizeLogSegmentRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default FinalizeLogSegmentRequestProto where
  defaultValue = FinalizeLogSegmentRequestProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire FinalizeLogSegmentRequestProto where
  wireSize ft' self'@(FinalizeLogSegmentRequestProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeReq 1 4 x'3)
  wirePut ft' self'@(FinalizeLogSegmentRequestProto x'1 x'2 x'3)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{reqInfo = P'.mergeAppend (reqInfo old'Self) (new'Field)}) (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{startTxId = new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{endTxId = new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> FinalizeLogSegmentRequestProto) FinalizeLogSegmentRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB FinalizeLogSegmentRequestProto
 
instance P'.ReflectDescriptor FinalizeLogSegmentRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16, 24]) (P'.fromDistinctAscList [10, 16, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.FinalizeLogSegmentRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"FinalizeLogSegmentRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"QJournalProtocolProtos\",\"FinalizeLogSegmentRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.FinalizeLogSegmentRequestProto.reqInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"FinalizeLogSegmentRequestProto\"], baseName' = FName \"reqInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.RequestInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"RequestInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.FinalizeLogSegmentRequestProto.startTxId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"FinalizeLogSegmentRequestProto\"], baseName' = FName \"startTxId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.FinalizeLogSegmentRequestProto.endTxId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"FinalizeLogSegmentRequestProto\"], baseName' = FName \"endTxId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType FinalizeLogSegmentRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg FinalizeLogSegmentRequestProto where
  textPut msg
   = do
       P'.tellT "reqInfo" (reqInfo msg)
       P'.tellT "startTxId" (startTxId msg)
       P'.tellT "endTxId" (endTxId msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'reqInfo, parse'startTxId, parse'endTxId]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'reqInfo
         = P'.try
            (do
               v <- P'.getT "reqInfo"
               Prelude'.return (\ o -> o{reqInfo = v}))
        parse'startTxId
         = P'.try
            (do
               v <- P'.getT "startTxId"
               Prelude'.return (\ o -> o{startTxId = v}))
        parse'endTxId
         = P'.try
            (do
               v <- P'.getT "endTxId"
               Prelude'.return (\ o -> o{endTxId = v}))