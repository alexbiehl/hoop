{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.JournalProtocolProtos.FenceRequestProto (FenceRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.JournalProtocolProtos.JournalInfoProto as JournalProtocolProtos (JournalInfoProto)
 
data FenceRequestProto = FenceRequestProto{journalInfo :: !(JournalProtocolProtos.JournalInfoProto), epoch :: !(P'.Word64),
                                           fencerInfo :: !(P'.Maybe P'.Utf8)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable FenceRequestProto where
  mergeAppend (FenceRequestProto x'1 x'2 x'3) (FenceRequestProto y'1 y'2 y'3)
   = FenceRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default FenceRequestProto where
  defaultValue = FenceRequestProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire FenceRequestProto where
  wireSize ft' self'@(FenceRequestProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeOpt 1 9 x'3)
  wirePut ft' self'@(FenceRequestProto x'1 x'2 x'3)
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
             P'.wirePutOpt 26 9 x'3
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
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{epoch = new'Field}) (P'.wireGet 4)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{fencerInfo = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> FenceRequestProto) FenceRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB FenceRequestProto
 
instance P'.ReflectDescriptor FenceRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16]) (P'.fromDistinctAscList [10, 16, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.FenceRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"FenceRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"JournalProtocolProtos\",\"FenceRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FenceRequestProto.journalInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"FenceRequestProto\"], baseName' = FName \"journalInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.JournalInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"JournalInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FenceRequestProto.epoch\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"FenceRequestProto\"], baseName' = FName \"epoch\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.FenceRequestProto.fencerInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"FenceRequestProto\"], baseName' = FName \"fencerInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType FenceRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg FenceRequestProto where
  textPut msg
   = do
       P'.tellT "journalInfo" (journalInfo msg)
       P'.tellT "epoch" (epoch msg)
       P'.tellT "fencerInfo" (fencerInfo msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'journalInfo, parse'epoch, parse'fencerInfo]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'journalInfo
         = P'.try
            (do
               v <- P'.getT "journalInfo"
               Prelude'.return (\ o -> o{journalInfo = v}))
        parse'epoch
         = P'.try
            (do
               v <- P'.getT "epoch"
               Prelude'.return (\ o -> o{epoch = v}))
        parse'fencerInfo
         = P'.try
            (do
               v <- P'.getT "fencerInfo"
               Prelude'.return (\ o -> o{fencerInfo = v}))