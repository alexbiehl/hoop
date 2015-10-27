{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.QJournalProtocolProtos.CanRollBackRequestProto (CanRollBackRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.StorageInfoProto as HdfsProtos (StorageInfoProto)
import qualified Hadoop.Protos.QJournalProtocolProtos.JournalIdProto as QJournalProtocolProtos (JournalIdProto)
 
data CanRollBackRequestProto = CanRollBackRequestProto{jid :: !(QJournalProtocolProtos.JournalIdProto),
                                                       storage :: !(HdfsProtos.StorageInfoProto),
                                                       prevStorage :: !(HdfsProtos.StorageInfoProto),
                                                       targetLayoutVersion :: !(P'.Int32)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CanRollBackRequestProto where
  mergeAppend (CanRollBackRequestProto x'1 x'2 x'3 x'4) (CanRollBackRequestProto y'1 y'2 y'3 y'4)
   = CanRollBackRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default CanRollBackRequestProto where
  defaultValue = CanRollBackRequestProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire CanRollBackRequestProto where
  wireSize ft' self'@(CanRollBackRequestProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 11 x'2 + P'.wireSizeReq 1 11 x'3 + P'.wireSizeReq 1 5 x'4)
  wirePut ft' self'@(CanRollBackRequestProto x'1 x'2 x'3 x'4)
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
             P'.wirePutReq 26 11 x'3
             P'.wirePutReq 32 5 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{jid = P'.mergeAppend (jid old'Self) (new'Field)}) (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{storage = P'.mergeAppend (storage old'Self) (new'Field)}) (P'.wireGet 11)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{prevStorage = P'.mergeAppend (prevStorage old'Self) (new'Field)})
                    (P'.wireGet 11)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{targetLayoutVersion = new'Field}) (P'.wireGet 5)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> CanRollBackRequestProto) CanRollBackRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB CanRollBackRequestProto
 
instance P'.ReflectDescriptor CanRollBackRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18, 26, 32]) (P'.fromDistinctAscList [10, 18, 26, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.CanRollBackRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"CanRollBackRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"QJournalProtocolProtos\",\"CanRollBackRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.CanRollBackRequestProto.jid\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"CanRollBackRequestProto\"], baseName' = FName \"jid\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.JournalIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"JournalIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.CanRollBackRequestProto.storage\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"CanRollBackRequestProto\"], baseName' = FName \"storage\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.CanRollBackRequestProto.prevStorage\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"CanRollBackRequestProto\"], baseName' = FName \"prevStorage\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.CanRollBackRequestProto.targetLayoutVersion\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"CanRollBackRequestProto\"], baseName' = FName \"targetLayoutVersion\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType CanRollBackRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg CanRollBackRequestProto where
  textPut msg
   = do
       P'.tellT "jid" (jid msg)
       P'.tellT "storage" (storage msg)
       P'.tellT "prevStorage" (prevStorage msg)
       P'.tellT "targetLayoutVersion" (targetLayoutVersion msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'jid, parse'storage, parse'prevStorage, parse'targetLayoutVersion]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'jid
         = P'.try
            (do
               v <- P'.getT "jid"
               Prelude'.return (\ o -> o{jid = v}))
        parse'storage
         = P'.try
            (do
               v <- P'.getT "storage"
               Prelude'.return (\ o -> o{storage = v}))
        parse'prevStorage
         = P'.try
            (do
               v <- P'.getT "prevStorage"
               Prelude'.return (\ o -> o{prevStorage = v}))
        parse'targetLayoutVersion
         = P'.try
            (do
               v <- P'.getT "targetLayoutVersion"
               Prelude'.return (\ o -> o{targetLayoutVersion = v}))