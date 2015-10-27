{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.LabelsToNodeIdsProto (LabelsToNodeIdsProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.NodeIdProto as YarnProtos (NodeIdProto)
import qualified Hadoop.Protos.YarnProtos.NodeLabelProto as YarnProtos (NodeLabelProto)
 
data LabelsToNodeIdsProto = LabelsToNodeIdsProto{nodeLabels :: !(P'.Maybe YarnProtos.NodeLabelProto),
                                                 nodeId :: !(P'.Seq YarnProtos.NodeIdProto)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable LabelsToNodeIdsProto where
  mergeAppend (LabelsToNodeIdsProto x'1 x'2) (LabelsToNodeIdsProto y'1 y'2)
   = LabelsToNodeIdsProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default LabelsToNodeIdsProto where
  defaultValue = LabelsToNodeIdsProto P'.defaultValue P'.defaultValue
 
instance P'.Wire LabelsToNodeIdsProto where
  wireSize ft' self'@(LabelsToNodeIdsProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePut ft' self'@(LabelsToNodeIdsProto x'1 x'2)
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
             P'.wirePutRep 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{nodeLabels = P'.mergeAppend (nodeLabels old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{nodeId = P'.append (nodeId old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> LabelsToNodeIdsProto) LabelsToNodeIdsProto where
  getVal m' f' = f' m'
 
instance P'.GPB LabelsToNodeIdsProto
 
instance P'.ReflectDescriptor LabelsToNodeIdsProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.LabelsToNodeIdsProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"LabelsToNodeIdsProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"LabelsToNodeIdsProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LabelsToNodeIdsProto.nodeLabels\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"LabelsToNodeIdsProto\"], baseName' = FName \"nodeLabels\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NodeLabelProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"NodeLabelProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LabelsToNodeIdsProto.nodeId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"LabelsToNodeIdsProto\"], baseName' = FName \"nodeId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NodeIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"NodeIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType LabelsToNodeIdsProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg LabelsToNodeIdsProto where
  textPut msg
   = do
       P'.tellT "nodeLabels" (nodeLabels msg)
       P'.tellT "nodeId" (nodeId msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'nodeLabels, parse'nodeId]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'nodeLabels
         = P'.try
            (do
               v <- P'.getT "nodeLabels"
               Prelude'.return (\ o -> o{nodeLabels = v}))
        parse'nodeId
         = P'.try
            (do
               v <- P'.getT "nodeId"
               Prelude'.return (\ o -> o{nodeId = P'.append (nodeId o) v}))