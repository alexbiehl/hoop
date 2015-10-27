{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.NamenodeRegistrationProto.NamenodeRoleProto (NamenodeRoleProto(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data NamenodeRoleProto = NAMENODE
                       | BACKUP
                       | CHECKPOINT
                       deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable NamenodeRoleProto
 
instance Prelude'.Bounded NamenodeRoleProto where
  minBound = NAMENODE
  maxBound = CHECKPOINT
 
instance P'.Default NamenodeRoleProto where
  defaultValue = NAMENODE
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe NamenodeRoleProto
toMaybe'Enum 1 = Prelude'.Just NAMENODE
toMaybe'Enum 2 = Prelude'.Just BACKUP
toMaybe'Enum 3 = Prelude'.Just CHECKPOINT
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum NamenodeRoleProto where
  fromEnum NAMENODE = 1
  fromEnum BACKUP = 2
  fromEnum CHECKPOINT = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.HdfsProtos.NamenodeRegistrationProto.NamenodeRoleProto")
      . toMaybe'Enum
  succ NAMENODE = BACKUP
  succ BACKUP = CHECKPOINT
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Hadoop.Protos.HdfsProtos.NamenodeRegistrationProto.NamenodeRoleProto"
  pred BACKUP = NAMENODE
  pred CHECKPOINT = BACKUP
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Hadoop.Protos.HdfsProtos.NamenodeRegistrationProto.NamenodeRoleProto"
 
instance P'.Wire NamenodeRoleProto where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB NamenodeRoleProto
 
instance P'.MessageAPI msg' (msg' -> NamenodeRoleProto) NamenodeRoleProto where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum NamenodeRoleProto where
  reflectEnum = [(1, "NAMENODE", NAMENODE), (2, "BACKUP", BACKUP), (3, "CHECKPOINT", CHECKPOINT)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.NamenodeRegistrationProto.NamenodeRoleProto") ["Hadoop", "Protos"]
        ["HdfsProtos", "NamenodeRegistrationProto"]
        "NamenodeRoleProto")
      ["Hadoop", "Protos", "HdfsProtos", "NamenodeRegistrationProto", "NamenodeRoleProto.hs"]
      [(1, "NAMENODE"), (2, "BACKUP"), (3, "CHECKPOINT")]
 
instance P'.TextType NamenodeRoleProto where
  tellT = P'.tellShow
  getT = P'.getRead