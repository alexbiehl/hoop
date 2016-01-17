{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.RefreshCallQueueProtocolProtos.RefreshCallQueueResponseProto (RefreshCallQueueResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RefreshCallQueueResponseProto = RefreshCallQueueResponseProto{}
                                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RefreshCallQueueResponseProto where
  mergeAppend RefreshCallQueueResponseProto RefreshCallQueueResponseProto = RefreshCallQueueResponseProto
 
instance P'.Default RefreshCallQueueResponseProto where
  defaultValue = RefreshCallQueueResponseProto
 
instance P'.Wire RefreshCallQueueResponseProto where
  wireSize ft' self'@(RefreshCallQueueResponseProto)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = 0
  wirePut ft' self'@(RefreshCallQueueResponseProto)
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
 
instance P'.MessageAPI msg' (msg' -> RefreshCallQueueResponseProto) RefreshCallQueueResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB RefreshCallQueueResponseProto
 
instance P'.ReflectDescriptor RefreshCallQueueResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.RefreshCallQueueResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"RefreshCallQueueProtocolProtos\"], baseName = MName \"RefreshCallQueueResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"RefreshCallQueueProtocolProtos\",\"RefreshCallQueueResponseProto.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RefreshCallQueueResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RefreshCallQueueResponseProto where
  textPut msg = Prelude'.return ()
  textGet = Prelude'.return P'.defaultValue