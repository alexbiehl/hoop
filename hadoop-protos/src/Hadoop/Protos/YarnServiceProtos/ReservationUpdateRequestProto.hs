{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.ReservationUpdateRequestProto (ReservationUpdateRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ReservationDefinitionProto as YarnProtos (ReservationDefinitionProto)
import qualified Hadoop.Protos.YarnProtos.ReservationIdProto as YarnProtos (ReservationIdProto)
 
data ReservationUpdateRequestProto = ReservationUpdateRequestProto{reservation_definition ::
                                                                   !(P'.Maybe YarnProtos.ReservationDefinitionProto),
                                                                   reservation_id :: !(P'.Maybe YarnProtos.ReservationIdProto)}
                                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ReservationUpdateRequestProto where
  mergeAppend (ReservationUpdateRequestProto x'1 x'2) (ReservationUpdateRequestProto y'1 y'2)
   = ReservationUpdateRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ReservationUpdateRequestProto where
  defaultValue = ReservationUpdateRequestProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ReservationUpdateRequestProto where
  wireSize ft' self'@(ReservationUpdateRequestProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePut ft' self'@(ReservationUpdateRequestProto x'1 x'2)
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
                    (\ !new'Field ->
                      old'Self{reservation_definition = P'.mergeAppend (reservation_definition old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{reservation_id = P'.mergeAppend (reservation_id old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ReservationUpdateRequestProto) ReservationUpdateRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB ReservationUpdateRequestProto
 
instance P'.ReflectDescriptor ReservationUpdateRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ReservationUpdateRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"ReservationUpdateRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"ReservationUpdateRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationUpdateRequestProto.reservation_definition\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"ReservationUpdateRequestProto\"], baseName' = FName \"reservation_definition\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ReservationDefinitionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ReservationDefinitionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationUpdateRequestProto.reservation_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"ReservationUpdateRequestProto\"], baseName' = FName \"reservation_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ReservationIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ReservationIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ReservationUpdateRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ReservationUpdateRequestProto where
  textPut msg
   = do
       P'.tellT "reservation_definition" (reservation_definition msg)
       P'.tellT "reservation_id" (reservation_id msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'reservation_definition, parse'reservation_id]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'reservation_definition
         = P'.try
            (do
               v <- P'.getT "reservation_definition"
               Prelude'.return (\ o -> o{reservation_definition = v}))
        parse'reservation_id
         = P'.try
            (do
               v <- P'.getT "reservation_id"
               Prelude'.return (\ o -> o{reservation_id = v}))