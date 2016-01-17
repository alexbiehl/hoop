{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HAServiceProtocolProtos.TransitionToActiveResponseProto (TransitionToActiveResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data TransitionToActiveResponseProto = TransitionToActiveResponseProto{}
                                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable TransitionToActiveResponseProto where
  mergeAppend TransitionToActiveResponseProto TransitionToActiveResponseProto = TransitionToActiveResponseProto
 
instance P'.Default TransitionToActiveResponseProto where
  defaultValue = TransitionToActiveResponseProto
 
instance P'.Wire TransitionToActiveResponseProto where
  wireSize ft' self'@(TransitionToActiveResponseProto)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = 0
  wirePut ft' self'@(TransitionToActiveResponseProto)
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
 
instance P'.MessageAPI msg' (msg' -> TransitionToActiveResponseProto) TransitionToActiveResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB TransitionToActiveResponseProto
 
instance P'.ReflectDescriptor TransitionToActiveResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.TransitionToActiveResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HAServiceProtocolProtos\"], baseName = MName \"TransitionToActiveResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HAServiceProtocolProtos\",\"TransitionToActiveResponseProto.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType TransitionToActiveResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg TransitionToActiveResponseProto where
  textPut msg = Prelude'.return ()
  textGet = Prelude'.return P'.defaultValue