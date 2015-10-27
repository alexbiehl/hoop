{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.ReservationRequestsProto (ReservationRequestsProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ReservationRequestInterpreterProto as YarnProtos (ReservationRequestInterpreterProto)
import qualified Hadoop.Protos.YarnProtos.ReservationRequestProto as YarnProtos (ReservationRequestProto)
 
data ReservationRequestsProto = ReservationRequestsProto{reservation_resources :: !(P'.Seq YarnProtos.ReservationRequestProto),
                                                         interpreter :: !(P'.Maybe YarnProtos.ReservationRequestInterpreterProto)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ReservationRequestsProto where
  mergeAppend (ReservationRequestsProto x'1 x'2) (ReservationRequestsProto y'1 y'2)
   = ReservationRequestsProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ReservationRequestsProto where
  defaultValue = ReservationRequestsProto P'.defaultValue (Prelude'.Just (Prelude'.read "R_ALL"))
 
instance P'.Wire ReservationRequestsProto where
  wireSize ft' self'@(ReservationRequestsProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeOpt 1 14 x'2)
  wirePut ft' self'@(ReservationRequestsProto x'1 x'2)
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
             P'.wirePutOpt 16 14 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{reservation_resources = P'.append (reservation_resources old'Self) new'Field})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{interpreter = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ReservationRequestsProto) ReservationRequestsProto where
  getVal m' f' = f' m'
 
instance P'.GPB ReservationRequestsProto
 
instance P'.ReflectDescriptor ReservationRequestsProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ReservationRequestsProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ReservationRequestsProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"ReservationRequestsProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationRequestsProto.reservation_resources\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ReservationRequestsProto\"], baseName' = FName \"reservation_resources\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ReservationRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ReservationRequestProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReservationRequestsProto.interpreter\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ReservationRequestsProto\"], baseName' = FName \"interpreter\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ReservationRequestInterpreterProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ReservationRequestInterpreterProto\"}), hsRawDefault = Just \"R_ALL\", hsDefault = Just (HsDef'Enum \"R_ALL\")}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ReservationRequestsProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ReservationRequestsProto where
  textPut msg
   = do
       P'.tellT "reservation_resources" (reservation_resources msg)
       P'.tellT "interpreter" (interpreter msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'reservation_resources, parse'interpreter]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'reservation_resources
         = P'.try
            (do
               v <- P'.getT "reservation_resources"
               Prelude'.return (\ o -> o{reservation_resources = P'.append (reservation_resources o) v}))
        parse'interpreter
         = P'.try
            (do
               v <- P'.getT "interpreter"
               Prelude'.return (\ o -> o{interpreter = v}))