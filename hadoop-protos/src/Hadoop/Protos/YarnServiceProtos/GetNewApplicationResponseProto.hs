{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.GetNewApplicationResponseProto (GetNewApplicationResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationIdProto as YarnProtos (ApplicationIdProto)
import qualified Hadoop.Protos.YarnProtos.ResourceProto as YarnProtos (ResourceProto)
 
data GetNewApplicationResponseProto = GetNewApplicationResponseProto{application_id :: !(P'.Maybe YarnProtos.ApplicationIdProto),
                                                                     maximumCapability :: !(P'.Maybe YarnProtos.ResourceProto)}
                                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetNewApplicationResponseProto where
  mergeAppend (GetNewApplicationResponseProto x'1 x'2) (GetNewApplicationResponseProto y'1 y'2)
   = GetNewApplicationResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default GetNewApplicationResponseProto where
  defaultValue = GetNewApplicationResponseProto P'.defaultValue P'.defaultValue
 
instance P'.Wire GetNewApplicationResponseProto where
  wireSize ft' self'@(GetNewApplicationResponseProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePut ft' self'@(GetNewApplicationResponseProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 11 x'1
             P'.wirePutOpt 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{application_id = P'.mergeAppend (application_id old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{maximumCapability = P'.mergeAppend (maximumCapability old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetNewApplicationResponseProto) GetNewApplicationResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetNewApplicationResponseProto
 
instance P'.ReflectDescriptor GetNewApplicationResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.GetNewApplicationResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"GetNewApplicationResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"GetNewApplicationResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetNewApplicationResponseProto.application_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetNewApplicationResponseProto\"], baseName' = FName \"application_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetNewApplicationResponseProto.maximumCapability\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetNewApplicationResponseProto\"], baseName' = FName \"maximumCapability\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetNewApplicationResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetNewApplicationResponseProto where
  textPut msg
   = do
       P'.tellT "application_id" (application_id msg)
       P'.tellT "maximumCapability" (maximumCapability msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'application_id, parse'maximumCapability]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'application_id
         = P'.try
            (do
               v <- P'.getT "application_id"
               Prelude'.return (\ o -> o{application_id = v}))
        parse'maximumCapability
         = P'.try
            (do
               v <- P'.getT "maximumCapability"
               Prelude'.return (\ o -> o{maximumCapability = v}))