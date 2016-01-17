{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerResourceManagerRecoveryProtos.ReservationAllocationStateProto (ReservationAllocationStateProto(..))
       where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ReservationDefinitionProto as YarnProtos (ReservationDefinitionProto)
import qualified Hadoop.Protos.YarnServerResourceManagerRecoveryProtos.ResourceAllocationRequestProto
       as YarnServerResourceManagerRecoveryProtos (ResourceAllocationRequestProto)
 
data ReservationAllocationStateProto = ReservationAllocationStateProto{reservation_definition ::
                                                                       !(P'.Maybe YarnProtos.ReservationDefinitionProto),
                                                                       allocation_requests ::
                                                                       !(P'.Seq
                                                                          YarnServerResourceManagerRecoveryProtos.ResourceAllocationRequestProto),
                                                                       start_time :: !(P'.Maybe P'.Int64),
                                                                       end_time :: !(P'.Maybe P'.Int64),
                                                                       user :: !(P'.Maybe P'.Utf8),
                                                                       contains_gangs :: !(P'.Maybe P'.Bool),
                                                                       acceptance_timestamp :: !(P'.Maybe P'.Int64)}
                                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ReservationAllocationStateProto where
  mergeAppend (ReservationAllocationStateProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   (ReservationAllocationStateProto y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = ReservationAllocationStateProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
 
instance P'.Default ReservationAllocationStateProto where
  defaultValue
   = ReservationAllocationStateProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
 
instance P'.Wire ReservationAllocationStateProto where
  wireSize ft' self'@(ReservationAllocationStateProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeRep 1 11 x'2 + P'.wireSizeOpt 1 3 x'3 + P'.wireSizeOpt 1 3 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeOpt 1 8 x'6
             + P'.wireSizeOpt 1 3 x'7)
  wirePut ft' self'@(ReservationAllocationStateProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
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
             P'.wirePutRep 18 11 x'2
             P'.wirePutOpt 24 3 x'3
             P'.wirePutOpt 32 3 x'4
             P'.wirePutOpt 42 9 x'5
             P'.wirePutOpt 48 8 x'6
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
                    (\ !new'Field ->
                      old'Self{reservation_definition = P'.mergeAppend (reservation_definition old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{allocation_requests = P'.append (allocation_requests old'Self) new'Field})
                    (P'.wireGet 11)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{start_time = Prelude'.Just new'Field}) (P'.wireGet 3)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{end_time = Prelude'.Just new'Field}) (P'.wireGet 3)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{user = Prelude'.Just new'Field}) (P'.wireGet 9)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{contains_gangs = Prelude'.Just new'Field}) (P'.wireGet 8)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{acceptance_timestamp = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ReservationAllocationStateProto) ReservationAllocationStateProto where
  getVal m' f' = f' m'
 
instance P'.GPB ReservationAllocationStateProto
 
instance P'.ReflectDescriptor ReservationAllocationStateProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 24, 32, 42, 48, 56])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ReservationAllocationStateProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerResourceManagerRecoveryProtos\"], baseName = MName \"ReservationAllocationStateProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerResourceManagerRecoveryProtos\",\"ReservationAllocationStateProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationAllocationStateProto.reservation_definition\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ReservationAllocationStateProto\"], baseName' = FName \"reservation_definition\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ReservationDefinitionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ReservationDefinitionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationAllocationStateProto.allocation_requests\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ReservationAllocationStateProto\"], baseName' = FName \"allocation_requests\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceAllocationRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerResourceManagerRecoveryProtos\"], baseName = MName \"ResourceAllocationRequestProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationAllocationStateProto.start_time\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ReservationAllocationStateProto\"], baseName' = FName \"start_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationAllocationStateProto.end_time\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ReservationAllocationStateProto\"], baseName' = FName \"end_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationAllocationStateProto.user\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ReservationAllocationStateProto\"], baseName' = FName \"user\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationAllocationStateProto.contains_gangs\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ReservationAllocationStateProto\"], baseName' = FName \"contains_gangs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationAllocationStateProto.acceptance_timestamp\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"ReservationAllocationStateProto\"], baseName' = FName \"acceptance_timestamp\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ReservationAllocationStateProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ReservationAllocationStateProto where
  textPut msg
   = do
       P'.tellT "reservation_definition" (reservation_definition msg)
       P'.tellT "allocation_requests" (allocation_requests msg)
       P'.tellT "start_time" (start_time msg)
       P'.tellT "end_time" (end_time msg)
       P'.tellT "user" (user msg)
       P'.tellT "contains_gangs" (contains_gangs msg)
       P'.tellT "acceptance_timestamp" (acceptance_timestamp msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'reservation_definition, parse'allocation_requests, parse'start_time, parse'end_time, parse'user,
                   parse'contains_gangs, parse'acceptance_timestamp])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'reservation_definition
         = P'.try
            (do
               v <- P'.getT "reservation_definition"
               Prelude'.return (\ o -> o{reservation_definition = v}))
        parse'allocation_requests
         = P'.try
            (do
               v <- P'.getT "allocation_requests"
               Prelude'.return (\ o -> o{allocation_requests = P'.append (allocation_requests o) v}))
        parse'start_time
         = P'.try
            (do
               v <- P'.getT "start_time"
               Prelude'.return (\ o -> o{start_time = v}))
        parse'end_time
         = P'.try
            (do
               v <- P'.getT "end_time"
               Prelude'.return (\ o -> o{end_time = v}))
        parse'user
         = P'.try
            (do
               v <- P'.getT "user"
               Prelude'.return (\ o -> o{user = v}))
        parse'contains_gangs
         = P'.try
            (do
               v <- P'.getT "contains_gangs"
               Prelude'.return (\ o -> o{contains_gangs = v}))
        parse'acceptance_timestamp
         = P'.try
            (do
               v <- P'.getT "acceptance_timestamp"
               Prelude'.return (\ o -> o{acceptance_timestamp = v}))