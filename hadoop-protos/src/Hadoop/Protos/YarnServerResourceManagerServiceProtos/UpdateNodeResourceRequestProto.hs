{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerResourceManagerServiceProtos.UpdateNodeResourceRequestProto (UpdateNodeResourceRequestProto(..))
       where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.NodeResourceMapProto as YarnProtos (NodeResourceMapProto)
 
data UpdateNodeResourceRequestProto = UpdateNodeResourceRequestProto{node_resource_map :: !(P'.Seq YarnProtos.NodeResourceMapProto)}
                                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable UpdateNodeResourceRequestProto where
  mergeAppend (UpdateNodeResourceRequestProto x'1) (UpdateNodeResourceRequestProto y'1)
   = UpdateNodeResourceRequestProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default UpdateNodeResourceRequestProto where
  defaultValue = UpdateNodeResourceRequestProto P'.defaultValue
 
instance P'.Wire UpdateNodeResourceRequestProto where
  wireSize ft' self'@(UpdateNodeResourceRequestProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(UpdateNodeResourceRequestProto x'1)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{node_resource_map = P'.append (node_resource_map old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> UpdateNodeResourceRequestProto) UpdateNodeResourceRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB UpdateNodeResourceRequestProto
 
instance P'.ReflectDescriptor UpdateNodeResourceRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.UpdateNodeResourceRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerResourceManagerServiceProtos\"], baseName = MName \"UpdateNodeResourceRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerResourceManagerServiceProtos\",\"UpdateNodeResourceRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.UpdateNodeResourceRequestProto.node_resource_map\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerServiceProtos\",MName \"UpdateNodeResourceRequestProto\"], baseName' = FName \"node_resource_map\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NodeResourceMapProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"NodeResourceMapProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType UpdateNodeResourceRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg UpdateNodeResourceRequestProto where
  textPut msg
   = do
       P'.tellT "node_resource_map" (node_resource_map msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'node_resource_map]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'node_resource_map
         = P'.try
            (do
               v <- P'.getT "node_resource_map"
               Prelude'.return (\ o -> o{node_resource_map = P'.append (node_resource_map o) v}))