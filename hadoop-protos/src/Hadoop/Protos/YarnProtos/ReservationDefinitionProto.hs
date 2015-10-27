{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.ReservationDefinitionProto (ReservationDefinitionProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ReservationRequestsProto as YarnProtos (ReservationRequestsProto)
 
data ReservationDefinitionProto = ReservationDefinitionProto{reservation_requests ::
                                                             !(P'.Maybe YarnProtos.ReservationRequestsProto),
                                                             arrival :: !(P'.Maybe P'.Int64), deadline :: !(P'.Maybe P'.Int64),
                                                             reservation_name :: !(P'.Maybe P'.Utf8)}
                                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ReservationDefinitionProto where
  mergeAppend (ReservationDefinitionProto x'1 x'2 x'3 x'4) (ReservationDefinitionProto y'1 y'2 y'3 y'4)
   = ReservationDefinitionProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default ReservationDefinitionProto where
  defaultValue = ReservationDefinitionProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire ReservationDefinitionProto where
  wireSize ft' self'@(ReservationDefinitionProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 3 x'2 + P'.wireSizeOpt 1 3 x'3 + P'.wireSizeOpt 1 9 x'4)
  wirePut ft' self'@(ReservationDefinitionProto x'1 x'2 x'3 x'4)
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
             P'.wirePutOpt 16 3 x'2
             P'.wirePutOpt 24 3 x'3
             P'.wirePutOpt 34 9 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{reservation_requests = P'.mergeAppend (reservation_requests old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{arrival = Prelude'.Just new'Field}) (P'.wireGet 3)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{deadline = Prelude'.Just new'Field}) (P'.wireGet 3)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{reservation_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ReservationDefinitionProto) ReservationDefinitionProto where
  getVal m' f' = f' m'
 
instance P'.GPB ReservationDefinitionProto
 
instance P'.ReflectDescriptor ReservationDefinitionProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16, 24, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ReservationDefinitionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ReservationDefinitionProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"ReservationDefinitionProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationDefinitionProto.reservation_requests\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ReservationDefinitionProto\"], baseName' = FName \"reservation_requests\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ReservationRequestsProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ReservationRequestsProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationDefinitionProto.arrival\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ReservationDefinitionProto\"], baseName' = FName \"arrival\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationDefinitionProto.deadline\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ReservationDefinitionProto\"], baseName' = FName \"deadline\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationDefinitionProto.reservation_name\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ReservationDefinitionProto\"], baseName' = FName \"reservation_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ReservationDefinitionProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ReservationDefinitionProto where
  textPut msg
   = do
       P'.tellT "reservation_requests" (reservation_requests msg)
       P'.tellT "arrival" (arrival msg)
       P'.tellT "deadline" (deadline msg)
       P'.tellT "reservation_name" (reservation_name msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'reservation_requests, parse'arrival, parse'deadline, parse'reservation_name]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'reservation_requests
         = P'.try
            (do
               v <- P'.getT "reservation_requests"
               Prelude'.return (\ o -> o{reservation_requests = v}))
        parse'arrival
         = P'.try
            (do
               v <- P'.getT "arrival"
               Prelude'.return (\ o -> o{arrival = v}))
        parse'deadline
         = P'.try
            (do
               v <- P'.getT "deadline"
               Prelude'.return (\ o -> o{deadline = v}))
        parse'reservation_name
         = P'.try
            (do
               v <- P'.getT "reservation_name"
               Prelude'.return (\ o -> o{reservation_name = v}))