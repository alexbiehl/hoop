{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.ReleaseSharedCacheResourceResponseProto (ReleaseSharedCacheResourceResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ReleaseSharedCacheResourceResponseProto = ReleaseSharedCacheResourceResponseProto{}
                                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ReleaseSharedCacheResourceResponseProto where
  mergeAppend ReleaseSharedCacheResourceResponseProto ReleaseSharedCacheResourceResponseProto
   = ReleaseSharedCacheResourceResponseProto
 
instance P'.Default ReleaseSharedCacheResourceResponseProto where
  defaultValue = ReleaseSharedCacheResourceResponseProto
 
instance P'.Wire ReleaseSharedCacheResourceResponseProto where
  wireSize ft' self'@(ReleaseSharedCacheResourceResponseProto)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = 0
  wirePut ft' self'@(ReleaseSharedCacheResourceResponseProto)
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
 
instance P'.MessageAPI msg' (msg' -> ReleaseSharedCacheResourceResponseProto) ReleaseSharedCacheResourceResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB ReleaseSharedCacheResourceResponseProto
 
instance P'.ReflectDescriptor ReleaseSharedCacheResourceResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ReleaseSharedCacheResourceResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"ReleaseSharedCacheResourceResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"ReleaseSharedCacheResourceResponseProto.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ReleaseSharedCacheResourceResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ReleaseSharedCacheResourceResponseProto where
  textPut msg = Prelude'.return ()
  textGet = Prelude'.return P'.defaultValue