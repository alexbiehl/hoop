{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.GetNodesToLabelsResponseProto (GetNodesToLabelsResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.NodeIdToLabelsInfoProto as YarnProtos (NodeIdToLabelsInfoProto)
 
data GetNodesToLabelsResponseProto = GetNodesToLabelsResponseProto{nodeToLabels :: !(P'.Seq YarnProtos.NodeIdToLabelsInfoProto)}
                                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetNodesToLabelsResponseProto where
  mergeAppend (GetNodesToLabelsResponseProto x'1) (GetNodesToLabelsResponseProto y'1)
   = GetNodesToLabelsResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetNodesToLabelsResponseProto where
  defaultValue = GetNodesToLabelsResponseProto P'.defaultValue
 
instance P'.Wire GetNodesToLabelsResponseProto where
  wireSize ft' self'@(GetNodesToLabelsResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(GetNodesToLabelsResponseProto x'1)
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
 
instance P'.MessageAPI msg' (msg' -> GetNodesToLabelsResponseProto) GetNodesToLabelsResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetNodesToLabelsResponseProto
 
instance P'.ReflectDescriptor GetNodesToLabelsResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.GetNodesToLabelsResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"GetNodesToLabelsResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"GetNodesToLabelsResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetNodesToLabelsResponseProto.nodeToLabels\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetNodesToLabelsResponseProto\"], baseName' = FName \"nodeToLabels\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NodeIdToLabelsInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"NodeIdToLabelsInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetNodesToLabelsResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetNodesToLabelsResponseProto where
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