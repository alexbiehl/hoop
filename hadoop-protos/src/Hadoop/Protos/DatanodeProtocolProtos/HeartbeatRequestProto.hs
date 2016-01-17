{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.HeartbeatRequestProto (HeartbeatRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DatanodeProtocolProtos.DatanodeRegistrationProto as DatanodeProtocolProtos
       (DatanodeRegistrationProto)
import qualified Hadoop.Protos.DatanodeProtocolProtos.VolumeFailureSummaryProto as DatanodeProtocolProtos
       (VolumeFailureSummaryProto)
import qualified Hadoop.Protos.HdfsProtos.StorageReportProto as HdfsProtos (StorageReportProto)
 
data HeartbeatRequestProto = HeartbeatRequestProto{registration :: !(DatanodeProtocolProtos.DatanodeRegistrationProto),
                                                   reports :: !(P'.Seq HdfsProtos.StorageReportProto),
                                                   xmitsInProgress :: !(P'.Maybe P'.Word32), xceiverCount :: !(P'.Maybe P'.Word32),
                                                   failedVolumes :: !(P'.Maybe P'.Word32), cacheCapacity :: !(P'.Maybe P'.Word64),
                                                   cacheUsed :: !(P'.Maybe P'.Word64),
                                                   volumeFailureSummary ::
                                                   !(P'.Maybe DatanodeProtocolProtos.VolumeFailureSummaryProto),
                                                   requestFullBlockReportLease :: !(P'.Maybe P'.Bool)}
                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable HeartbeatRequestProto where
  mergeAppend (HeartbeatRequestProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9)
   (HeartbeatRequestProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9)
   = HeartbeatRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
 
instance P'.Default HeartbeatRequestProto where
  defaultValue
   = HeartbeatRequestProto P'.defaultValue P'.defaultValue (Prelude'.Just 0) (Prelude'.Just 0) (Prelude'.Just 0) (Prelude'.Just 0)
      (Prelude'.Just 0)
      P'.defaultValue
      (Prelude'.Just Prelude'.False)
 
instance P'.Wire HeartbeatRequestProto where
  wireSize ft' self'@(HeartbeatRequestProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeRep 1 11 x'2 + P'.wireSizeOpt 1 13 x'3 + P'.wireSizeOpt 1 13 x'4 +
             P'.wireSizeOpt 1 13 x'5
             + P'.wireSizeOpt 1 4 x'6
             + P'.wireSizeOpt 1 4 x'7
             + P'.wireSizeOpt 1 11 x'8
             + P'.wireSizeOpt 1 8 x'9)
  wirePut ft' self'@(HeartbeatRequestProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9)
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
             P'.wirePutRep 18 11 x'2
             P'.wirePutOpt 24 13 x'3
             P'.wirePutOpt 32 13 x'4
             P'.wirePutOpt 40 13 x'5
             P'.wirePutOpt 48 4 x'6
             P'.wirePutOpt 56 4 x'7
             P'.wirePutOpt 66 11 x'8
             P'.wirePutOpt 72 8 x'9
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{registration = P'.mergeAppend (registration old'Self) (new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{reports = P'.append (reports old'Self) new'Field}) (P'.wireGet 11)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{xmitsInProgress = Prelude'.Just new'Field}) (P'.wireGet 13)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{xceiverCount = Prelude'.Just new'Field}) (P'.wireGet 13)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{failedVolumes = Prelude'.Just new'Field}) (P'.wireGet 13)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{cacheCapacity = Prelude'.Just new'Field}) (P'.wireGet 4)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{cacheUsed = Prelude'.Just new'Field}) (P'.wireGet 4)
             66 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{volumeFailureSummary = P'.mergeAppend (volumeFailureSummary old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             72 -> Prelude'.fmap (\ !new'Field -> old'Self{requestFullBlockReportLease = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> HeartbeatRequestProto) HeartbeatRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB HeartbeatRequestProto
 
instance P'.ReflectDescriptor HeartbeatRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10, 18, 24, 32, 40, 48, 56, 66, 72])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.HeartbeatRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"HeartbeatRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DatanodeProtocolProtos\",\"HeartbeatRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.HeartbeatRequestProto.registration\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"HeartbeatRequestProto\"], baseName' = FName \"registration\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.DatanodeRegistrationProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"DatanodeRegistrationProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.HeartbeatRequestProto.reports\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"HeartbeatRequestProto\"], baseName' = FName \"reports\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageReportProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageReportProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.HeartbeatRequestProto.xmitsInProgress\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"HeartbeatRequestProto\"], baseName' = FName \"xmitsInProgress\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.HeartbeatRequestProto.xceiverCount\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"HeartbeatRequestProto\"], baseName' = FName \"xceiverCount\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.HeartbeatRequestProto.failedVolumes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"HeartbeatRequestProto\"], baseName' = FName \"failedVolumes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.HeartbeatRequestProto.cacheCapacity\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"HeartbeatRequestProto\"], baseName' = FName \"cacheCapacity\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.HeartbeatRequestProto.cacheUsed\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"HeartbeatRequestProto\"], baseName' = FName \"cacheUsed\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.HeartbeatRequestProto.volumeFailureSummary\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"HeartbeatRequestProto\"], baseName' = FName \"volumeFailureSummary\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.VolumeFailureSummaryProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"VolumeFailureSummaryProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.HeartbeatRequestProto.requestFullBlockReportLease\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"HeartbeatRequestProto\"], baseName' = FName \"requestFullBlockReportLease\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 72}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType HeartbeatRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg HeartbeatRequestProto where
  textPut msg
   = do
       P'.tellT "registration" (registration msg)
       P'.tellT "reports" (reports msg)
       P'.tellT "xmitsInProgress" (xmitsInProgress msg)
       P'.tellT "xceiverCount" (xceiverCount msg)
       P'.tellT "failedVolumes" (failedVolumes msg)
       P'.tellT "cacheCapacity" (cacheCapacity msg)
       P'.tellT "cacheUsed" (cacheUsed msg)
       P'.tellT "volumeFailureSummary" (volumeFailureSummary msg)
       P'.tellT "requestFullBlockReportLease" (requestFullBlockReportLease msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'registration, parse'reports, parse'xmitsInProgress, parse'xceiverCount, parse'failedVolumes,
                   parse'cacheCapacity, parse'cacheUsed, parse'volumeFailureSummary, parse'requestFullBlockReportLease])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'registration
         = P'.try
            (do
               v <- P'.getT "registration"
               Prelude'.return (\ o -> o{registration = v}))
        parse'reports
         = P'.try
            (do
               v <- P'.getT "reports"
               Prelude'.return (\ o -> o{reports = P'.append (reports o) v}))
        parse'xmitsInProgress
         = P'.try
            (do
               v <- P'.getT "xmitsInProgress"
               Prelude'.return (\ o -> o{xmitsInProgress = v}))
        parse'xceiverCount
         = P'.try
            (do
               v <- P'.getT "xceiverCount"
               Prelude'.return (\ o -> o{xceiverCount = v}))
        parse'failedVolumes
         = P'.try
            (do
               v <- P'.getT "failedVolumes"
               Prelude'.return (\ o -> o{failedVolumes = v}))
        parse'cacheCapacity
         = P'.try
            (do
               v <- P'.getT "cacheCapacity"
               Prelude'.return (\ o -> o{cacheCapacity = v}))
        parse'cacheUsed
         = P'.try
            (do
               v <- P'.getT "cacheUsed"
               Prelude'.return (\ o -> o{cacheUsed = v}))
        parse'volumeFailureSummary
         = P'.try
            (do
               v <- P'.getT "volumeFailureSummary"
               Prelude'.return (\ o -> o{volumeFailureSummary = v}))
        parse'requestFullBlockReportLease
         = P'.try
            (do
               v <- P'.getT "requestFullBlockReportLease"
               Prelude'.return (\ o -> o{requestFullBlockReportLease = v}))