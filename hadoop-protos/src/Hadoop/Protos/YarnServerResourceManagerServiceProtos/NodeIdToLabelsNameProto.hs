{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerResourceManagerServiceProtos.NodeIdToLabelsNameProto (NodeIdToLabelsNameProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.NodeIdProto as YarnProtos (NodeIdProto)
 
data NodeIdToLabelsNameProto = NodeIdToLabelsNameProto{nodeId :: !(P'.Maybe YarnProtos.NodeIdProto),
                                                       nodeLabels :: !(P'.Seq P'.Utf8)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable NodeIdToLabelsNameProto where
  mergeAppend (NodeIdToLabelsNameProto x'1 x'2) (NodeIdToLabelsNameProto y'1 y'2)
   = NodeIdToLabelsNameProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default NodeIdToLabelsNameProto where
  defaultValue = NodeIdToLabelsNameProto P'.defaultValue P'.defaultValue
 
instance P'.Wire NodeIdToLabelsNameProto where
  wireSize ft' self'@(NodeIdToLabelsNameProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeRep 1 9 x'2)
  wirePut ft' self'@(NodeIdToLabelsNameProto x'1 x'2)
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
             P'.wirePutRep 18 9 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{nodeId = P'.mergeAppend (nodeId old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{nodeLabels = P'.append (nodeLabels old'Self) new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> NodeIdToLabelsNameProto) NodeIdToLabelsNameProto where
  getVal m' f' = f' m'
 
instance P'.GPB NodeIdToLabelsNameProto
 
instance P'.ReflectDescriptor NodeIdToLabelsNameProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.NodeIdToLabelsNameProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerResourceManagerServiceProtos\"], baseName = MName \"NodeIdToLabelsNameProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerResourceManagerServiceProtos\",\"NodeIdToLabelsNameProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeIdToLabelsNameProto.nodeId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerServiceProtos\",MName \"NodeIdToLabelsNameProto\"], baseName' = FName \"nodeId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NodeIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"NodeIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeIdToLabelsNameProto.nodeLabels\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerServiceProtos\",MName \"NodeIdToLabelsNameProto\"], baseName' = FName \"nodeLabels\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType NodeIdToLabelsNameProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg NodeIdToLabelsNameProto where
  textPut msg
   = do
       P'.tellT "nodeId" (nodeId msg)
       P'.tellT "nodeLabels" (nodeLabels msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'nodeId, parse'nodeLabels]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'nodeId
         = P'.try
            (do
               v <- P'.getT "nodeId"
               Prelude'.return (\ o -> o{nodeId = v}))
        parse'nodeLabels
         = P'.try
            (do
               v <- P'.getT "nodeLabels"
               Prelude'.return (\ o -> o{nodeLabels = P'.append (nodeLabels o) v}))