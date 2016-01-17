{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.SafeModeActionProto (SafeModeActionProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data SafeModeActionProto = SAFEMODE_LEAVE
                         | SAFEMODE_ENTER
                         | SAFEMODE_GET
                         deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SafeModeActionProto
 
instance Prelude'.Bounded SafeModeActionProto where
  minBound = SAFEMODE_LEAVE
  maxBound = SAFEMODE_GET
 
instance P'.Default SafeModeActionProto where
  defaultValue = SAFEMODE_LEAVE
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe SafeModeActionProto
toMaybe'Enum 1 = Prelude'.Just SAFEMODE_LEAVE
toMaybe'Enum 2 = Prelude'.Just SAFEMODE_ENTER
toMaybe'Enum 3 = Prelude'.Just SAFEMODE_GET
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum SafeModeActionProto where
  fromEnum SAFEMODE_LEAVE = 1
  fromEnum SAFEMODE_ENTER = 2
  fromEnum SAFEMODE_GET = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.ClientNamenodeProtocolProtos.SafeModeActionProto")
      . toMaybe'Enum
  succ SAFEMODE_LEAVE = SAFEMODE_ENTER
  succ SAFEMODE_ENTER = SAFEMODE_GET
  succ _
   = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.ClientNamenodeProtocolProtos.SafeModeActionProto"
  pred SAFEMODE_ENTER = SAFEMODE_LEAVE
  pred SAFEMODE_GET = SAFEMODE_ENTER
  pred _
   = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.ClientNamenodeProtocolProtos.SafeModeActionProto"
 
instance P'.Wire SafeModeActionProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB SafeModeActionProto
 
instance P'.MessageAPI msg' (msg' -> SafeModeActionProto) SafeModeActionProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum SafeModeActionProto where
  reflectEnum = [(1, "SAFEMODE_LEAVE", SAFEMODE_LEAVE), (2, "SAFEMODE_ENTER", SAFEMODE_ENTER), (3, "SAFEMODE_GET", SAFEMODE_GET)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.SafeModeActionProto") ["Hadoop", "Protos"] ["ClientNamenodeProtocolProtos"]
        "SafeModeActionProto")
      ["Hadoop", "Protos", "ClientNamenodeProtocolProtos", "SafeModeActionProto.hs"]
      [(1, "SAFEMODE_LEAVE"), (2, "SAFEMODE_ENTER"), (3, "SAFEMODE_GET")]
 
instance P'.TextType SafeModeActionProto where
  tellT = P'.tellShow
  getT = P'.getRead