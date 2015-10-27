{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.ReservationDeleteResponseProto (ReservationDeleteResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ReservationDeleteResponseProto = ReservationDeleteResponseProto{}
                                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ReservationDeleteResponseProto where
  mergeAppend ReservationDeleteResponseProto ReservationDeleteResponseProto = ReservationDeleteResponseProto
 
instance P'.Default ReservationDeleteResponseProto where
  defaultValue = ReservationDeleteResponseProto
 
instance P'.Wire ReservationDeleteResponseProto where
  wireSize ft' self'@(ReservationDeleteResponseProto)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = 0
  wirePut ft' self'@(ReservationDeleteResponseProto)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             Prelude'.return ()
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ReservationDeleteResponseProto) ReservationDeleteResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB ReservationDeleteResponseProto
 
instance P'.ReflectDescriptor ReservationDeleteResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ReservationDeleteResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"ReservationDeleteResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"ReservationDeleteResponseProto.hs\"], isGroup = False, fields = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ReservationDeleteResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ReservationDeleteResponseProto where
  textPut msg = Prelude'.return ()
  textGet = Prelude'.return P'.defaultValue