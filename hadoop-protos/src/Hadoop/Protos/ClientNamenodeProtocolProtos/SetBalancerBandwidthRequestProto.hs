{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.SetBalancerBandwidthRequestProto (SetBalancerBandwidthRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data SetBalancerBandwidthRequestProto = SetBalancerBandwidthRequestProto{bandwidth :: !(P'.Int64)}
                                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SetBalancerBandwidthRequestProto where
  mergeAppend (SetBalancerBandwidthRequestProto x'1) (SetBalancerBandwidthRequestProto y'1)
   = SetBalancerBandwidthRequestProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default SetBalancerBandwidthRequestProto where
  defaultValue = SetBalancerBandwidthRequestProto P'.defaultValue
 
instance P'.Wire SetBalancerBandwidthRequestProto where
  wireSize ft' self'@(SetBalancerBandwidthRequestProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 3 x'1)
  wirePut ft' self'@(SetBalancerBandwidthRequestProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 3 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{bandwidth = new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> SetBalancerBandwidthRequestProto) SetBalancerBandwidthRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB SetBalancerBandwidthRequestProto
 
instance P'.ReflectDescriptor SetBalancerBandwidthRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.SetBalancerBandwidthRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"SetBalancerBandwidthRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"SetBalancerBandwidthRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SetBalancerBandwidthRequestProto.bandwidth\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"SetBalancerBandwidthRequestProto\"], baseName' = FName \"bandwidth\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType SetBalancerBandwidthRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg SetBalancerBandwidthRequestProto where
  textPut msg
   = do
       P'.tellT "bandwidth" (bandwidth msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'bandwidth]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'bandwidth
         = P'.try
            (do
               v <- P'.getT "bandwidth"
               Prelude'.return (\ o -> o{bandwidth = v}))