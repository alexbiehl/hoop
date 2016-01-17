{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.FsImageProto.SnapshotDiffSection.DiffEntry.Type (Type(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data Type = FILEDIFF
          | DIRECTORYDIFF
          deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable Type
 
instance Prelude'.Bounded Type where
  minBound = FILEDIFF
  maxBound = DIRECTORYDIFF
 
instance P'.Default Type where
  defaultValue = FILEDIFF
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe Type
toMaybe'Enum 1 = Prelude'.Just FILEDIFF
toMaybe'Enum 2 = Prelude'.Just DIRECTORYDIFF
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum Type where
  fromEnum FILEDIFF = 1
  fromEnum DIRECTORYDIFF = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Hadoop.Protos.FsImageProto.SnapshotDiffSection.DiffEntry.Type")
      . toMaybe'Enum
  succ FILEDIFF = DIRECTORYDIFF
  succ _
   = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.FsImageProto.SnapshotDiffSection.DiffEntry.Type"
  pred DIRECTORYDIFF = FILEDIFF
  pred _
   = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.FsImageProto.SnapshotDiffSection.DiffEntry.Type"
 
instance P'.Wire Type where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB Type
 
instance P'.MessageAPI msg' (msg' -> Type) Type where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum Type where
  reflectEnum = [(1, "FILEDIFF", FILEDIFF), (2, "DIRECTORYDIFF", DIRECTORYDIFF)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.fsimage.SnapshotDiffSection.DiffEntry.Type") ["Hadoop", "Protos"]
        ["FsImageProto", "SnapshotDiffSection", "DiffEntry"]
        "Type")
      ["Hadoop", "Protos", "FsImageProto", "SnapshotDiffSection", "DiffEntry", "Type.hs"]
      [(1, "FILEDIFF"), (2, "DIRECTORYDIFF")]
 
instance P'.TextType Type where
  tellT = P'.tellShow
  getT = P'.getRead