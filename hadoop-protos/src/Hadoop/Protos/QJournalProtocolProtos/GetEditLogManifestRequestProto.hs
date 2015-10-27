{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.QJournalProtocolProtos.GetEditLogManifestRequestProto (GetEditLogManifestRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.QJournalProtocolProtos.JournalIdProto as QJournalProtocolProtos (JournalIdProto)
 
data GetEditLogManifestRequestProto = GetEditLogManifestRequestProto{jid :: !(QJournalProtocolProtos.JournalIdProto),
                                                                     sinceTxId :: !(P'.Word64), inProgressOk :: !(P'.Maybe P'.Bool)}
                                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetEditLogManifestRequestProto where
  mergeAppend (GetEditLogManifestRequestProto x'1 x'2 x'3) (GetEditLogManifestRequestProto y'1 y'2 y'3)
   = GetEditLogManifestRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default GetEditLogManifestRequestProto where
  defaultValue = GetEditLogManifestRequestProto P'.defaultValue P'.defaultValue (Prelude'.Just Prelude'.False)
 
instance P'.Wire GetEditLogManifestRequestProto where
  wireSize ft' self'@(GetEditLogManifestRequestProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeOpt 1 8 x'3)
  wirePut ft' self'@(GetEditLogManifestRequestProto x'1 x'2 x'3)
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
             P'.wirePutOpt 32 8 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{jid = P'.mergeAppend (jid old'Self) (new'Field)}) (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{sinceTxId = new'Field}) (P'.wireGet 4)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{inProgressOk = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetEditLogManifestRequestProto) GetEditLogManifestRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetEditLogManifestRequestProto
 
instance P'.ReflectDescriptor GetEditLogManifestRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16]) (P'.fromDistinctAscList [10, 16, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.GetEditLogManifestRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"GetEditLogManifestRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"QJournalProtocolProtos\",\"GetEditLogManifestRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.GetEditLogManifestRequestProto.jid\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"GetEditLogManifestRequestProto\"], baseName' = FName \"jid\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.JournalIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"JournalIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.GetEditLogManifestRequestProto.sinceTxId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"GetEditLogManifestRequestProto\"], baseName' = FName \"sinceTxId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.GetEditLogManifestRequestProto.inProgressOk\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"GetEditLogManifestRequestProto\"], baseName' = FName \"inProgressOk\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetEditLogManifestRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetEditLogManifestRequestProto where
  textPut msg
   = do
       P'.tellT "jid" (jid msg)
       P'.tellT "sinceTxId" (sinceTxId msg)
       P'.tellT "inProgressOk" (inProgressOk msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'jid, parse'sinceTxId, parse'inProgressOk]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'jid
         = P'.try
            (do
               v <- P'.getT "jid"
               Prelude'.return (\ o -> o{jid = v}))
        parse'sinceTxId
         = P'.try
            (do
               v <- P'.getT "sinceTxId"
               Prelude'.return (\ o -> o{sinceTxId = v}))
        parse'inProgressOk
         = P'.try
            (do
               v <- P'.getT "inProgressOk"
               Prelude'.return (\ o -> o{inProgressOk = v}))