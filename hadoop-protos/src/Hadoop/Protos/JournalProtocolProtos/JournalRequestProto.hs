{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.JournalProtocolProtos.JournalRequestProto (JournalRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.JournalProtocolProtos.JournalInfoProto as JournalProtocolProtos (JournalInfoProto)
 
data JournalRequestProto = JournalRequestProto{journalInfo :: !(JournalProtocolProtos.JournalInfoProto), firstTxnId :: !(P'.Word64),
                                               numTxns :: !(P'.Word32), records :: !(P'.ByteString), epoch :: !(P'.Word64)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable JournalRequestProto where
  mergeAppend (JournalRequestProto x'1 x'2 x'3 x'4 x'5) (JournalRequestProto y'1 y'2 y'3 y'4 y'5)
   = JournalRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
 
instance P'.Default JournalRequestProto where
  defaultValue = JournalRequestProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire JournalRequestProto where
  wireSize ft' self'@(JournalRequestProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeReq 1 13 x'3 + P'.wireSizeReq 1 12 x'4 +
             P'.wireSizeReq 1 4 x'5)
  wirePut ft' self'@(JournalRequestProto x'1 x'2 x'3 x'4 x'5)
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
             P'.wirePutReq 24 13 x'3
             P'.wirePutReq 34 12 x'4
             P'.wirePutReq 40 4 x'5
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
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{firstTxnId = new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{numTxns = new'Field}) (P'.wireGet 13)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{records = new'Field}) (P'.wireGet 12)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{epoch = new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> JournalRequestProto) JournalRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB JournalRequestProto
 
instance P'.ReflectDescriptor JournalRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16, 24, 34, 40]) (P'.fromDistinctAscList [10, 16, 24, 34, 40])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.JournalRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"JournalRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"JournalProtocolProtos\",\"JournalRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.JournalRequestProto.journalInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"JournalRequestProto\"], baseName' = FName \"journalInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.JournalInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"JournalInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.JournalRequestProto.firstTxnId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"JournalRequestProto\"], baseName' = FName \"firstTxnId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.JournalRequestProto.numTxns\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"JournalRequestProto\"], baseName' = FName \"numTxns\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.JournalRequestProto.records\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"JournalRequestProto\"], baseName' = FName \"records\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.JournalRequestProto.epoch\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"JournalRequestProto\"], baseName' = FName \"epoch\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType JournalRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg JournalRequestProto where
  textPut msg
   = do
       P'.tellT "journalInfo" (journalInfo msg)
       P'.tellT "firstTxnId" (firstTxnId msg)
       P'.tellT "numTxns" (numTxns msg)
       P'.tellT "records" (records msg)
       P'.tellT "epoch" (epoch msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'journalInfo, parse'firstTxnId, parse'numTxns, parse'records, parse'epoch]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'journalInfo
         = P'.try
            (do
               v <- P'.getT "journalInfo"
               Prelude'.return (\ o -> o{journalInfo = v}))
        parse'firstTxnId
         = P'.try
            (do
               v <- P'.getT "firstTxnId"
               Prelude'.return (\ o -> o{firstTxnId = v}))
        parse'numTxns
         = P'.try
            (do
               v <- P'.getT "numTxns"
               Prelude'.return (\ o -> o{numTxns = v}))
        parse'records
         = P'.try
            (do
               v <- P'.getT "records"
               Prelude'.return (\ o -> o{records = v}))
        parse'epoch
         = P'.try
            (do
               v <- P'.getT "epoch"
               Prelude'.return (\ o -> o{epoch = v}))