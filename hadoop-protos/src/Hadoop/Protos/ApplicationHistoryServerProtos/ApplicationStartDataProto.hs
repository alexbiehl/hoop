{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ApplicationHistoryServerProtos.ApplicationStartDataProto (ApplicationStartDataProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationIdProto as YarnProtos (ApplicationIdProto)
 
data ApplicationStartDataProto = ApplicationStartDataProto{application_id :: !(P'.Maybe YarnProtos.ApplicationIdProto),
                                                           application_name :: !(P'.Maybe P'.Utf8),
                                                           application_type :: !(P'.Maybe P'.Utf8), user :: !(P'.Maybe P'.Utf8),
                                                           queue :: !(P'.Maybe P'.Utf8), submit_time :: !(P'.Maybe P'.Int64),
                                                           start_time :: !(P'.Maybe P'.Int64)}
                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ApplicationStartDataProto where
  mergeAppend (ApplicationStartDataProto x'1 x'2 x'3 x'4 x'5 x'6 x'7) (ApplicationStartDataProto y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = ApplicationStartDataProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
 
instance P'.Default ApplicationStartDataProto where
  defaultValue
   = ApplicationStartDataProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
 
instance P'.Wire ApplicationStartDataProto where
  wireSize ft' self'@(ApplicationStartDataProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeOpt 1 3 x'6
             + P'.wireSizeOpt 1 3 x'7)
  wirePut ft' self'@(ApplicationStartDataProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
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
             P'.wirePutOpt 18 9 x'2
             P'.wirePutOpt 26 9 x'3
             P'.wirePutOpt 34 9 x'4
             P'.wirePutOpt 42 9 x'5
             P'.wirePutOpt 48 3 x'6
             P'.wirePutOpt 56 3 x'7
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
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{application_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{application_type = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{user = Prelude'.Just new'Field}) (P'.wireGet 9)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{queue = Prelude'.Just new'Field}) (P'.wireGet 9)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{submit_time = Prelude'.Just new'Field}) (P'.wireGet 3)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{start_time = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ApplicationStartDataProto) ApplicationStartDataProto where
  getVal m' f' = f' m'
 
instance P'.GPB ApplicationStartDataProto
 
instance P'.ReflectDescriptor ApplicationStartDataProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 42, 48, 56])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationStartDataProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ApplicationHistoryServerProtos\"], baseName = MName \"ApplicationStartDataProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ApplicationHistoryServerProtos\",\"ApplicationStartDataProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationStartDataProto.application_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ApplicationStartDataProto\"], baseName' = FName \"application_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationStartDataProto.application_name\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ApplicationStartDataProto\"], baseName' = FName \"application_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationStartDataProto.application_type\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ApplicationStartDataProto\"], baseName' = FName \"application_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationStartDataProto.user\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ApplicationStartDataProto\"], baseName' = FName \"user\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationStartDataProto.queue\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ApplicationStartDataProto\"], baseName' = FName \"queue\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationStartDataProto.submit_time\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ApplicationStartDataProto\"], baseName' = FName \"submit_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationStartDataProto.start_time\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ApplicationStartDataProto\"], baseName' = FName \"start_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ApplicationStartDataProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ApplicationStartDataProto where
  textPut msg
   = do
       P'.tellT "application_id" (application_id msg)
       P'.tellT "application_name" (application_name msg)
       P'.tellT "application_type" (application_type msg)
       P'.tellT "user" (user msg)
       P'.tellT "queue" (queue msg)
       P'.tellT "submit_time" (submit_time msg)
       P'.tellT "start_time" (start_time msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'application_id, parse'application_name, parse'application_type, parse'user, parse'queue, parse'submit_time,
                   parse'start_time])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'application_id
         = P'.try
            (do
               v <- P'.getT "application_id"
               Prelude'.return (\ o -> o{application_id = v}))
        parse'application_name
         = P'.try
            (do
               v <- P'.getT "application_name"
               Prelude'.return (\ o -> o{application_name = v}))
        parse'application_type
         = P'.try
            (do
               v <- P'.getT "application_type"
               Prelude'.return (\ o -> o{application_type = v}))
        parse'user
         = P'.try
            (do
               v <- P'.getT "user"
               Prelude'.return (\ o -> o{user = v}))
        parse'queue
         = P'.try
            (do
               v <- P'.getT "queue"
               Prelude'.return (\ o -> o{queue = v}))
        parse'submit_time
         = P'.try
            (do
               v <- P'.getT "submit_time"
               Prelude'.return (\ o -> o{submit_time = v}))
        parse'start_time
         = P'.try
            (do
               v <- P'.getT "start_time"
               Prelude'.return (\ o -> o{start_time = v}))