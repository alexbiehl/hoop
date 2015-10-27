{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.InterDatanodeProtocolProtos.InitReplicaRecoveryResponseProto (InitReplicaRecoveryResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.BlockProto as HdfsProtos (BlockProto)
import qualified Hadoop.Protos.HdfsProtos.ReplicaStateProto as HdfsProtos (ReplicaStateProto)
 
data InitReplicaRecoveryResponseProto = InitReplicaRecoveryResponseProto{replicaFound :: !(P'.Bool),
                                                                         state :: !(P'.Maybe HdfsProtos.ReplicaStateProto),
                                                                         block :: !(P'.Maybe HdfsProtos.BlockProto)}
                                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable InitReplicaRecoveryResponseProto where
  mergeAppend (InitReplicaRecoveryResponseProto x'1 x'2 x'3) (InitReplicaRecoveryResponseProto y'1 y'2 y'3)
   = InitReplicaRecoveryResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default InitReplicaRecoveryResponseProto where
  defaultValue = InitReplicaRecoveryResponseProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire InitReplicaRecoveryResponseProto where
  wireSize ft' self'@(InitReplicaRecoveryResponseProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 8 x'1 + P'.wireSizeOpt 1 14 x'2 + P'.wireSizeOpt 1 11 x'3)
  wirePut ft' self'@(InitReplicaRecoveryResponseProto x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 8 x'1
             P'.wirePutOpt 16 14 x'2
             P'.wirePutOpt 26 11 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{replicaFound = new'Field}) (P'.wireGet 8)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{state = Prelude'.Just new'Field}) (P'.wireGet 14)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{block = P'.mergeAppend (block old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> InitReplicaRecoveryResponseProto) InitReplicaRecoveryResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB InitReplicaRecoveryResponseProto
 
instance P'.ReflectDescriptor InitReplicaRecoveryResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8, 16, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.InitReplicaRecoveryResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InterDatanodeProtocolProtos\"], baseName = MName \"InitReplicaRecoveryResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"InterDatanodeProtocolProtos\",\"InitReplicaRecoveryResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.InitReplicaRecoveryResponseProto.replicaFound\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InterDatanodeProtocolProtos\",MName \"InitReplicaRecoveryResponseProto\"], baseName' = FName \"replicaFound\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.InitReplicaRecoveryResponseProto.state\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InterDatanodeProtocolProtos\",MName \"InitReplicaRecoveryResponseProto\"], baseName' = FName \"state\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ReplicaStateProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"ReplicaStateProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.InitReplicaRecoveryResponseProto.block\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InterDatanodeProtocolProtos\",MName \"InitReplicaRecoveryResponseProto\"], baseName' = FName \"block\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.BlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"BlockProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType InitReplicaRecoveryResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg InitReplicaRecoveryResponseProto where
  textPut msg
   = do
       P'.tellT "replicaFound" (replicaFound msg)
       P'.tellT "state" (state msg)
       P'.tellT "block" (block msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'replicaFound, parse'state, parse'block]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'replicaFound
         = P'.try
            (do
               v <- P'.getT "replicaFound"
               Prelude'.return (\ o -> o{replicaFound = v}))
        parse'state
         = P'.try
            (do
               v <- P'.getT "state"
               Prelude'.return (\ o -> o{state = v}))
        parse'block
         = P'.try
            (do
               v <- P'.getT "block"
               Prelude'.return (\ o -> o{block = v}))