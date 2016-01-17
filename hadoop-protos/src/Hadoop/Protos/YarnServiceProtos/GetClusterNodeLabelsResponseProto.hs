{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.GetClusterNodeLabelsResponseProto (GetClusterNodeLabelsResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.NodeLabelProto as YarnProtos (NodeLabelProto)
 
data GetClusterNodeLabelsResponseProto = GetClusterNodeLabelsResponseProto{nodeLabels :: !(P'.Seq YarnProtos.NodeLabelProto)}
                                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetClusterNodeLabelsResponseProto where
  mergeAppend (GetClusterNodeLabelsResponseProto x'1) (GetClusterNodeLabelsResponseProto y'1)
   = GetClusterNodeLabelsResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetClusterNodeLabelsResponseProto where
  defaultValue = GetClusterNodeLabelsResponseProto P'.defaultValue
 
instance P'.Wire GetClusterNodeLabelsResponseProto where
  wireSize ft' self'@(GetClusterNodeLabelsResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(GetClusterNodeLabelsResponseProto x'1)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{nodeLabels = P'.append (nodeLabels old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetClusterNodeLabelsResponseProto) GetClusterNodeLabelsResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetClusterNodeLabelsResponseProto
 
instance P'.ReflectDescriptor GetClusterNodeLabelsResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.GetClusterNodeLabelsResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"GetClusterNodeLabelsResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"GetClusterNodeLabelsResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetClusterNodeLabelsResponseProto.nodeLabels\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetClusterNodeLabelsResponseProto\"], baseName' = FName \"nodeLabels\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NodeLabelProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"NodeLabelProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetClusterNodeLabelsResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetClusterNodeLabelsResponseProto where
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