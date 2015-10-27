{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.QJournalProtocolProtos.StartLogSegmentRequestProto (StartLogSegmentRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.QJournalProtocolProtos.RequestInfoProto as QJournalProtocolProtos (RequestInfoProto)
 
data StartLogSegmentRequestProto = StartLogSegmentRequestProto{reqInfo :: !(QJournalProtocolProtos.RequestInfoProto),
                                                               txid :: !(P'.Word64), layoutVersion :: !(P'.Maybe P'.Int32)}
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
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeOpt 1 17 x'3)
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
             P'.wirePutOpt 24 17 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{reqInfo = P'.mergeAppend (reqInfo old'Self) (new'Field)}) (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{txid = new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{layoutVersion = Prelude'.Just new'Field}) (P'.wireGet 17)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> StartLogSegmentRequestProto) StartLogSegmentRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB StartLogSegmentRequestProto
 
instance P'.ReflectDescriptor StartLogSegmentRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16]) (P'.fromDistinctAscList [10, 16, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.StartLogSegmentRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"StartLogSegmentRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"QJournalProtocolProtos\",\"StartLogSegmentRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.StartLogSegmentRequestProto.reqInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"StartLogSegmentRequestProto\"], baseName' = FName \"reqInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.RequestInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"RequestInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.StartLogSegmentRequestProto.txid\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"StartLogSegmentRequestProto\"], baseName' = FName \"txid\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.StartLogSegmentRequestProto.layoutVersion\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"StartLogSegmentRequestProto\"], baseName' = FName \"layoutVersion\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 17}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType StartLogSegmentRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg StartLogSegmentRequestProto where
  textPut msg
   = do
       P'.tellT "reqInfo" (reqInfo msg)
       P'.tellT "txid" (txid msg)
       P'.tellT "layoutVersion" (layoutVersion msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'reqInfo, parse'txid, parse'layoutVersion]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'reqInfo
         = P'.try
            (do
               v <- P'.getT "reqInfo"
               Prelude'.return (\ o -> o{reqInfo = v}))
        parse'txid
         = P'.try
            (do
               v <- P'.getT "txid"
               Prelude'.return (\ o -> o{txid = v}))
        parse'layoutVersion
         = P'.try
            (do
               v <- P'.getT "layoutVersion"
               Prelude'.return (\ o -> o{layoutVersion = v}))