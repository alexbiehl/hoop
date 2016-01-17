{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.RpcHeaderProtos.RpcSaslProto.SaslState (SaslState(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data SaslState = SUCCESS
               | NEGOTIATE
               | INITIATE
               | CHALLENGE
               | RESPONSE
               | WRAP
               deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SaslState
 
instance Prelude'.Bounded SaslState where
  minBound = SUCCESS
  maxBound = WRAP
 
instance P'.Default SaslState where
  defaultValue = SUCCESS
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe SaslState
toMaybe'Enum 0 = Prelude'.Just SUCCESS
toMaybe'Enum 1 = Prelude'.Just NEGOTIATE
toMaybe'Enum 2 = Prelude'.Just INITIATE
toMaybe'Enum 3 = Prelude'.Just CHALLENGE
toMaybe'Enum 4 = Prelude'.Just RESPONSE
toMaybe'Enum 5 = Prelude'.Just WRAP
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum SaslState where
  fromEnum SUCCESS = 0
  fromEnum NEGOTIATE = 1
  fromEnum INITIATE = 2
  fromEnum CHALLENGE = 3
  fromEnum RESPONSE = 4
  fromEnum WRAP = 5
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.RpcHeaderProtos.RpcSaslProto.SaslState")
      . toMaybe'Enum
  succ SUCCESS = NEGOTIATE
  succ NEGOTIATE = INITIATE
  succ INITIATE = CHALLENGE
  succ CHALLENGE = RESPONSE
  succ RESPONSE = WRAP
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.RpcHeaderProtos.RpcSaslProto.SaslState"
  pred NEGOTIATE = SUCCESS
  pred INITIATE = NEGOTIATE
  pred CHALLENGE = INITIATE
  pred RESPONSE = CHALLENGE
  pred WRAP = RESPONSE
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.RpcHeaderProtos.RpcSaslProto.SaslState"
 
instance P'.Wire SaslState where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB SaslState
 
instance P'.MessageAPI msg' (msg' -> SaslState) SaslState where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum SaslState where
  reflectEnum
   = [(0, "SUCCESS", SUCCESS), (1, "NEGOTIATE", NEGOTIATE), (2, "INITIATE", INITIATE), (3, "CHALLENGE", CHALLENGE),
      (4, "RESPONSE", RESPONSE), (5, "WRAP", WRAP)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.common.RpcSaslProto.SaslState") ["Hadoop", "Protos"] ["RpcHeaderProtos", "RpcSaslProto"]
        "SaslState")
      ["Hadoop", "Protos", "RpcHeaderProtos", "RpcSaslProto", "SaslState.hs"]
      [(0, "SUCCESS"), (1, "NEGOTIATE"), (2, "INITIATE"), (3, "CHALLENGE"), (4, "RESPONSE"), (5, "WRAP")]
 
instance P'.TextType SaslState where
  tellT = P'.tellShow
  getT = P'.getRead