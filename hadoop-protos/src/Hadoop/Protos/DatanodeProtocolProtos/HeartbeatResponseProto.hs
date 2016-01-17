{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.HeartbeatResponseProto (HeartbeatResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DatanodeProtocolProtos.DatanodeCommandProto as DatanodeProtocolProtos (DatanodeCommandProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.NNHAStatusHeartbeatProto as DatanodeProtocolProtos (NNHAStatusHeartbeatProto)
import qualified Hadoop.Protos.HdfsProtos.RollingUpgradeStatusProto as HdfsProtos (RollingUpgradeStatusProto)
 
data HeartbeatResponseProto = HeartbeatResponseProto{cmds :: !(P'.Seq DatanodeProtocolProtos.DatanodeCommandProto),
                                                     haStatus :: !(DatanodeProtocolProtos.NNHAStatusHeartbeatProto),
                                                     rollingUpgradeStatus :: !(P'.Maybe HdfsProtos.RollingUpgradeStatusProto),
                                                     fullBlockReportLeaseId :: !(P'.Maybe P'.Word64)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable HeartbeatResponseProto where
  mergeAppend (HeartbeatResponseProto x'1 x'2 x'3 x'4) (HeartbeatResponseProto y'1 y'2 y'3 y'4)
   = HeartbeatResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default HeartbeatResponseProto where
  defaultValue = HeartbeatResponseProto P'.defaultValue P'.defaultValue P'.defaultValue (Prelude'.Just 0)
 
instance P'.Wire HeartbeatResponseProto where
  wireSize ft' self'@(HeartbeatResponseProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeReq 1 11 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 4 x'4)
  wirePut ft' self'@(HeartbeatResponseProto x'1 x'2 x'3 x'4)
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
             P'.wirePutReq 18 11 x'2
             P'.wirePutOpt 26 11 x'3
             P'.wirePutOpt 32 4 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{cmds = P'.append (cmds old'Self) new'Field}) (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{haStatus = P'.mergeAppend (haStatus old'Self) (new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{rollingUpgradeStatus = P'.mergeAppend (rollingUpgradeStatus old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{fullBlockReportLeaseId = Prelude'.Just new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> HeartbeatResponseProto) HeartbeatResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB HeartbeatResponseProto
 
instance P'.ReflectDescriptor HeartbeatResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [18]) (P'.fromDistinctAscList [10, 18, 26, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.HeartbeatResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"HeartbeatResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DatanodeProtocolProtos\",\"HeartbeatResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.HeartbeatResponseProto.cmds\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"HeartbeatResponseProto\"], baseName' = FName \"cmds\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.DatanodeCommandProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"DatanodeCommandProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.HeartbeatResponseProto.haStatus\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"HeartbeatResponseProto\"], baseName' = FName \"haStatus\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.NNHAStatusHeartbeatProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"NNHAStatusHeartbeatProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.HeartbeatResponseProto.rollingUpgradeStatus\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"HeartbeatResponseProto\"], baseName' = FName \"rollingUpgradeStatus\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.RollingUpgradeStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"RollingUpgradeStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.HeartbeatResponseProto.fullBlockReportLeaseId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"HeartbeatResponseProto\"], baseName' = FName \"fullBlockReportLeaseId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType HeartbeatResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg HeartbeatResponseProto where
  textPut msg
   = do
       P'.tellT "cmds" (cmds msg)
       P'.tellT "haStatus" (haStatus msg)
       P'.tellT "rollingUpgradeStatus" (rollingUpgradeStatus msg)
       P'.tellT "fullBlockReportLeaseId" (fullBlockReportLeaseId msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'cmds, parse'haStatus, parse'rollingUpgradeStatus, parse'fullBlockReportLeaseId])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'cmds
         = P'.try
            (do
               v <- P'.getT "cmds"
               Prelude'.return (\ o -> o{cmds = P'.append (cmds o) v}))
        parse'haStatus
         = P'.try
            (do
               v <- P'.getT "haStatus"
               Prelude'.return (\ o -> o{haStatus = v}))
        parse'rollingUpgradeStatus
         = P'.try
            (do
               v <- P'.getT "rollingUpgradeStatus"
               Prelude'.return (\ o -> o{rollingUpgradeStatus = v}))
        parse'fullBlockReportLeaseId
         = P'.try
            (do
               v <- P'.getT "fullBlockReportLeaseId"
               Prelude'.return (\ o -> o{fullBlockReportLeaseId = v}))