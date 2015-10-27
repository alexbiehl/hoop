{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerResourceManagerServiceProtos.RemoveFromClusterNodeLabelsRequestProto
       (RemoveFromClusterNodeLabelsRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RemoveFromClusterNodeLabelsRequestProto = RemoveFromClusterNodeLabelsRequestProto{nodeLabels :: !(P'.Seq P'.Utf8)}
                                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RemoveFromClusterNodeLabelsRequestProto where
  mergeAppend (RemoveFromClusterNodeLabelsRequestProto x'1) (RemoveFromClusterNodeLabelsRequestProto y'1)
   = RemoveFromClusterNodeLabelsRequestProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default RemoveFromClusterNodeLabelsRequestProto where
  defaultValue = RemoveFromClusterNodeLabelsRequestProto P'.defaultValue
 
instance P'.Wire RemoveFromClusterNodeLabelsRequestProto where
  wireSize ft' self'@(RemoveFromClusterNodeLabelsRequestProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 9 x'1)
  wirePut ft' self'@(RemoveFromClusterNodeLabelsRequestProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 9 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{nodeLabels = P'.append (nodeLabels old'Self) new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RemoveFromClusterNodeLabelsRequestProto) RemoveFromClusterNodeLabelsRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB RemoveFromClusterNodeLabelsRequestProto
 
instance P'.ReflectDescriptor RemoveFromClusterNodeLabelsRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.RemoveFromClusterNodeLabelsRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerResourceManagerServiceProtos\"], baseName = MName \"RemoveFromClusterNodeLabelsRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerResourceManagerServiceProtos\",\"RemoveFromClusterNodeLabelsRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RemoveFromClusterNodeLabelsRequestProto.nodeLabels\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerServiceProtos\",MName \"RemoveFromClusterNodeLabelsRequestProto\"], baseName' = FName \"nodeLabels\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RemoveFromClusterNodeLabelsRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RemoveFromClusterNodeLabelsRequestProto where
  textPut msg
   = do
       P'.tellT "nodeLabels" (nodeLabels msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'nodeLabels]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'nodeLabels
         = P'.try
            (do
               v <- P'.getT "nodeLabels"
               Prelude'.return (\ o -> o{nodeLabels = P'.append (nodeLabels o) v}))