{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.DatanodeCommandProto (DatanodeCommandProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DatanodeProtocolProtos.BalancerBandwidthCommandProto as DatanodeProtocolProtos
       (BalancerBandwidthCommandProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.BlockCommandProto as DatanodeProtocolProtos (BlockCommandProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.BlockIdCommandProto as DatanodeProtocolProtos (BlockIdCommandProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.BlockRecoveryCommandProto as DatanodeProtocolProtos
       (BlockRecoveryCommandProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.DatanodeCommandProto.Type as DatanodeProtocolProtos.DatanodeCommandProto
       (Type)
import qualified Hadoop.Protos.DatanodeProtocolProtos.FinalizeCommandProto as DatanodeProtocolProtos (FinalizeCommandProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.KeyUpdateCommandProto as DatanodeProtocolProtos (KeyUpdateCommandProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.RegisterCommandProto as DatanodeProtocolProtos (RegisterCommandProto)
 
data DatanodeCommandProto = DatanodeCommandProto{cmdType :: !(DatanodeProtocolProtos.DatanodeCommandProto.Type),
                                                 balancerCmd :: !(P'.Maybe DatanodeProtocolProtos.BalancerBandwidthCommandProto),
                                                 blkCmd :: !(P'.Maybe DatanodeProtocolProtos.BlockCommandProto),
                                                 recoveryCmd :: !(P'.Maybe DatanodeProtocolProtos.BlockRecoveryCommandProto),
                                                 finalizeCmd :: !(P'.Maybe DatanodeProtocolProtos.FinalizeCommandProto),
                                                 keyUpdateCmd :: !(P'.Maybe DatanodeProtocolProtos.KeyUpdateCommandProto),
                                                 registerCmd :: !(P'.Maybe DatanodeProtocolProtos.RegisterCommandProto),
                                                 blkIdCmd :: !(P'.Maybe DatanodeProtocolProtos.BlockIdCommandProto)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable DatanodeCommandProto where
  mergeAppend (DatanodeCommandProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8) (DatanodeCommandProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8)
   = DatanodeCommandProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
 
instance P'.Default DatanodeCommandProto where
  defaultValue
   = DatanodeCommandProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire DatanodeCommandProto where
  wireSize ft' self'@(DatanodeCommandProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 14 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 11 x'5
             + P'.wireSizeOpt 1 11 x'6
             + P'.wireSizeOpt 1 11 x'7
             + P'.wireSizeOpt 1 11 x'8)
  wirePut ft' self'@(DatanodeCommandProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 14 x'1
             P'.wirePutOpt 18 11 x'2
             P'.wirePutOpt 26 11 x'3
             P'.wirePutOpt 34 11 x'4
             P'.wirePutOpt 42 11 x'5
             P'.wirePutOpt 50 11 x'6
             P'.wirePutOpt 58 11 x'7
             P'.wirePutOpt 66 11 x'8
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{cmdType = new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{balancerCmd = P'.mergeAppend (balancerCmd old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{blkCmd = P'.mergeAppend (blkCmd old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{recoveryCmd = P'.mergeAppend (recoveryCmd old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{finalizeCmd = P'.mergeAppend (finalizeCmd old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{keyUpdateCmd = P'.mergeAppend (keyUpdateCmd old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             58 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{registerCmd = P'.mergeAppend (registerCmd old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             66 -> Prelude'.fmap (\ !new'Field -> old'Self{blkIdCmd = P'.mergeAppend (blkIdCmd old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> DatanodeCommandProto) DatanodeCommandProto where
  getVal m' f' = f' m'
 
instance P'.GPB DatanodeCommandProto
 
instance P'.ReflectDescriptor DatanodeCommandProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8, 18, 26, 34, 42, 50, 58, 66])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.DatanodeCommandProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"DatanodeCommandProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DatanodeProtocolProtos\",\"DatanodeCommandProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.DatanodeCommandProto.cmdType\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"DatanodeCommandProto\"], baseName' = FName \"cmdType\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.DatanodeCommandProto.Type\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\",MName \"DatanodeCommandProto\"], baseName = MName \"Type\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.DatanodeCommandProto.balancerCmd\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"DatanodeCommandProto\"], baseName' = FName \"balancerCmd\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.BalancerBandwidthCommandProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"BalancerBandwidthCommandProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.DatanodeCommandProto.blkCmd\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"DatanodeCommandProto\"], baseName' = FName \"blkCmd\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.BlockCommandProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"BlockCommandProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.DatanodeCommandProto.recoveryCmd\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"DatanodeCommandProto\"], baseName' = FName \"recoveryCmd\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.BlockRecoveryCommandProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"BlockRecoveryCommandProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.DatanodeCommandProto.finalizeCmd\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"DatanodeCommandProto\"], baseName' = FName \"finalizeCmd\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.FinalizeCommandProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"FinalizeCommandProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.DatanodeCommandProto.keyUpdateCmd\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"DatanodeCommandProto\"], baseName' = FName \"keyUpdateCmd\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.KeyUpdateCommandProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"KeyUpdateCommandProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.DatanodeCommandProto.registerCmd\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"DatanodeCommandProto\"], baseName' = FName \"registerCmd\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.RegisterCommandProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"RegisterCommandProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.DatanodeCommandProto.blkIdCmd\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"DatanodeCommandProto\"], baseName' = FName \"blkIdCmd\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.BlockIdCommandProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"BlockIdCommandProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType DatanodeCommandProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg DatanodeCommandProto where
  textPut msg
   = do
       P'.tellT "cmdType" (cmdType msg)
       P'.tellT "balancerCmd" (balancerCmd msg)
       P'.tellT "blkCmd" (blkCmd msg)
       P'.tellT "recoveryCmd" (recoveryCmd msg)
       P'.tellT "finalizeCmd" (finalizeCmd msg)
       P'.tellT "keyUpdateCmd" (keyUpdateCmd msg)
       P'.tellT "registerCmd" (registerCmd msg)
       P'.tellT "blkIdCmd" (blkIdCmd msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'cmdType, parse'balancerCmd, parse'blkCmd, parse'recoveryCmd, parse'finalizeCmd, parse'keyUpdateCmd,
                   parse'registerCmd, parse'blkIdCmd])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'cmdType
         = P'.try
            (do
               v <- P'.getT "cmdType"
               Prelude'.return (\ o -> o{cmdType = v}))
        parse'balancerCmd
         = P'.try
            (do
               v <- P'.getT "balancerCmd"
               Prelude'.return (\ o -> o{balancerCmd = v}))
        parse'blkCmd
         = P'.try
            (do
               v <- P'.getT "blkCmd"
               Prelude'.return (\ o -> o{blkCmd = v}))
        parse'recoveryCmd
         = P'.try
            (do
               v <- P'.getT "recoveryCmd"
               Prelude'.return (\ o -> o{recoveryCmd = v}))
        parse'finalizeCmd
         = P'.try
            (do
               v <- P'.getT "finalizeCmd"
               Prelude'.return (\ o -> o{finalizeCmd = v}))
        parse'keyUpdateCmd
         = P'.try
            (do
               v <- P'.getT "keyUpdateCmd"
               Prelude'.return (\ o -> o{keyUpdateCmd = v}))
        parse'registerCmd
         = P'.try
            (do
               v <- P'.getT "registerCmd"
               Prelude'.return (\ o -> o{registerCmd = v}))
        parse'blkIdCmd
         = P'.try
            (do
               v <- P'.getT "blkIdCmd"
               Prelude'.return (\ o -> o{blkIdCmd = v}))