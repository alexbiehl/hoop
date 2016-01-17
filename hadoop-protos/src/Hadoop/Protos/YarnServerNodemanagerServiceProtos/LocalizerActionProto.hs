{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerNodemanagerServiceProtos.LocalizerActionProto (LocalizerActionProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data LocalizerActionProto = LIVE
                          | DIE
                          deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable LocalizerActionProto
 
instance Prelude'.Bounded LocalizerActionProto where
  minBound = LIVE
  maxBound = DIE
 
instance P'.Default LocalizerActionProto where
  defaultValue = LIVE
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe LocalizerActionProto
toMaybe'Enum 1 = Prelude'.Just LIVE
toMaybe'Enum 2 = Prelude'.Just DIE
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum LocalizerActionProto where
  fromEnum LIVE = 1
  fromEnum DIE = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnServerNodemanagerServiceProtos.LocalizerActionProto")
      . toMaybe'Enum
  succ LIVE = DIE
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Hadoop.Protos.YarnServerNodemanagerServiceProtos.LocalizerActionProto"
  pred DIE = LIVE
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Hadoop.Protos.YarnServerNodemanagerServiceProtos.LocalizerActionProto"
 
instance P'.Wire LocalizerActionProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB LocalizerActionProto
 
instance P'.MessageAPI msg' (msg' -> LocalizerActionProto) LocalizerActionProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum LocalizerActionProto where
  reflectEnum = [(1, "LIVE", LIVE), (2, "DIE", DIE)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.yarn.LocalizerActionProto") ["Hadoop", "Protos"] ["YarnServerNodemanagerServiceProtos"]
        "LocalizerActionProto")
      ["Hadoop", "Protos", "YarnServerNodemanagerServiceProtos", "LocalizerActionProto.hs"]
      [(1, "LIVE"), (2, "DIE")]
 
instance P'.TextType LocalizerActionProto where
  tellT = P'.tellShow
  getT = P'.getRead