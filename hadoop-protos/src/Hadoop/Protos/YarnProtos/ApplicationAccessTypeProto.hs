{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.ApplicationAccessTypeProto (ApplicationAccessTypeProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ApplicationAccessTypeProto = APPACCESS_VIEW_APP
                                | APPACCESS_MODIFY_APP
                                deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ApplicationAccessTypeProto
 
instance Prelude'.Bounded ApplicationAccessTypeProto where
  minBound = APPACCESS_VIEW_APP
  maxBound = APPACCESS_MODIFY_APP
 
instance P'.Default ApplicationAccessTypeProto where
  defaultValue = APPACCESS_VIEW_APP
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe ApplicationAccessTypeProto
toMaybe'Enum 1 = Prelude'.Just APPACCESS_VIEW_APP
toMaybe'Enum 2 = Prelude'.Just APPACCESS_MODIFY_APP
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum ApplicationAccessTypeProto where
  fromEnum APPACCESS_VIEW_APP = 1
  fromEnum APPACCESS_MODIFY_APP = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnProtos.ApplicationAccessTypeProto")
      . toMaybe'Enum
  succ APPACCESS_VIEW_APP = APPACCESS_MODIFY_APP
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnProtos.ApplicationAccessTypeProto"
  pred APPACCESS_MODIFY_APP = APPACCESS_VIEW_APP
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnProtos.ApplicationAccessTypeProto"
 
instance P'.Wire ApplicationAccessTypeProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB ApplicationAccessTypeProto
 
instance P'.MessageAPI msg' (msg' -> ApplicationAccessTypeProto) ApplicationAccessTypeProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum ApplicationAccessTypeProto where
  reflectEnum = [(1, "APPACCESS_VIEW_APP", APPACCESS_VIEW_APP), (2, "APPACCESS_MODIFY_APP", APPACCESS_MODIFY_APP)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.yarn.ApplicationAccessTypeProto") ["Hadoop", "Protos"] ["YarnProtos"]
        "ApplicationAccessTypeProto")
      ["Hadoop", "Protos", "YarnProtos", "ApplicationAccessTypeProto.hs"]
      [(1, "APPACCESS_VIEW_APP"), (2, "APPACCESS_MODIFY_APP")]
 
instance P'.TextType ApplicationAccessTypeProto where
  tellT = P'.tellShow
  getT = P'.getRead