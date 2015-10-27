{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.FinishApplicationMasterRequestProto (FinishApplicationMasterRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.FinalApplicationStatusProto as YarnProtos (FinalApplicationStatusProto)
 
data FinishApplicationMasterRequestProto = FinishApplicationMasterRequestProto{diagnostics :: !(P'.Maybe P'.Utf8),
                                                                               tracking_url :: !(P'.Maybe P'.Utf8),
                                                                               final_application_status ::
                                                                               !(P'.Maybe YarnProtos.FinalApplicationStatusProto)}
                                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable FinishApplicationMasterRequestProto where
  mergeAppend (FinishApplicationMasterRequestProto x'1 x'2 x'3) (FinishApplicationMasterRequestProto y'1 y'2 y'3)
   = FinishApplicationMasterRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default FinishApplicationMasterRequestProto where
  defaultValue = FinishApplicationMasterRequestProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire FinishApplicationMasterRequestProto where
  wireSize ft' self'@(FinishApplicationMasterRequestProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 14 x'3)
  wirePut ft' self'@(FinishApplicationMasterRequestProto x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 9 x'1
             P'.wirePutOpt 18 9 x'2
             P'.wirePutOpt 24 14 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{diagnostics = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{tracking_url = Prelude'.Just new'Field}) (P'.wireGet 9)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{final_application_status = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> FinishApplicationMasterRequestProto) FinishApplicationMasterRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB FinishApplicationMasterRequestProto
 
instance P'.ReflectDescriptor FinishApplicationMasterRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.FinishApplicationMasterRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"FinishApplicationMasterRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"FinishApplicationMasterRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.FinishApplicationMasterRequestProto.diagnostics\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"FinishApplicationMasterRequestProto\"], baseName' = FName \"diagnostics\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.FinishApplicationMasterRequestProto.tracking_url\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"FinishApplicationMasterRequestProto\"], baseName' = FName \"tracking_url\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.FinishApplicationMasterRequestProto.final_application_status\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"FinishApplicationMasterRequestProto\"], baseName' = FName \"final_application_status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.FinalApplicationStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"FinalApplicationStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType FinishApplicationMasterRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg FinishApplicationMasterRequestProto where
  textPut msg
   = do
       P'.tellT "diagnostics" (diagnostics msg)
       P'.tellT "tracking_url" (tracking_url msg)
       P'.tellT "final_application_status" (final_application_status msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'diagnostics, parse'tracking_url, parse'final_application_status]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'diagnostics
         = P'.try
            (do
               v <- P'.getT "diagnostics"
               Prelude'.return (\ o -> o{diagnostics = v}))
        parse'tracking_url
         = P'.try
            (do
               v <- P'.getT "tracking_url"
               Prelude'.return (\ o -> o{tracking_url = v}))
        parse'final_application_status
         = P'.try
            (do
               v <- P'.getT "final_application_status"
               Prelude'.return (\ o -> o{final_application_status = v}))