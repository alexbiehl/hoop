{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerResourceManagerServiceProtos.CheckForDecommissioningNodesResponseProto
       (CheckForDecommissioningNodesResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.NodeIdProto as YarnProtos (NodeIdProto)
 
data CheckForDecommissioningNodesResponseProto = CheckForDecommissioningNodesResponseProto{decommissioningNodes ::
                                                                                           !(P'.Seq YarnProtos.NodeIdProto)}
                                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CheckForDecommissioningNodesResponseProto where
  mergeAppend (CheckForDecommissioningNodesResponseProto x'1) (CheckForDecommissioningNodesResponseProto y'1)
   = CheckForDecommissioningNodesResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default CheckForDecommissioningNodesResponseProto where
  defaultValue = CheckForDecommissioningNodesResponseProto P'.defaultValue
 
instance P'.Wire CheckForDecommissioningNodesResponseProto where
  wireSize ft' self'@(CheckForDecommissioningNodesResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(CheckForDecommissioningNodesResponseProto x'1)
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
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{decommissioningNodes = P'.append (decommissioningNodes old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> CheckForDecommissioningNodesResponseProto) CheckForDecommissioningNodesResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB CheckForDecommissioningNodesResponseProto
 
instance P'.ReflectDescriptor CheckForDecommissioningNodesResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.CheckForDecommissioningNodesResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerResourceManagerServiceProtos\"], baseName = MName \"CheckForDecommissioningNodesResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerResourceManagerServiceProtos\",\"CheckForDecommissioningNodesResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.CheckForDecommissioningNodesResponseProto.decommissioningNodes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerServiceProtos\",MName \"CheckForDecommissioningNodesResponseProto\"], baseName' = FName \"decommissioningNodes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NodeIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"NodeIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType CheckForDecommissioningNodesResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg CheckForDecommissioningNodesResponseProto where
  textPut msg
   = do
       P'.tellT "decommissioningNodes" (decommissioningNodes msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'decommissioningNodes]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'decommissioningNodes
         = P'.try
            (do
               v <- P'.getT "decommissioningNodes"
               Prelude'.return (\ o -> o{decommissioningNodes = P'.append (decommissioningNodes o) v}))