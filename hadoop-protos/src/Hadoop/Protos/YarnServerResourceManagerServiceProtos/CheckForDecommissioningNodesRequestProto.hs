{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerResourceManagerServiceProtos.CheckForDecommissioningNodesRequestProto
       (CheckForDecommissioningNodesRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data CheckForDecommissioningNodesRequestProto = CheckForDecommissioningNodesRequestProto{}
                                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CheckForDecommissioningNodesRequestProto where
  mergeAppend CheckForDecommissioningNodesRequestProto CheckForDecommissioningNodesRequestProto
   = CheckForDecommissioningNodesRequestProto
 
instance P'.Default CheckForDecommissioningNodesRequestProto where
  defaultValue = CheckForDecommissioningNodesRequestProto
 
instance P'.Wire CheckForDecommissioningNodesRequestProto where
  wireSize ft' self'@(CheckForDecommissioningNodesRequestProto)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = 0
  wirePut ft' self'@(CheckForDecommissioningNodesRequestProto)
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
 
instance P'.MessageAPI msg' (msg' -> CheckForDecommissioningNodesRequestProto) CheckForDecommissioningNodesRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB CheckForDecommissioningNodesRequestProto
 
instance P'.ReflectDescriptor CheckForDecommissioningNodesRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.CheckForDecommissioningNodesRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerResourceManagerServiceProtos\"], baseName = MName \"CheckForDecommissioningNodesRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerResourceManagerServiceProtos\",\"CheckForDecommissioningNodesRequestProto.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType CheckForDecommissioningNodesRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg CheckForDecommissioningNodesRequestProto where
  textPut msg = Prelude'.return ()
  textGet = Prelude'.return P'.defaultValue