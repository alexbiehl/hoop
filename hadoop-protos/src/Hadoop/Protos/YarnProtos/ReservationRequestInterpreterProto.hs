{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.ReservationRequestInterpreterProto (ReservationRequestInterpreterProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ReservationRequestInterpreterProto = R_ANY
                                        | R_ALL
                                        | R_ORDER
                                        | R_ORDER_NO_GAP
                                        deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable,
                                                  Prelude'.Data)
 
instance P'.Mergeable ReservationRequestInterpreterProto
 
instance Prelude'.Bounded ReservationRequestInterpreterProto where
  minBound = R_ANY
  maxBound = R_ORDER_NO_GAP
 
instance P'.Default ReservationRequestInterpreterProto where
  defaultValue = R_ANY
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe ReservationRequestInterpreterProto
toMaybe'Enum 0 = Prelude'.Just R_ANY
toMaybe'Enum 1 = Prelude'.Just R_ALL
toMaybe'Enum 2 = Prelude'.Just R_ORDER
toMaybe'Enum 3 = Prelude'.Just R_ORDER_NO_GAP
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum ReservationRequestInterpreterProto where
  fromEnum R_ANY = 0
  fromEnum R_ALL = 1
  fromEnum R_ORDER = 2
  fromEnum R_ORDER_NO_GAP = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnProtos.ReservationRequestInterpreterProto")
      . toMaybe'Enum
  succ R_ANY = R_ALL
  succ R_ALL = R_ORDER
  succ R_ORDER = R_ORDER_NO_GAP
  succ _
   = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnProtos.ReservationRequestInterpreterProto"
  pred R_ALL = R_ANY
  pred R_ORDER = R_ALL
  pred R_ORDER_NO_GAP = R_ORDER
  pred _
   = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnProtos.ReservationRequestInterpreterProto"
 
instance P'.Wire ReservationRequestInterpreterProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB ReservationRequestInterpreterProto
 
instance P'.MessageAPI msg' (msg' -> ReservationRequestInterpreterProto) ReservationRequestInterpreterProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum ReservationRequestInterpreterProto where
  reflectEnum = [(0, "R_ANY", R_ANY), (1, "R_ALL", R_ALL), (2, "R_ORDER", R_ORDER), (3, "R_ORDER_NO_GAP", R_ORDER_NO_GAP)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.yarn.ReservationRequestInterpreterProto") ["Hadoop", "Protos"] ["YarnProtos"]
        "ReservationRequestInterpreterProto")
      ["Hadoop", "Protos", "YarnProtos", "ReservationRequestInterpreterProto.hs"]
      [(0, "R_ANY"), (1, "R_ALL"), (2, "R_ORDER"), (3, "R_ORDER_NO_GAP")]
 
instance P'.TextType ReservationRequestInterpreterProto where
  tellT = P'.tellShow
  getT = P'.getRead