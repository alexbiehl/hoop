{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HAServiceProtocolProtos.HARequestSource (HARequestSource(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data HARequestSource = REQUEST_BY_USER
                     | REQUEST_BY_USER_FORCED
                     | REQUEST_BY_ZKFC
                     deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable HARequestSource
 
instance Prelude'.Bounded HARequestSource where
  minBound = REQUEST_BY_USER
  maxBound = REQUEST_BY_ZKFC
 
instance P'.Default HARequestSource where
  defaultValue = REQUEST_BY_USER
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe HARequestSource
toMaybe'Enum 0 = Prelude'.Just REQUEST_BY_USER
toMaybe'Enum 1 = Prelude'.Just REQUEST_BY_USER_FORCED
toMaybe'Enum 2 = Prelude'.Just REQUEST_BY_ZKFC
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum HARequestSource where
  fromEnum REQUEST_BY_USER = 0
  fromEnum REQUEST_BY_USER_FORCED = 1
  fromEnum REQUEST_BY_ZKFC = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.HAServiceProtocolProtos.HARequestSource")
      . toMaybe'Enum
  succ REQUEST_BY_USER = REQUEST_BY_USER_FORCED
  succ REQUEST_BY_USER_FORCED = REQUEST_BY_ZKFC
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.HAServiceProtocolProtos.HARequestSource"
  pred REQUEST_BY_USER_FORCED = REQUEST_BY_USER
  pred REQUEST_BY_ZKFC = REQUEST_BY_USER_FORCED
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.HAServiceProtocolProtos.HARequestSource"
 
instance P'.Wire HARequestSource where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB HARequestSource
 
instance P'.MessageAPI msg' (msg' -> HARequestSource) HARequestSource where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum HARequestSource where
  reflectEnum
   = [(0, "REQUEST_BY_USER", REQUEST_BY_USER), (1, "REQUEST_BY_USER_FORCED", REQUEST_BY_USER_FORCED),
      (2, "REQUEST_BY_ZKFC", REQUEST_BY_ZKFC)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.common.HARequestSource") ["Hadoop", "Protos"] ["HAServiceProtocolProtos"] "HARequestSource")
      ["Hadoop", "Protos", "HAServiceProtocolProtos", "HARequestSource.hs"]
      [(0, "REQUEST_BY_USER"), (1, "REQUEST_BY_USER_FORCED"), (2, "REQUEST_BY_ZKFC")]
 
instance P'.TextType HARequestSource where
  tellT = P'.tellShow
  getT = P'.getRead