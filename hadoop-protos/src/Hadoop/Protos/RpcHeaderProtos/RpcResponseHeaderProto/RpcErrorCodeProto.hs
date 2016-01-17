{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.RpcHeaderProtos.RpcResponseHeaderProto.RpcErrorCodeProto (RpcErrorCodeProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RpcErrorCodeProto = ERROR_APPLICATION
                       | ERROR_NO_SUCH_METHOD
                       | ERROR_NO_SUCH_PROTOCOL
                       | ERROR_RPC_SERVER
                       | ERROR_SERIALIZING_RESPONSE
                       | ERROR_RPC_VERSION_MISMATCH
                       | FATAL_UNKNOWN
                       | FATAL_UNSUPPORTED_SERIALIZATION
                       | FATAL_INVALID_RPC_HEADER
                       | FATAL_DESERIALIZING_REQUEST
                       | FATAL_VERSION_MISMATCH
                       | FATAL_UNAUTHORIZED
                       deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RpcErrorCodeProto
 
instance Prelude'.Bounded RpcErrorCodeProto where
  minBound = ERROR_APPLICATION
  maxBound = FATAL_UNAUTHORIZED
 
instance P'.Default RpcErrorCodeProto where
  defaultValue = ERROR_APPLICATION
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe RpcErrorCodeProto
toMaybe'Enum 1 = Prelude'.Just ERROR_APPLICATION
toMaybe'Enum 2 = Prelude'.Just ERROR_NO_SUCH_METHOD
toMaybe'Enum 3 = Prelude'.Just ERROR_NO_SUCH_PROTOCOL
toMaybe'Enum 4 = Prelude'.Just ERROR_RPC_SERVER
toMaybe'Enum 5 = Prelude'.Just ERROR_SERIALIZING_RESPONSE
toMaybe'Enum 6 = Prelude'.Just ERROR_RPC_VERSION_MISMATCH
toMaybe'Enum 10 = Prelude'.Just FATAL_UNKNOWN
toMaybe'Enum 11 = Prelude'.Just FATAL_UNSUPPORTED_SERIALIZATION
toMaybe'Enum 12 = Prelude'.Just FATAL_INVALID_RPC_HEADER
toMaybe'Enum 13 = Prelude'.Just FATAL_DESERIALIZING_REQUEST
toMaybe'Enum 14 = Prelude'.Just FATAL_VERSION_MISMATCH
toMaybe'Enum 15 = Prelude'.Just FATAL_UNAUTHORIZED
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum RpcErrorCodeProto where
  fromEnum ERROR_APPLICATION = 1
  fromEnum ERROR_NO_SUCH_METHOD = 2
  fromEnum ERROR_NO_SUCH_PROTOCOL = 3
  fromEnum ERROR_RPC_SERVER = 4
  fromEnum ERROR_SERIALIZING_RESPONSE = 5
  fromEnum ERROR_RPC_VERSION_MISMATCH = 6
  fromEnum FATAL_UNKNOWN = 10
  fromEnum FATAL_UNSUPPORTED_SERIALIZATION = 11
  fromEnum FATAL_INVALID_RPC_HEADER = 12
  fromEnum FATAL_DESERIALIZING_REQUEST = 13
  fromEnum FATAL_VERSION_MISMATCH = 14
  fromEnum FATAL_UNAUTHORIZED = 15
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.RpcHeaderProtos.RpcResponseHeaderProto.RpcErrorCodeProto")
      . toMaybe'Enum
  succ ERROR_APPLICATION = ERROR_NO_SUCH_METHOD
  succ ERROR_NO_SUCH_METHOD = ERROR_NO_SUCH_PROTOCOL
  succ ERROR_NO_SUCH_PROTOCOL = ERROR_RPC_SERVER
  succ ERROR_RPC_SERVER = ERROR_SERIALIZING_RESPONSE
  succ ERROR_SERIALIZING_RESPONSE = ERROR_RPC_VERSION_MISMATCH
  succ ERROR_RPC_VERSION_MISMATCH = FATAL_UNKNOWN
  succ FATAL_UNKNOWN = FATAL_UNSUPPORTED_SERIALIZATION
  succ FATAL_UNSUPPORTED_SERIALIZATION = FATAL_INVALID_RPC_HEADER
  succ FATAL_INVALID_RPC_HEADER = FATAL_DESERIALIZING_REQUEST
  succ FATAL_DESERIALIZING_REQUEST = FATAL_VERSION_MISMATCH
  succ FATAL_VERSION_MISMATCH = FATAL_UNAUTHORIZED
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Hadoop.Protos.RpcHeaderProtos.RpcResponseHeaderProto.RpcErrorCodeProto"
  pred ERROR_NO_SUCH_METHOD = ERROR_APPLICATION
  pred ERROR_NO_SUCH_PROTOCOL = ERROR_NO_SUCH_METHOD
  pred ERROR_RPC_SERVER = ERROR_NO_SUCH_PROTOCOL
  pred ERROR_SERIALIZING_RESPONSE = ERROR_RPC_SERVER
  pred ERROR_RPC_VERSION_MISMATCH = ERROR_SERIALIZING_RESPONSE
  pred FATAL_UNKNOWN = ERROR_RPC_VERSION_MISMATCH
  pred FATAL_UNSUPPORTED_SERIALIZATION = FATAL_UNKNOWN
  pred FATAL_INVALID_RPC_HEADER = FATAL_UNSUPPORTED_SERIALIZATION
  pred FATAL_DESERIALIZING_REQUEST = FATAL_INVALID_RPC_HEADER
  pred FATAL_VERSION_MISMATCH = FATAL_DESERIALIZING_REQUEST
  pred FATAL_UNAUTHORIZED = FATAL_VERSION_MISMATCH
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Hadoop.Protos.RpcHeaderProtos.RpcResponseHeaderProto.RpcErrorCodeProto"
 
instance P'.Wire RpcErrorCodeProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB RpcErrorCodeProto
 
instance P'.MessageAPI msg' (msg' -> RpcErrorCodeProto) RpcErrorCodeProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum RpcErrorCodeProto where
  reflectEnum
   = [(1, "ERROR_APPLICATION", ERROR_APPLICATION), (2, "ERROR_NO_SUCH_METHOD", ERROR_NO_SUCH_METHOD),
      (3, "ERROR_NO_SUCH_PROTOCOL", ERROR_NO_SUCH_PROTOCOL), (4, "ERROR_RPC_SERVER", ERROR_RPC_SERVER),
      (5, "ERROR_SERIALIZING_RESPONSE", ERROR_SERIALIZING_RESPONSE), (6, "ERROR_RPC_VERSION_MISMATCH", ERROR_RPC_VERSION_MISMATCH),
      (10, "FATAL_UNKNOWN", FATAL_UNKNOWN), (11, "FATAL_UNSUPPORTED_SERIALIZATION", FATAL_UNSUPPORTED_SERIALIZATION),
      (12, "FATAL_INVALID_RPC_HEADER", FATAL_INVALID_RPC_HEADER), (13, "FATAL_DESERIALIZING_REQUEST", FATAL_DESERIALIZING_REQUEST),
      (14, "FATAL_VERSION_MISMATCH", FATAL_VERSION_MISMATCH), (15, "FATAL_UNAUTHORIZED", FATAL_UNAUTHORIZED)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.common.RpcResponseHeaderProto.RpcErrorCodeProto") ["Hadoop", "Protos"]
        ["RpcHeaderProtos", "RpcResponseHeaderProto"]
        "RpcErrorCodeProto")
      ["Hadoop", "Protos", "RpcHeaderProtos", "RpcResponseHeaderProto", "RpcErrorCodeProto.hs"]
      [(1, "ERROR_APPLICATION"), (2, "ERROR_NO_SUCH_METHOD"), (3, "ERROR_NO_SUCH_PROTOCOL"), (4, "ERROR_RPC_SERVER"),
       (5, "ERROR_SERIALIZING_RESPONSE"), (6, "ERROR_RPC_VERSION_MISMATCH"), (10, "FATAL_UNKNOWN"),
       (11, "FATAL_UNSUPPORTED_SERIALIZATION"), (12, "FATAL_INVALID_RPC_HEADER"), (13, "FATAL_DESERIALIZING_REQUEST"),
       (14, "FATAL_VERSION_MISMATCH"), (15, "FATAL_UNAUTHORIZED")]
 
instance P'.TextType RpcErrorCodeProto where
  tellT = P'.tellShow
  getT = P'.getRead