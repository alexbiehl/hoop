{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.GetClusterNodesRequestProto (GetClusterNodesRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.NodeStateProto as YarnProtos (NodeStateProto)
 
data GetClusterNodesRequestProto = GetClusterNodesRequestProto{nodeStates :: !(P'.Seq YarnProtos.NodeStateProto)}
                                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetClusterNodesRequestProto where
  mergeAppend (GetClusterNodesRequestProto x'1) (GetClusterNodesRequestProto y'1)
   = GetClusterNodesRequestProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetClusterNodesRequestProto where
  defaultValue = GetClusterNodesRequestProto P'.defaultValue
 
instance P'.Wire GetClusterNodesRequestProto where
  wireSize ft' self'@(GetClusterNodesRequestProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 14 x'1)
  wirePut ft' self'@(GetClusterNodesRequestProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 8 14 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{nodeStates = P'.append (nodeStates old'Self) new'Field}) (P'.wireGet 14)
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{nodeStates = P'.mergeAppend (nodeStates old'Self) new'Field})
                    (P'.wireGetPacked 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetClusterNodesRequestProto) GetClusterNodesRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetClusterNodesRequestProto
 
instance P'.ReflectDescriptor GetClusterNodesRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.GetClusterNodesRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"GetClusterNodesRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"GetClusterNodesRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetClusterNodesRequestProto.nodeStates\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetClusterNodesRequestProto\"], baseName' = FName \"nodeStates\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Just (WireTag {getWireTag = 8},WireTag {getWireTag = 10}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NodeStateProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"NodeStateProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetClusterNodesRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetClusterNodesRequestProto where
  textPut msg
   = do
       P'.tellT "nodeStates" (nodeStates msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'nodeStates]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'nodeStates
         = P'.try
            (do
               v <- P'.getT "nodeStates"
               Prelude'.return (\ o -> o{nodeStates = P'.append (nodeStates o) v}))