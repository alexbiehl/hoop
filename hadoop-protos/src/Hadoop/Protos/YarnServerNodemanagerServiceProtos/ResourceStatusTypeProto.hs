{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerNodemanagerServiceProtos.ResourceStatusTypeProto (ResourceStatusTypeProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ResourceStatusTypeProto = FETCH_PENDING
                             | FETCH_SUCCESS
                             | FETCH_FAILURE
                             deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ResourceStatusTypeProto
 
instance Prelude'.Bounded ResourceStatusTypeProto where
  minBound = FETCH_PENDING
  maxBound = FETCH_FAILURE
 
instance P'.Default ResourceStatusTypeProto where
  defaultValue = FETCH_PENDING
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe ResourceStatusTypeProto
toMaybe'Enum 1 = Prelude'.Just FETCH_PENDING
toMaybe'Enum 2 = Prelude'.Just FETCH_SUCCESS
toMaybe'Enum 3 = Prelude'.Just FETCH_FAILURE
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum ResourceStatusTypeProto where
  fromEnum FETCH_PENDING = 1
  fromEnum FETCH_SUCCESS = 2
  fromEnum FETCH_FAILURE = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnServerNodemanagerServiceProtos.ResourceStatusTypeProto")
      . toMaybe'Enum
  succ FETCH_PENDING = FETCH_SUCCESS
  succ FETCH_SUCCESS = FETCH_FAILURE
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Hadoop.Protos.YarnServerNodemanagerServiceProtos.ResourceStatusTypeProto"
  pred FETCH_SUCCESS = FETCH_PENDING
  pred FETCH_FAILURE = FETCH_SUCCESS
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Hadoop.Protos.YarnServerNodemanagerServiceProtos.ResourceStatusTypeProto"
 
instance P'.Wire ResourceStatusTypeProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB ResourceStatusTypeProto
 
instance P'.MessageAPI msg' (msg' -> ResourceStatusTypeProto) ResourceStatusTypeProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum ResourceStatusTypeProto where
  reflectEnum = [(1, "FETCH_PENDING", FETCH_PENDING), (2, "FETCH_SUCCESS", FETCH_SUCCESS), (3, "FETCH_FAILURE", FETCH_FAILURE)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.yarn.ResourceStatusTypeProto") ["Hadoop", "Protos"] ["YarnServerNodemanagerServiceProtos"]
        "ResourceStatusTypeProto")
      ["Hadoop", "Protos", "YarnServerNodemanagerServiceProtos", "ResourceStatusTypeProto.hs"]
      [(1, "FETCH_PENDING"), (2, "FETCH_SUCCESS"), (3, "FETCH_FAILURE")]
 
instance P'.TextType ResourceStatusTypeProto where
  tellT = P'.tellShow
  getT = P'.getRead