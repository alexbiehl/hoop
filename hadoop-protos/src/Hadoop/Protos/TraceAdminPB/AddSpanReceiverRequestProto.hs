{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.TraceAdminPB.AddSpanReceiverRequestProto (AddSpanReceiverRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.TraceAdminPB.ConfigPair as TraceAdminPB (ConfigPair)
 
data AddSpanReceiverRequestProto = AddSpanReceiverRequestProto{className :: !(P'.Utf8), config :: !(P'.Seq TraceAdminPB.ConfigPair)}
                                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AddSpanReceiverRequestProto where
  mergeAppend (AddSpanReceiverRequestProto x'1 x'2) (AddSpanReceiverRequestProto y'1 y'2)
   = AddSpanReceiverRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default AddSpanReceiverRequestProto where
  defaultValue = AddSpanReceiverRequestProto P'.defaultValue P'.defaultValue
 
instance P'.Wire AddSpanReceiverRequestProto where
  wireSize ft' self'@(AddSpanReceiverRequestProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePut ft' self'@(AddSpanReceiverRequestProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 9 x'1
             P'.wirePutRep 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{className = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{config = P'.append (config old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> AddSpanReceiverRequestProto) AddSpanReceiverRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB AddSpanReceiverRequestProto
 
instance P'.ReflectDescriptor AddSpanReceiverRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.AddSpanReceiverRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"TraceAdminPB\"], baseName = MName \"AddSpanReceiverRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"TraceAdminPB\",\"AddSpanReceiverRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.AddSpanReceiverRequestProto.className\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"TraceAdminPB\",MName \"AddSpanReceiverRequestProto\"], baseName' = FName \"className\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.AddSpanReceiverRequestProto.config\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"TraceAdminPB\",MName \"AddSpanReceiverRequestProto\"], baseName' = FName \"config\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.ConfigPair\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"TraceAdminPB\"], baseName = MName \"ConfigPair\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType AddSpanReceiverRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg AddSpanReceiverRequestProto where
  textPut msg
   = do
       P'.tellT "className" (className msg)
       P'.tellT "config" (config msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'className, parse'config]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'className
         = P'.try
            (do
               v <- P'.getT "className"
               Prelude'.return (\ o -> o{className = v}))
        parse'config
         = P'.try
            (do
               v <- P'.getT "config"
               Prelude'.return (\ o -> o{config = P'.append (config o) v}))