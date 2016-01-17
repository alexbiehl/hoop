{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.GetLabelsToNodesResponseProto (GetLabelsToNodesResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.LabelsToNodeIdsProto as YarnProtos (LabelsToNodeIdsProto)
 
data GetLabelsToNodesResponseProto = GetLabelsToNodesResponseProto{labelsToNodes :: !(P'.Seq YarnProtos.LabelsToNodeIdsProto)}
                                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetLabelsToNodesResponseProto where
  mergeAppend (GetLabelsToNodesResponseProto x'1) (GetLabelsToNodesResponseProto y'1)
   = GetLabelsToNodesResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetLabelsToNodesResponseProto where
  defaultValue = GetLabelsToNodesResponseProto P'.defaultValue
 
instance P'.Wire GetLabelsToNodesResponseProto where
  wireSize ft' self'@(GetLabelsToNodesResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(GetLabelsToNodesResponseProto x'1)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{labelsToNodes = P'.append (labelsToNodes old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetLabelsToNodesResponseProto) GetLabelsToNodesResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetLabelsToNodesResponseProto
 
instance P'.ReflectDescriptor GetLabelsToNodesResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.GetLabelsToNodesResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"GetLabelsToNodesResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"GetLabelsToNodesResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetLabelsToNodesResponseProto.labelsToNodes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetLabelsToNodesResponseProto\"], baseName' = FName \"labelsToNodes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.LabelsToNodeIdsProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"LabelsToNodeIdsProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetLabelsToNodesResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetLabelsToNodesResponseProto where
  textPut msg
   = do
       P'.tellT "labelsToNodes" (labelsToNodes msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'labelsToNodes]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'labelsToNodes
         = P'.try
            (do
               v <- P'.getT "labelsToNodes"
               Prelude'.return (\ o -> o{labelsToNodes = P'.append (labelsToNodes o) v}))