{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.QJournalProtocolProtos.GetJournalStateRequestProto (GetJournalStateRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.QJournalProtocolProtos.JournalIdProto as QJournalProtocolProtos (JournalIdProto)
 
data GetJournalStateRequestProto = GetJournalStateRequestProto{jid :: !(QJournalProtocolProtos.JournalIdProto)}
                                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetJournalStateRequestProto where
  mergeAppend (GetJournalStateRequestProto x'1) (GetJournalStateRequestProto y'1)
   = GetJournalStateRequestProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetJournalStateRequestProto where
  defaultValue = GetJournalStateRequestProto P'.defaultValue
 
instance P'.Wire GetJournalStateRequestProto where
  wireSize ft' self'@(GetJournalStateRequestProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1)
  wirePut ft' self'@(GetJournalStateRequestProto x'1)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{jid = P'.mergeAppend (jid old'Self) (new'Field)}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetJournalStateRequestProto) GetJournalStateRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetJournalStateRequestProto
 
instance P'.ReflectDescriptor GetJournalStateRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.GetJournalStateRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"GetJournalStateRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"QJournalProtocolProtos\",\"GetJournalStateRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.GetJournalStateRequestProto.jid\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"GetJournalStateRequestProto\"], baseName' = FName \"jid\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.JournalIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"JournalIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetJournalStateRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetJournalStateRequestProto where
  textPut msg
   = do
       P'.tellT "jid" (jid msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'jid]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'jid
         = P'.try
            (do
               v <- P'.getT "jid"
               Prelude'.return (\ o -> o{jid = v}))