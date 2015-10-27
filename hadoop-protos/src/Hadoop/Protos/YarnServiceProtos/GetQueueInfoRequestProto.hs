{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.GetQueueInfoRequestProto (GetQueueInfoRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data GetQueueInfoRequestProto = GetQueueInfoRequestProto{queueName :: !(P'.Maybe P'.Utf8),
                                                         includeApplications :: !(P'.Maybe P'.Bool),
                                                         includeChildQueues :: !(P'.Maybe P'.Bool),
                                                         recursive :: !(P'.Maybe P'.Bool)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetQueueInfoRequestProto where
  mergeAppend (GetQueueInfoRequestProto x'1 x'2 x'3 x'4) (GetQueueInfoRequestProto y'1 y'2 y'3 y'4)
   = GetQueueInfoRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default GetQueueInfoRequestProto where
  defaultValue = GetQueueInfoRequestProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire GetQueueInfoRequestProto where
  wireSize ft' self'@(GetQueueInfoRequestProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 8 x'2 + P'.wireSizeOpt 1 8 x'3 + P'.wireSizeOpt 1 8 x'4)
  wirePut ft' self'@(GetQueueInfoRequestProto x'1 x'2 x'3 x'4)
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
             P'.wirePutOpt 16 8 x'2
             P'.wirePutOpt 24 8 x'3
             P'.wirePutOpt 32 8 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{queueName = Prelude'.Just new'Field}) (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{includeApplications = Prelude'.Just new'Field}) (P'.wireGet 8)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{includeChildQueues = Prelude'.Just new'Field}) (P'.wireGet 8)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{recursive = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetQueueInfoRequestProto) GetQueueInfoRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetQueueInfoRequestProto
 
instance P'.ReflectDescriptor GetQueueInfoRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16, 24, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.GetQueueInfoRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"GetQueueInfoRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"GetQueueInfoRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetQueueInfoRequestProto.queueName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetQueueInfoRequestProto\"], baseName' = FName \"queueName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetQueueInfoRequestProto.includeApplications\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetQueueInfoRequestProto\"], baseName' = FName \"includeApplications\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetQueueInfoRequestProto.includeChildQueues\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetQueueInfoRequestProto\"], baseName' = FName \"includeChildQueues\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetQueueInfoRequestProto.recursive\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetQueueInfoRequestProto\"], baseName' = FName \"recursive\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetQueueInfoRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetQueueInfoRequestProto where
  textPut msg
   = do
       P'.tellT "queueName" (queueName msg)
       P'.tellT "includeApplications" (includeApplications msg)
       P'.tellT "includeChildQueues" (includeChildQueues msg)
       P'.tellT "recursive" (recursive msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'queueName, parse'includeApplications, parse'includeChildQueues, parse'recursive])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'queueName
         = P'.try
            (do
               v <- P'.getT "queueName"
               Prelude'.return (\ o -> o{queueName = v}))
        parse'includeApplications
         = P'.try
            (do
               v <- P'.getT "includeApplications"
               Prelude'.return (\ o -> o{includeApplications = v}))
        parse'includeChildQueues
         = P'.try
            (do
               v <- P'.getT "includeChildQueues"
               Prelude'.return (\ o -> o{includeChildQueues = v}))
        parse'recursive
         = P'.try
            (do
               v <- P'.getT "recursive"
               Prelude'.return (\ o -> o{recursive = v}))