{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ZKFCProtocolProtos.CedeActiveResponseProto (CedeActiveResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data CedeActiveResponseProto = CedeActiveResponseProto{}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CedeActiveResponseProto where
  mergeAppend CedeActiveResponseProto CedeActiveResponseProto = CedeActiveResponseProto
 
instance P'.Default CedeActiveResponseProto where
  defaultValue = CedeActiveResponseProto
 
instance P'.Wire CedeActiveResponseProto where
  wireSize ft' self'@(CedeActiveResponseProto)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = 0
  wirePut ft' self'@(CedeActiveResponseProto)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             Prelude'.return ()
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> CedeActiveResponseProto) CedeActiveResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB CedeActiveResponseProto
 
instance P'.ReflectDescriptor CedeActiveResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.CedeActiveResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ZKFCProtocolProtos\"], baseName = MName \"CedeActiveResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ZKFCProtocolProtos\",\"CedeActiveResponseProto.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType CedeActiveResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg CedeActiveResponseProto where
  textPut msg = Prelude'.return ()
  textGet = Prelude'.return P'.defaultValue