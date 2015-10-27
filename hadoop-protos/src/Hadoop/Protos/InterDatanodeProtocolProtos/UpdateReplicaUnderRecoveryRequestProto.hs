{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.InterDatanodeProtocolProtos.UpdateReplicaUnderRecoveryRequestProto (UpdateReplicaUnderRecoveryRequestProto(..))
       where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.ExtendedBlockProto as HdfsProtos (ExtendedBlockProto)
 
data UpdateReplicaUnderRecoveryRequestProto = UpdateReplicaUnderRecoveryRequestProto{block :: !(HdfsProtos.ExtendedBlockProto),
                                                                                     recoveryId :: !(P'.Word64),
                                                                                     newLength :: !(P'.Word64),
                                                                                     newBlockId :: !(P'.Maybe P'.Word64)}
                                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable UpdateReplicaUnderRecoveryRequestProto where
  mergeAppend (UpdateReplicaUnderRecoveryRequestProto x'1 x'2 x'3 x'4) (UpdateReplicaUnderRecoveryRequestProto y'1 y'2 y'3 y'4)
   = UpdateReplicaUnderRecoveryRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
 
instance P'.Default UpdateReplicaUnderRecoveryRequestProto where
  defaultValue = UpdateReplicaUnderRecoveryRequestProto P'.defaultValue P'.defaultValue P'.defaultValue (Prelude'.Just 0)
 
instance P'.Wire UpdateReplicaUnderRecoveryRequestProto where
  wireSize ft' self'@(UpdateReplicaUnderRecoveryRequestProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeReq 1 4 x'3 + P'.wireSizeOpt 1 4 x'4)
  wirePut ft' self'@(UpdateReplicaUnderRecoveryRequestProto x'1 x'2 x'3 x'4)
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
             P'.wirePutReq 16 4 x'2
             P'.wirePutReq 24 4 x'3
             P'.wirePutOpt 32 4 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{block = P'.mergeAppend (block old'Self) (new'Field)}) (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{recoveryId = new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{newLength = new'Field}) (P'.wireGet 4)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{newBlockId = Prelude'.Just new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> UpdateReplicaUnderRecoveryRequestProto) UpdateReplicaUnderRecoveryRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB UpdateReplicaUnderRecoveryRequestProto
 
instance P'.ReflectDescriptor UpdateReplicaUnderRecoveryRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16, 24]) (P'.fromDistinctAscList [10, 16, 24, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.UpdateReplicaUnderRecoveryRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InterDatanodeProtocolProtos\"], baseName = MName \"UpdateReplicaUnderRecoveryRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"InterDatanodeProtocolProtos\",\"UpdateReplicaUnderRecoveryRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.UpdateReplicaUnderRecoveryRequestProto.block\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InterDatanodeProtocolProtos\",MName \"UpdateReplicaUnderRecoveryRequestProto\"], baseName' = FName \"block\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ExtendedBlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"ExtendedBlockProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.UpdateReplicaUnderRecoveryRequestProto.recoveryId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InterDatanodeProtocolProtos\",MName \"UpdateReplicaUnderRecoveryRequestProto\"], baseName' = FName \"recoveryId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.UpdateReplicaUnderRecoveryRequestProto.newLength\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InterDatanodeProtocolProtos\",MName \"UpdateReplicaUnderRecoveryRequestProto\"], baseName' = FName \"newLength\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.UpdateReplicaUnderRecoveryRequestProto.newBlockId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InterDatanodeProtocolProtos\",MName \"UpdateReplicaUnderRecoveryRequestProto\"], baseName' = FName \"newBlockId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType UpdateReplicaUnderRecoveryRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg UpdateReplicaUnderRecoveryRequestProto where
  textPut msg
   = do
       P'.tellT "block" (block msg)
       P'.tellT "recoveryId" (recoveryId msg)
       P'.tellT "newLength" (newLength msg)
       P'.tellT "newBlockId" (newBlockId msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'block, parse'recoveryId, parse'newLength, parse'newBlockId]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'block
         = P'.try
            (do
               v <- P'.getT "block"
               Prelude'.return (\ o -> o{block = v}))
        parse'recoveryId
         = P'.try
            (do
               v <- P'.getT "recoveryId"
               Prelude'.return (\ o -> o{recoveryId = v}))
        parse'newLength
         = P'.try
            (do
               v <- P'.getT "newLength"
               Prelude'.return (\ o -> o{newLength = v}))
        parse'newBlockId
         = P'.try
            (do
               v <- P'.getT "newBlockId"
               Prelude'.return (\ o -> o{newBlockId = v}))