{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.ShortCircuitFdResponse (ShortCircuitFdResponse(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ShortCircuitFdResponse = DO_NOT_USE_RECEIPT_VERIFICATION
                            | USE_RECEIPT_VERIFICATION
                            deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ShortCircuitFdResponse
 
instance Prelude'.Bounded ShortCircuitFdResponse where
  minBound = DO_NOT_USE_RECEIPT_VERIFICATION
  maxBound = USE_RECEIPT_VERIFICATION
 
instance P'.Default ShortCircuitFdResponse where
  defaultValue = DO_NOT_USE_RECEIPT_VERIFICATION
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe ShortCircuitFdResponse
toMaybe'Enum 0 = Prelude'.Just DO_NOT_USE_RECEIPT_VERIFICATION
toMaybe'Enum 1 = Prelude'.Just USE_RECEIPT_VERIFICATION
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum ShortCircuitFdResponse where
  fromEnum DO_NOT_USE_RECEIPT_VERIFICATION = 0
  fromEnum USE_RECEIPT_VERIFICATION = 1
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Hadoop.Protos.DataTransferProtos.ShortCircuitFdResponse")
      . toMaybe'Enum
  succ DO_NOT_USE_RECEIPT_VERIFICATION = USE_RECEIPT_VERIFICATION
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Hadoop.Protos.DataTransferProtos.ShortCircuitFdResponse"
  pred USE_RECEIPT_VERIFICATION = DO_NOT_USE_RECEIPT_VERIFICATION
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Hadoop.Protos.DataTransferProtos.ShortCircuitFdResponse"
 
instance P'.Wire ShortCircuitFdResponse where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB ShortCircuitFdResponse
 
instance P'.MessageAPI msg' (msg' -> ShortCircuitFdResponse) ShortCircuitFdResponse where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum ShortCircuitFdResponse where
  reflectEnum
   = [(0, "DO_NOT_USE_RECEIPT_VERIFICATION", DO_NOT_USE_RECEIPT_VERIFICATION),
      (1, "USE_RECEIPT_VERIFICATION", USE_RECEIPT_VERIFICATION)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".hadoop.hdfs.ShortCircuitFdResponse") ["Hadoop", "Protos"] ["DataTransferProtos"]
        "ShortCircuitFdResponse")
      ["Hadoop", "Protos", "DataTransferProtos", "ShortCircuitFdResponse.hs"]
      [(0, "DO_NOT_USE_RECEIPT_VERIFICATION"), (1, "USE_RECEIPT_VERIFICATION")]
 
instance P'.TextType ShortCircuitFdResponse where
  tellT = P'.tellShow
  getT = P'.getRead