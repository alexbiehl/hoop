{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.QueueACLProto (QueueACLProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data QueueACLProto = QACL_SUBMIT_APPLICATIONS
                   | QACL_ADMINISTER_QUEUE
                   deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable QueueACLProto
 
instance Prelude'.Bounded QueueACLProto where
  minBound = QACL_SUBMIT_APPLICATIONS
  maxBound = QACL_ADMINISTER_QUEUE
 
instance P'.Default QueueACLProto where
  defaultValue = QACL_SUBMIT_APPLICATIONS
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe QueueACLProto
toMaybe'Enum 1 = Prelude'.Just QACL_SUBMIT_APPLICATIONS
toMaybe'Enum 2 = Prelude'.Just QACL_ADMINISTER_QUEUE
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum QueueACLProto where
  fromEnum QACL_SUBMIT_APPLICATIONS = 1
  fromEnum QACL_ADMINISTER_QUEUE = 2
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.YarnProtos.QueueACLProto") .
      toMaybe'Enum
  succ QACL_SUBMIT_APPLICATIONS = QACL_ADMINISTER_QUEUE
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.YarnProtos.QueueACLProto"
  pred QACL_ADMINISTER_QUEUE = QACL_SUBMIT_APPLICATIONS
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.YarnProtos.QueueACLProto"
 
instance P'.Wire QueueACLProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB QueueACLProto
 
instance P'.MessageAPI msg' (msg' -> QueueACLProto) QueueACLProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum QueueACLProto where
  reflectEnum = [(1, "QACL_SUBMIT_APPLICATIONS", QACL_SUBMIT_APPLICATIONS), (2, "QACL_ADMINISTER_QUEUE", QACL_ADMINISTER_QUEUE)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".hadoop.yarn.QueueACLProto") ["Hadoop", "Protos"] ["YarnProtos"] "QueueACLProto")
      ["Hadoop", "Protos", "YarnProtos", "QueueACLProto.hs"]
      [(1, "QACL_SUBMIT_APPLICATIONS"), (2, "QACL_ADMINISTER_QUEUE")]
 
instance P'.TextType QueueACLProto where
  tellT = P'.tellShow
  getT = P'.getRead