{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.RefreshAuthorizationPolicyProtocolProtos.RefreshServiceAclRequestProto (RefreshServiceAclRequestProto(..))
       where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RefreshServiceAclRequestProto = RefreshServiceAclRequestProto{}
                                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RefreshServiceAclRequestProto where
  mergeAppend RefreshServiceAclRequestProto RefreshServiceAclRequestProto = RefreshServiceAclRequestProto
 
instance P'.Default RefreshServiceAclRequestProto where
  defaultValue = RefreshServiceAclRequestProto
 
instance P'.Wire RefreshServiceAclRequestProto where
  wireSize ft' self'@(RefreshServiceAclRequestProto)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = 0
  wirePut ft' self'@(RefreshServiceAclRequestProto)
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
 
instance P'.MessageAPI msg' (msg' -> RefreshServiceAclRequestProto) RefreshServiceAclRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB RefreshServiceAclRequestProto
 
instance P'.ReflectDescriptor RefreshServiceAclRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.RefreshServiceAclRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"RefreshAuthorizationPolicyProtocolProtos\"], baseName = MName \"RefreshServiceAclRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"RefreshAuthorizationPolicyProtocolProtos\",\"RefreshServiceAclRequestProto.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RefreshServiceAclRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RefreshServiceAclRequestProto where
  textPut msg = Prelude'.return ()
  textGet = Prelude'.return P'.defaultValue