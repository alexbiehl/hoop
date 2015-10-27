{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.LogAggregationContextProto (LogAggregationContextProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data LogAggregationContextProto = LogAggregationContextProto{include_pattern :: !(P'.Maybe P'.Utf8),
                                                             exclude_pattern :: !(P'.Maybe P'.Utf8),
                                                             rolled_logs_include_pattern :: !(P'.Maybe P'.Utf8),
                                                             rolled_logs_exclude_pattern :: !(P'.Maybe P'.Utf8)}
                                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable LogAggregationContextProto where
  mergeAppend (LogAggregationContextProto x'1 x'2 x'3 x'4) (LogAggregationContextProto y'1 y'2 y'3 y'4)
   = LogAggregationContextProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default LogAggregationContextProto where
  defaultValue
   = LogAggregationContextProto (Prelude'.Just (P'.Utf8 (P'.pack ".*"))) (Prelude'.Just (P'.Utf8 (P'.pack "")))
      (Prelude'.Just (P'.Utf8 (P'.pack "")))
      (Prelude'.Just (P'.Utf8 (P'.pack ".*")))
 
instance P'.Wire LogAggregationContextProto where
  wireSize ft' self'@(LogAggregationContextProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 9 x'4)
  wirePut ft' self'@(LogAggregationContextProto x'1 x'2 x'3 x'4)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{include_pattern = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{exclude_pattern = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{rolled_logs_include_pattern = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{rolled_logs_exclude_pattern = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> LogAggregationContextProto) LogAggregationContextProto where
  getVal m' f' = f' m'
 
instance P'.GPB LogAggregationContextProto
 
instance P'.ReflectDescriptor LogAggregationContextProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.LogAggregationContextProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"LogAggregationContextProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"LogAggregationContextProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LogAggregationContextProto.include_pattern\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"LogAggregationContextProto\"], baseName' = FName \"include_pattern\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Just \".*\", hsDefault = Just (HsDef'ByteString \".*\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LogAggregationContextProto.exclude_pattern\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"LogAggregationContextProto\"], baseName' = FName \"exclude_pattern\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Just \"\", hsDefault = Just (HsDef'ByteString \"\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LogAggregationContextProto.rolled_logs_include_pattern\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"LogAggregationContextProto\"], baseName' = FName \"rolled_logs_include_pattern\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Just \"\", hsDefault = Just (HsDef'ByteString \"\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LogAggregationContextProto.rolled_logs_exclude_pattern\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"LogAggregationContextProto\"], baseName' = FName \"rolled_logs_exclude_pattern\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Just \".*\", hsDefault = Just (HsDef'ByteString \".*\")}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType LogAggregationContextProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg LogAggregationContextProto where
  textPut msg
   = do
       P'.tellT "include_pattern" (include_pattern msg)
       P'.tellT "exclude_pattern" (exclude_pattern msg)
       P'.tellT "rolled_logs_include_pattern" (rolled_logs_include_pattern msg)
       P'.tellT "rolled_logs_exclude_pattern" (rolled_logs_exclude_pattern msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'include_pattern, parse'exclude_pattern, parse'rolled_logs_include_pattern,
                   parse'rolled_logs_exclude_pattern])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'include_pattern
         = P'.try
            (do
               v <- P'.getT "include_pattern"
               Prelude'.return (\ o -> o{include_pattern = v}))
        parse'exclude_pattern
         = P'.try
            (do
               v <- P'.getT "exclude_pattern"
               Prelude'.return (\ o -> o{exclude_pattern = v}))
        parse'rolled_logs_include_pattern
         = P'.try
            (do
               v <- P'.getT "rolled_logs_include_pattern"
               Prelude'.return (\ o -> o{rolled_logs_include_pattern = v}))
        parse'rolled_logs_exclude_pattern
         = P'.try
            (do
               v <- P'.getT "rolled_logs_exclude_pattern"
               Prelude'.return (\ o -> o{rolled_logs_exclude_pattern = v}))