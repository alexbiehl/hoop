{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.GetClusterMetricsResponseProto (GetClusterMetricsResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.YarnClusterMetricsProto as YarnProtos (YarnClusterMetricsProto)
 
data GetClusterMetricsResponseProto = GetClusterMetricsResponseProto{cluster_metrics ::
                                                                     !(P'.Maybe YarnProtos.YarnClusterMetricsProto)}
                                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetClusterMetricsResponseProto where
  mergeAppend (GetClusterMetricsResponseProto x'1) (GetClusterMetricsResponseProto y'1)
   = GetClusterMetricsResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetClusterMetricsResponseProto where
  defaultValue = GetClusterMetricsResponseProto P'.defaultValue
 
instance P'.Wire GetClusterMetricsResponseProto where
  wireSize ft' self'@(GetClusterMetricsResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1)
  wirePut ft' self'@(GetClusterMetricsResponseProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 11 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{cluster_metrics = P'.mergeAppend (cluster_metrics old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetClusterMetricsResponseProto) GetClusterMetricsResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetClusterMetricsResponseProto
 
instance P'.ReflectDescriptor GetClusterMetricsResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.GetClusterMetricsResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"GetClusterMetricsResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"GetClusterMetricsResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetClusterMetricsResponseProto.cluster_metrics\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetClusterMetricsResponseProto\"], baseName' = FName \"cluster_metrics\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.YarnClusterMetricsProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"YarnClusterMetricsProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetClusterMetricsResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetClusterMetricsResponseProto where
  textPut msg
   = do
       P'.tellT "cluster_metrics" (cluster_metrics msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'cluster_metrics]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'cluster_metrics
         = P'.try
            (do
               v <- P'.getT "cluster_metrics"
               Prelude'.return (\ o -> o{cluster_metrics = v}))