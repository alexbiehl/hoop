{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.AllocateRequestProto (AllocateRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ContainerIdProto as YarnProtos (ContainerIdProto)
import qualified Hadoop.Protos.YarnProtos.ContainerResourceIncreaseRequestProto as YarnProtos
       (ContainerResourceIncreaseRequestProto)
import qualified Hadoop.Protos.YarnProtos.ResourceBlacklistRequestProto as YarnProtos (ResourceBlacklistRequestProto)
import qualified Hadoop.Protos.YarnProtos.ResourceRequestProto as YarnProtos (ResourceRequestProto)
 
data AllocateRequestProto = AllocateRequestProto{ask :: !(P'.Seq YarnProtos.ResourceRequestProto),
                                                 release :: !(P'.Seq YarnProtos.ContainerIdProto),
                                                 blacklist_request :: !(P'.Maybe YarnProtos.ResourceBlacklistRequestProto),
                                                 response_id :: !(P'.Maybe P'.Int32), progress :: !(P'.Maybe P'.Float),
                                                 increase_request :: !(P'.Seq YarnProtos.ContainerResourceIncreaseRequestProto)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AllocateRequestProto where
  mergeAppend (AllocateRequestProto x'1 x'2 x'3 x'4 x'5 x'6) (AllocateRequestProto y'1 y'2 y'3 y'4 y'5 y'6)
   = AllocateRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
 
instance P'.Default AllocateRequestProto where
  defaultValue
   = AllocateRequestProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire AllocateRequestProto where
  wireSize ft' self'@(AllocateRequestProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeRep 1 11 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 5 x'4 +
             P'.wireSizeOpt 1 2 x'5
             + P'.wireSizeRep 1 11 x'6)
  wirePut ft' self'@(AllocateRequestProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 11 x'1
             P'.wirePutRep 18 11 x'2
             P'.wirePutOpt 26 11 x'3
             P'.wirePutOpt 32 5 x'4
             P'.wirePutOpt 45 2 x'5
             P'.wirePutRep 50 11 x'6
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{ask = P'.append (ask old'Self) new'Field}) (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{release = P'.append (release old'Self) new'Field}) (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{blacklist_request = P'.mergeAppend (blacklist_request old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{response_id = Prelude'.Just new'Field}) (P'.wireGet 5)
             45 -> Prelude'.fmap (\ !new'Field -> old'Self{progress = Prelude'.Just new'Field}) (P'.wireGet 2)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{increase_request = P'.append (increase_request old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> AllocateRequestProto) AllocateRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB AllocateRequestProto
 
instance P'.ReflectDescriptor AllocateRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 32, 45, 50])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.AllocateRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"AllocateRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"AllocateRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateRequestProto.ask\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateRequestProto\"], baseName' = FName \"ask\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceRequestProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateRequestProto.release\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateRequestProto\"], baseName' = FName \"release\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateRequestProto.blacklist_request\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateRequestProto\"], baseName' = FName \"blacklist_request\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceBlacklistRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceBlacklistRequestProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateRequestProto.response_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateRequestProto\"], baseName' = FName \"response_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateRequestProto.progress\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateRequestProto\"], baseName' = FName \"progress\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 45}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 2}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AllocateRequestProto.increase_request\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"AllocateRequestProto\"], baseName' = FName \"increase_request\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerResourceIncreaseRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerResourceIncreaseRequestProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType AllocateRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg AllocateRequestProto where
  textPut msg
   = do
       P'.tellT "ask" (ask msg)
       P'.tellT "release" (release msg)
       P'.tellT "blacklist_request" (blacklist_request msg)
       P'.tellT "response_id" (response_id msg)
       P'.tellT "progress" (progress msg)
       P'.tellT "increase_request" (increase_request msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'ask, parse'release, parse'blacklist_request, parse'response_id, parse'progress, parse'increase_request])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'ask
         = P'.try
            (do
               v <- P'.getT "ask"
               Prelude'.return (\ o -> o{ask = P'.append (ask o) v}))
        parse'release
         = P'.try
            (do
               v <- P'.getT "release"
               Prelude'.return (\ o -> o{release = P'.append (release o) v}))
        parse'blacklist_request
         = P'.try
            (do
               v <- P'.getT "blacklist_request"
               Prelude'.return (\ o -> o{blacklist_request = v}))
        parse'response_id
         = P'.try
            (do
               v <- P'.getT "response_id"
               Prelude'.return (\ o -> o{response_id = v}))
        parse'progress
         = P'.try
            (do
               v <- P'.getT "progress"
               Prelude'.return (\ o -> o{progress = v}))
        parse'increase_request
         = P'.try
            (do
               v <- P'.getT "increase_request"
               Prelude'.return (\ o -> o{increase_request = P'.append (increase_request o) v}))