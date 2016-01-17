{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.RefreshAuthorizationPolicyProtocolProtos.RefreshServiceAclResponseProto (RefreshServiceAclResponseProto(..))
       where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RefreshServiceAclResponseProto = RefreshServiceAclResponseProto{}
                                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RefreshServiceAclResponseProto where
  mergeAppend RefreshServiceAclResponseProto RefreshServiceAclResponseProto = RefreshServiceAclResponseProto
 
instance P'.Default RefreshServiceAclResponseProto where
  defaultValue = RefreshServiceAclResponseProto
 
instance P'.Wire RefreshServiceAclResponseProto where
  wireSize ft' self'@(RefreshServiceAclResponseProto)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = 0
  wirePut ft' self'@(RefreshServiceAclResponseProto)
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
 
instance P'.MessageAPI msg' (msg' -> RefreshServiceAclResponseProto) RefreshServiceAclResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB RefreshServiceAclResponseProto
 
instance P'.ReflectDescriptor RefreshServiceAclResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.RefreshServiceAclResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"RefreshAuthorizationPolicyProtocolProtos\"], baseName = MName \"RefreshServiceAclResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"RefreshAuthorizationPolicyProtocolProtos\",\"RefreshServiceAclResponseProto.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RefreshServiceAclResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RefreshServiceAclResponseProto where
  textPut msg = Prelude'.return ()
  textGet = Prelude'.return P'.defaultValue