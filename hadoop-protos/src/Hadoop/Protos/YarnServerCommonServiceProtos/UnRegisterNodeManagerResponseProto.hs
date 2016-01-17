{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerCommonServiceProtos.UnRegisterNodeManagerResponseProto (UnRegisterNodeManagerResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data UnRegisterNodeManagerResponseProto = UnRegisterNodeManagerResponseProto{}
                                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable UnRegisterNodeManagerResponseProto where
  mergeAppend UnRegisterNodeManagerResponseProto UnRegisterNodeManagerResponseProto = UnRegisterNodeManagerResponseProto
 
instance P'.Default UnRegisterNodeManagerResponseProto where
  defaultValue = UnRegisterNodeManagerResponseProto
 
instance P'.Wire UnRegisterNodeManagerResponseProto where
  wireSize ft' self'@(UnRegisterNodeManagerResponseProto)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = 0
  wirePut ft' self'@(UnRegisterNodeManagerResponseProto)
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
 
instance P'.MessageAPI msg' (msg' -> UnRegisterNodeManagerResponseProto) UnRegisterNodeManagerResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB UnRegisterNodeManagerResponseProto
 
instance P'.ReflectDescriptor UnRegisterNodeManagerResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.UnRegisterNodeManagerResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonServiceProtos\"], baseName = MName \"UnRegisterNodeManagerResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerCommonServiceProtos\",\"UnRegisterNodeManagerResponseProto.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType UnRegisterNodeManagerResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg UnRegisterNodeManagerResponseProto where
  textPut msg = Prelude'.return ()
  textGet = Prelude'.return P'.defaultValue