{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerResourceManagerServiceProtos.ReplaceLabelsOnNodeRequestProto (ReplaceLabelsOnNodeRequestProto(..))
       where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.NodeIdToLabelsNameProto
       as YarnServerResourceManagerServiceProtos (NodeIdToLabelsNameProto)
 
data ReplaceLabelsOnNodeRequestProto = ReplaceLabelsOnNodeRequestProto{nodeToLabels ::
                                                                       !(P'.Seq
                                                                          YarnServerResourceManagerServiceProtos.NodeIdToLabelsNameProto)}
                                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ReplaceLabelsOnNodeRequestProto where
  mergeAppend (ReplaceLabelsOnNodeRequestProto x'1) (ReplaceLabelsOnNodeRequestProto y'1)
   = ReplaceLabelsOnNodeRequestProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default ReplaceLabelsOnNodeRequestProto where
  defaultValue = ReplaceLabelsOnNodeRequestProto P'.defaultValue
 
instance P'.Wire ReplaceLabelsOnNodeRequestProto where
  wireSize ft' self'@(ReplaceLabelsOnNodeRequestProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(ReplaceLabelsOnNodeRequestProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 11 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{nodeToLabels = P'.append (nodeToLabels old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ReplaceLabelsOnNodeRequestProto) ReplaceLabelsOnNodeRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB ReplaceLabelsOnNodeRequestProto
 
instance P'.ReflectDescriptor ReplaceLabelsOnNodeRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ReplaceLabelsOnNodeRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerResourceManagerServiceProtos\"], baseName = MName \"ReplaceLabelsOnNodeRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerResourceManagerServiceProtos\",\"ReplaceLabelsOnNodeRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReplaceLabelsOnNodeRequestProto.nodeToLabels\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerServiceProtos\",MName \"ReplaceLabelsOnNodeRequestProto\"], baseName' = FName \"nodeToLabels\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NodeIdToLabelsNameProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerResourceManagerServiceProtos\"], baseName = MName \"NodeIdToLabelsNameProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ReplaceLabelsOnNodeRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ReplaceLabelsOnNodeRequestProto where
  textPut msg
   = do
       P'.tellT "nodeToLabels" (nodeToLabels msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'nodeToLabels]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'nodeToLabels
         = P'.try
            (do
               v <- P'.getT "nodeToLabels"
               Prelude'.return (\ o -> o{nodeToLabels = P'.append (nodeToLabels o) v}))