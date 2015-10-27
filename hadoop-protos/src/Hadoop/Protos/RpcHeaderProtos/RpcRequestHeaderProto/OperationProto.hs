{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.RpcHeaderProtos.RpcRequestHeaderProto.OperationProto (OperationProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data OperationProto = RPC_FINAL_PACKET
                    | RPC_CONTINUATION_PACKET
                    | RPC_CLOSE_CONNECTION
                    deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable OperationProto
 
instance Prelude'.Bounded OperationProto where
  minBound = RPC_FINAL_PACKET
  maxBound = RPC_CLOSE_CONNECTION
 
instance P'.Default OperationProto where
  defaultValue = RPC_FINAL_PACKET
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe OperationProto
toMaybe'Enum 0 = Prelude'.Just RPC_FINAL_PACKET
toMaybe'Enum 1 = Prelude'.Just RPC_CONTINUATION_PACKET
toMaybe'Enum 2 = Prelude'.Just RPC_CLOSE_CONNECTION
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum OperationProto where
  fromEnum RPC_FINAL_PACKET = 0
  fromEnum RPC_CONTINUATION_PACKET = 1
  fromEnum RPC_CLOSE_CONNECTION = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.RpcHeaderProtos.RpcRequestHeaderProto.OperationProto")
      . toMaybe'Enum
  succ RPC_FINAL_PACKET = RPC_CONTINUATION_PACKET
  succ RPC_CONTINUATION_PACKET = RPC_CLOSE_CONNECTION
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Hadoop.Protos.RpcHeaderProtos.RpcRequestHeaderProto.OperationProto"
  pred RPC_CONTINUATION_PACKET = RPC_FINAL_PACKET
  pred RPC_CLOSE_CONNECTION = RPC_CONTINUATION_PACKET
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Hadoop.Protos.RpcHeaderProtos.RpcRequestHeaderProto.OperationProto"
 
instance P'.Wire OperationProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB OperationProto
 
instance P'.MessageAPI msg' (msg' -> OperationProto) OperationProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum OperationProto where
  reflectEnum
   = [(0, "RPC_FINAL_PACKET", RPC_FINAL_PACKET), (1, "RPC_CONTINUATION_PACKET", RPC_CONTINUATION_PACKET),
      (2, "RPC_CLOSE_CONNECTION", RPC_CLOSE_CONNECTION)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.common.RpcRequestHeaderProto.OperationProto") ["Hadoop", "Protos"]
        ["RpcHeaderProtos", "RpcRequestHeaderProto"]
        "OperationProto")
      ["Hadoop", "Protos", "RpcHeaderProtos", "RpcRequestHeaderProto", "OperationProto.hs"]
      [(0, "RPC_FINAL_PACKET"), (1, "RPC_CONTINUATION_PACKET"), (2, "RPC_CLOSE_CONNECTION")]
 
instance P'.TextType OperationProto where
  tellT = P'.tellShow
  getT = P'.getRead