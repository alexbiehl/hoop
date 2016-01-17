{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerResourceManagerServiceProtos.RefreshNodesRequestProto (RefreshNodesRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnServerResourceManagerServiceProtos.DecommissionTypeProto
       as YarnServerResourceManagerServiceProtos (DecommissionTypeProto)
 
data RefreshNodesRequestProto = RefreshNodesRequestProto{decommissionType ::
                                                         !(P'.Maybe YarnServerResourceManagerServiceProtos.DecommissionTypeProto)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RefreshNodesRequestProto where
  mergeAppend (RefreshNodesRequestProto x'1) (RefreshNodesRequestProto y'1) = RefreshNodesRequestProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default RefreshNodesRequestProto where
  defaultValue = RefreshNodesRequestProto (Prelude'.Just (Prelude'.read "NORMAL"))
 
instance P'.Wire RefreshNodesRequestProto where
  wireSize ft' self'@(RefreshNodesRequestProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 14 x'1)
  wirePut ft' self'@(RefreshNodesRequestProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 14 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{decommissionType = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RefreshNodesRequestProto) RefreshNodesRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB RefreshNodesRequestProto
 
instance P'.ReflectDescriptor RefreshNodesRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.RefreshNodesRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerResourceManagerServiceProtos\"], baseName = MName \"RefreshNodesRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerResourceManagerServiceProtos\",\"RefreshNodesRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RefreshNodesRequestProto.decommissionType\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerServiceProtos\",MName \"RefreshNodesRequestProto\"], baseName' = FName \"decommissionType\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.DecommissionTypeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerResourceManagerServiceProtos\"], baseName = MName \"DecommissionTypeProto\"}), hsRawDefault = Just \"NORMAL\", hsDefault = Just (HsDef'Enum \"NORMAL\")}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RefreshNodesRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RefreshNodesRequestProto where
  textPut msg
   = do
       P'.tellT "decommissionType" (decommissionType msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'decommissionType]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'decommissionType
         = P'.try
            (do
               v <- P'.getT "decommissionType"
               Prelude'.return (\ o -> o{decommissionType = v}))