{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.StringLocalResourceMapProto (StringLocalResourceMapProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.LocalResourceProto as YarnProtos (LocalResourceProto)
 
data StringLocalResourceMapProto = StringLocalResourceMapProto{key :: !(P'.Maybe P'.Utf8),
                                                               value :: !(P'.Maybe YarnProtos.LocalResourceProto)}
                                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable StringLocalResourceMapProto where
  mergeAppend (StringLocalResourceMapProto x'1 x'2) (StringLocalResourceMapProto y'1 y'2)
   = StringLocalResourceMapProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default StringLocalResourceMapProto where
  defaultValue = StringLocalResourceMapProto P'.defaultValue P'.defaultValue
 
instance P'.Wire StringLocalResourceMapProto where
  wireSize ft' self'@(StringLocalResourceMapProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePut ft' self'@(StringLocalResourceMapProto x'1 x'2)
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
             P'.wirePutOpt 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{key = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{value = P'.mergeAppend (value old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> StringLocalResourceMapProto) StringLocalResourceMapProto where
  getVal m' f' = f' m'
 
instance P'.GPB StringLocalResourceMapProto
 
instance P'.ReflectDescriptor StringLocalResourceMapProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.StringLocalResourceMapProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"StringLocalResourceMapProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"StringLocalResourceMapProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.StringLocalResourceMapProto.key\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"StringLocalResourceMapProto\"], baseName' = FName \"key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.StringLocalResourceMapProto.value\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"StringLocalResourceMapProto\"], baseName' = FName \"value\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.LocalResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"LocalResourceProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType StringLocalResourceMapProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg StringLocalResourceMapProto where
  textPut msg
   = do
       P'.tellT "key" (key msg)
       P'.tellT "value" (value msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'key, parse'value]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'key
         = P'.try
            (do
               v <- P'.getT "key"
               Prelude'.return (\ o -> o{key = v}))
        parse'value
         = P'.try
            (do
               v <- P'.getT "value"
               Prelude'.return (\ o -> o{value = v}))