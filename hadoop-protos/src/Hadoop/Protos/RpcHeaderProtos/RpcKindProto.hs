{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.RpcHeaderProtos.RpcKindProto (RpcKindProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RpcKindProto = RPC_BUILTIN
                  | RPC_WRITABLE
                  | RPC_PROTOCOL_BUFFER
                  deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RpcKindProto
 
instance Prelude'.Bounded RpcKindProto where
  minBound = RPC_BUILTIN
  maxBound = RPC_PROTOCOL_BUFFER
 
instance P'.Default RpcKindProto where
  defaultValue = RPC_BUILTIN
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe RpcKindProto
toMaybe'Enum 0 = Prelude'.Just RPC_BUILTIN
toMaybe'Enum 1 = Prelude'.Just RPC_WRITABLE
toMaybe'Enum 2 = Prelude'.Just RPC_PROTOCOL_BUFFER
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum RpcKindProto where
  fromEnum RPC_BUILTIN = 0
  fromEnum RPC_WRITABLE = 1
  fromEnum RPC_PROTOCOL_BUFFER = 2
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.RpcHeaderProtos.RpcKindProto") .
      toMaybe'Enum
  succ RPC_BUILTIN = RPC_WRITABLE
  succ RPC_WRITABLE = RPC_PROTOCOL_BUFFER
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.RpcHeaderProtos.RpcKindProto"
  pred RPC_WRITABLE = RPC_BUILTIN
  pred RPC_PROTOCOL_BUFFER = RPC_WRITABLE
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.RpcHeaderProtos.RpcKindProto"
 
instance P'.Wire RpcKindProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB RpcKindProto
 
instance P'.MessageAPI msg' (msg' -> RpcKindProto) RpcKindProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum RpcKindProto where
  reflectEnum
   = [(0, "RPC_BUILTIN", RPC_BUILTIN), (1, "RPC_WRITABLE", RPC_WRITABLE), (2, "RPC_PROTOCOL_BUFFER", RPC_PROTOCOL_BUFFER)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".hadoop.common.RpcKindProto") ["Hadoop", "Protos"] ["RpcHeaderProtos"] "RpcKindProto")
      ["Hadoop", "Protos", "RpcHeaderProtos", "RpcKindProto.hs"]
      [(0, "RPC_BUILTIN"), (1, "RPC_WRITABLE"), (2, "RPC_PROTOCOL_BUFFER")]
 
instance P'.TextType RpcKindProto where
  tellT = P'.tellShow
  getT = P'.getRead