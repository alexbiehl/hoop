{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.GetClusterNodeLabelsRequestProto (GetClusterNodeLabelsRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data GetClusterNodeLabelsRequestProto = GetClusterNodeLabelsRequestProto{}
                                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetClusterNodeLabelsRequestProto where
  mergeAppend GetClusterNodeLabelsRequestProto GetClusterNodeLabelsRequestProto = GetClusterNodeLabelsRequestProto
 
instance P'.Default GetClusterNodeLabelsRequestProto where
  defaultValue = GetClusterNodeLabelsRequestProto
 
instance P'.Wire GetClusterNodeLabelsRequestProto where
  wireSize ft' self'@(GetClusterNodeLabelsRequestProto)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = 0
  wirePut ft' self'@(GetClusterNodeLabelsRequestProto)
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
 
instance P'.MessageAPI msg' (msg' -> GetClusterNodeLabelsRequestProto) GetClusterNodeLabelsRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetClusterNodeLabelsRequestProto
 
instance P'.ReflectDescriptor GetClusterNodeLabelsRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.GetClusterNodeLabelsRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"GetClusterNodeLabelsRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"GetClusterNodeLabelsRequestProto.hs\"], isGroup = False, fields = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetClusterNodeLabelsRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetClusterNodeLabelsRequestProto where
  textPut msg = Prelude'.return ()
  textGet = Prelude'.return P'.defaultValue