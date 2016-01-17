{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.InterDatanodeProtocolProtos.InitReplicaRecoveryRequestProto (InitReplicaRecoveryRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.RecoveringBlockProto as HdfsProtos (RecoveringBlockProto)
 
data InitReplicaRecoveryRequestProto = InitReplicaRecoveryRequestProto{block :: !(HdfsProtos.RecoveringBlockProto)}
                                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable InitReplicaRecoveryRequestProto where
  mergeAppend (InitReplicaRecoveryRequestProto x'1) (InitReplicaRecoveryRequestProto y'1)
   = InitReplicaRecoveryRequestProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default InitReplicaRecoveryRequestProto where
  defaultValue = InitReplicaRecoveryRequestProto P'.defaultValue
 
instance P'.Wire InitReplicaRecoveryRequestProto where
  wireSize ft' self'@(InitReplicaRecoveryRequestProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1)
  wirePut ft' self'@(InitReplicaRecoveryRequestProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 11 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{block = P'.mergeAppend (block old'Self) (new'Field)}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> InitReplicaRecoveryRequestProto) InitReplicaRecoveryRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB InitReplicaRecoveryRequestProto
 
instance P'.ReflectDescriptor InitReplicaRecoveryRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.InitReplicaRecoveryRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InterDatanodeProtocolProtos\"], baseName = MName \"InitReplicaRecoveryRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"InterDatanodeProtocolProtos\",\"InitReplicaRecoveryRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.InitReplicaRecoveryRequestProto.block\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InterDatanodeProtocolProtos\",MName \"InitReplicaRecoveryRequestProto\"], baseName' = FName \"block\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.RecoveringBlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"RecoveringBlockProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType InitReplicaRecoveryRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg InitReplicaRecoveryRequestProto where
  textPut msg
   = do
       P'.tellT "block" (block msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'block]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'block
         = P'.try
            (do
               v <- P'.getT "block"
               Prelude'.return (\ o -> o{block = v}))