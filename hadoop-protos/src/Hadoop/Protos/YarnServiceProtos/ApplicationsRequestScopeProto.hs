{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.ApplicationsRequestScopeProto (ApplicationsRequestScopeProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ApplicationsRequestScopeProto = ALL
                                   | VIEWABLE
                                   | OWN
                                   deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable,
                                             Prelude'.Data)
 
instance P'.Mergeable ApplicationsRequestScopeProto
 
instance Prelude'.Bounded ApplicationsRequestScopeProto where
  minBound = ALL
  maxBound = OWN
 
instance P'.Default ApplicationsRequestScopeProto where
  defaultValue = ALL
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe ApplicationsRequestScopeProto
toMaybe'Enum 0 = Prelude'.Just ALL
toMaybe'Enum 1 = Prelude'.Just VIEWABLE
toMaybe'Enum 2 = Prelude'.Just OWN
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum ApplicationsRequestScopeProto where
  fromEnum ALL = 0
  fromEnum VIEWABLE = 1
  fromEnum OWN = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnServiceProtos.ApplicationsRequestScopeProto")
      . toMaybe'Enum
  succ ALL = VIEWABLE
  succ VIEWABLE = OWN
  succ _
   = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnServiceProtos.ApplicationsRequestScopeProto"
  pred VIEWABLE = ALL
  pred OWN = VIEWABLE
  pred _
   = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnServiceProtos.ApplicationsRequestScopeProto"
 
instance P'.Wire ApplicationsRequestScopeProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB ApplicationsRequestScopeProto
 
instance P'.MessageAPI msg' (msg' -> ApplicationsRequestScopeProto) ApplicationsRequestScopeProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum ApplicationsRequestScopeProto where
  reflectEnum = [(0, "ALL", ALL), (1, "VIEWABLE", VIEWABLE), (2, "OWN", OWN)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.yarn.ApplicationsRequestScopeProto") ["Hadoop", "Protos"] ["YarnServiceProtos"]
        "ApplicationsRequestScopeProto")
      ["Hadoop", "Protos", "YarnServiceProtos", "ApplicationsRequestScopeProto.hs"]
      [(0, "ALL"), (1, "VIEWABLE"), (2, "OWN")]
 
instance P'.TextType ApplicationsRequestScopeProto where
  tellT = P'.tellShow
  getT = P'.getRead