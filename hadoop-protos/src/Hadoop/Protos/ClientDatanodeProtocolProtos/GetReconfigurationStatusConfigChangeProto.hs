{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientDatanodeProtocolProtos.GetReconfigurationStatusConfigChangeProto
       (GetReconfigurationStatusConfigChangeProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data GetReconfigurationStatusConfigChangeProto = GetReconfigurationStatusConfigChangeProto{name :: !(P'.Utf8),
                                                                                           oldValue :: !(P'.Utf8),
                                                                                           newValue :: !(P'.Maybe P'.Utf8),
                                                                                           errorMessage :: !(P'.Maybe P'.Utf8)}
                                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetReconfigurationStatusConfigChangeProto where
  mergeAppend (GetReconfigurationStatusConfigChangeProto x'1 x'2 x'3 x'4)
   (GetReconfigurationStatusConfigChangeProto y'1 y'2 y'3 y'4)
   = GetReconfigurationStatusConfigChangeProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
 
instance P'.Default GetReconfigurationStatusConfigChangeProto where
  defaultValue = GetReconfigurationStatusConfigChangeProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire GetReconfigurationStatusConfigChangeProto where
  wireSize ft' self'@(GetReconfigurationStatusConfigChangeProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 9 x'4)
  wirePut ft' self'@(GetReconfigurationStatusConfigChangeProto x'1 x'2 x'3 x'4)
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
             P'.wirePutReq 18 9 x'2
             P'.wirePutOpt 26 9 x'3
             P'.wirePutOpt 34 9 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{name = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{oldValue = new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{newValue = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{errorMessage = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetReconfigurationStatusConfigChangeProto) GetReconfigurationStatusConfigChangeProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetReconfigurationStatusConfigChangeProto
 
instance P'.ReflectDescriptor GetReconfigurationStatusConfigChangeProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18]) (P'.fromDistinctAscList [10, 18, 26, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.GetReconfigurationStatusConfigChangeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientDatanodeProtocolProtos\"], baseName = MName \"GetReconfigurationStatusConfigChangeProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientDatanodeProtocolProtos\",\"GetReconfigurationStatusConfigChangeProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetReconfigurationStatusConfigChangeProto.name\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientDatanodeProtocolProtos\",MName \"GetReconfigurationStatusConfigChangeProto\"], baseName' = FName \"name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetReconfigurationStatusConfigChangeProto.oldValue\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientDatanodeProtocolProtos\",MName \"GetReconfigurationStatusConfigChangeProto\"], baseName' = FName \"oldValue\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetReconfigurationStatusConfigChangeProto.newValue\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientDatanodeProtocolProtos\",MName \"GetReconfigurationStatusConfigChangeProto\"], baseName' = FName \"newValue\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetReconfigurationStatusConfigChangeProto.errorMessage\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientDatanodeProtocolProtos\",MName \"GetReconfigurationStatusConfigChangeProto\"], baseName' = FName \"errorMessage\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetReconfigurationStatusConfigChangeProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetReconfigurationStatusConfigChangeProto where
  textPut msg
   = do
       P'.tellT "name" (name msg)
       P'.tellT "oldValue" (oldValue msg)
       P'.tellT "newValue" (newValue msg)
       P'.tellT "errorMessage" (errorMessage msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'name, parse'oldValue, parse'newValue, parse'errorMessage]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'name
         = P'.try
            (do
               v <- P'.getT "name"
               Prelude'.return (\ o -> o{name = v}))
        parse'oldValue
         = P'.try
            (do
               v <- P'.getT "oldValue"
               Prelude'.return (\ o -> o{oldValue = v}))
        parse'newValue
         = P'.try
            (do
               v <- P'.getT "newValue"
               Prelude'.return (\ o -> o{newValue = v}))
        parse'errorMessage
         = P'.try
            (do
               v <- P'.getT "errorMessage"
               Prelude'.return (\ o -> o{errorMessage = v}))