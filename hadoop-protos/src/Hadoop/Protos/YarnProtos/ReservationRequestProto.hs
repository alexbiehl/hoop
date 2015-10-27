{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.ReservationRequestProto (ReservationRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ResourceProto as YarnProtos (ResourceProto)
 
data ReservationRequestProto = ReservationRequestProto{capability :: !(P'.Maybe YarnProtos.ResourceProto),
                                                       num_containers :: !(P'.Maybe P'.Int32), concurrency :: !(P'.Maybe P'.Int32),
                                                       duration :: !(P'.Maybe P'.Int64)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ReservationRequestProto where
  mergeAppend (ReservationRequestProto x'1 x'2 x'3 x'4) (ReservationRequestProto y'1 y'2 y'3 y'4)
   = ReservationRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default ReservationRequestProto where
  defaultValue = ReservationRequestProto P'.defaultValue (Prelude'.Just 1) (Prelude'.Just 1) (Prelude'.Just (-1))
 
instance P'.Wire ReservationRequestProto where
  wireSize ft' self'@(ReservationRequestProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 5 x'2 + P'.wireSizeOpt 1 5 x'3 + P'.wireSizeOpt 1 3 x'4)
  wirePut ft' self'@(ReservationRequestProto x'1 x'2 x'3 x'4)
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
             P'.wirePutOpt 16 5 x'2
             P'.wirePutOpt 24 5 x'3
             P'.wirePutOpt 32 3 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{capability = P'.mergeAppend (capability old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{num_containers = Prelude'.Just new'Field}) (P'.wireGet 5)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{concurrency = Prelude'.Just new'Field}) (P'.wireGet 5)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{duration = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ReservationRequestProto) ReservationRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB ReservationRequestProto
 
instance P'.ReflectDescriptor ReservationRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16, 24, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ReservationRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ReservationRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"ReservationRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationRequestProto.capability\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ReservationRequestProto\"], baseName' = FName \"capability\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationRequestProto.num_containers\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ReservationRequestProto\"], baseName' = FName \"num_containers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Just \"1\", hsDefault = Just (HsDef'Integer 1)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationRequestProto.concurrency\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ReservationRequestProto\"], baseName' = FName \"concurrency\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Just \"1\", hsDefault = Just (HsDef'Integer 1)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationRequestProto.duration\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ReservationRequestProto\"], baseName' = FName \"duration\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Just \"-1\", hsDefault = Just (HsDef'Integer (-1))}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ReservationRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ReservationRequestProto where
  textPut msg
   = do
       P'.tellT "capability" (capability msg)
       P'.tellT "num_containers" (num_containers msg)
       P'.tellT "concurrency" (concurrency msg)
       P'.tellT "duration" (duration msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'capability, parse'num_containers, parse'concurrency, parse'duration]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'capability
         = P'.try
            (do
               v <- P'.getT "capability"
               Prelude'.return (\ o -> o{capability = v}))
        parse'num_containers
         = P'.try
            (do
               v <- P'.getT "num_containers"
               Prelude'.return (\ o -> o{num_containers = v}))
        parse'concurrency
         = P'.try
            (do
               v <- P'.getT "concurrency"
               Prelude'.return (\ o -> o{concurrency = v}))
        parse'duration
         = P'.try
            (do
               v <- P'.getT "duration"
               Prelude'.return (\ o -> o{duration = v}))