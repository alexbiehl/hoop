{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.DatanodeIDProto (DatanodeIDProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data DatanodeIDProto = DatanodeIDProto{ipAddr :: !(P'.Utf8), hostName :: !(P'.Utf8), datanodeUuid :: !(P'.Utf8),
                                       xferPort :: !(P'.Word32), infoPort :: !(P'.Word32), ipcPort :: !(P'.Word32),
                                       infoSecurePort :: !(P'.Maybe P'.Word32)}
                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable DatanodeIDProto where
  mergeAppend (DatanodeIDProto x'1 x'2 x'3 x'4 x'5 x'6 x'7) (DatanodeIDProto y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = DatanodeIDProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
 
instance P'.Default DatanodeIDProto where
  defaultValue
   = DatanodeIDProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      (Prelude'.Just 0)
 
instance P'.Wire DatanodeIDProto where
  wireSize ft' self'@(DatanodeIDProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeReq 1 9 x'3 + P'.wireSizeReq 1 13 x'4 +
             P'.wireSizeReq 1 13 x'5
             + P'.wireSizeReq 1 13 x'6
             + P'.wireSizeOpt 1 13 x'7)
  wirePut ft' self'@(DatanodeIDProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 9 x'1
             P'.wirePutReq 18 9 x'2
             P'.wirePutReq 26 9 x'3
             P'.wirePutReq 32 13 x'4
             P'.wirePutReq 40 13 x'5
             P'.wirePutReq 48 13 x'6
             P'.wirePutOpt 56 13 x'7
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{ipAddr = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{hostName = new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{datanodeUuid = new'Field}) (P'.wireGet 9)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{xferPort = new'Field}) (P'.wireGet 13)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{infoPort = new'Field}) (P'.wireGet 13)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{ipcPort = new'Field}) (P'.wireGet 13)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{infoSecurePort = Prelude'.Just new'Field}) (P'.wireGet 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> DatanodeIDProto) DatanodeIDProto where
  getVal m' f' = f' m'
 
instance P'.GPB DatanodeIDProto
 
instance P'.ReflectDescriptor DatanodeIDProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18, 26, 32, 40, 48]) (P'.fromDistinctAscList [10, 18, 26, 32, 40, 48, 56])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeIDProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeIDProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"DatanodeIDProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeIDProto.ipAddr\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeIDProto\"], baseName' = FName \"ipAddr\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeIDProto.hostName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeIDProto\"], baseName' = FName \"hostName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeIDProto.datanodeUuid\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeIDProto\"], baseName' = FName \"datanodeUuid\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeIDProto.xferPort\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeIDProto\"], baseName' = FName \"xferPort\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeIDProto.infoPort\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeIDProto\"], baseName' = FName \"infoPort\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeIDProto.ipcPort\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeIDProto\"], baseName' = FName \"ipcPort\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeIDProto.infoSecurePort\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeIDProto\"], baseName' = FName \"infoSecurePort\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType DatanodeIDProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg DatanodeIDProto where
  textPut msg
   = do
       P'.tellT "ipAddr" (ipAddr msg)
       P'.tellT "hostName" (hostName msg)
       P'.tellT "datanodeUuid" (datanodeUuid msg)
       P'.tellT "xferPort" (xferPort msg)
       P'.tellT "infoPort" (infoPort msg)
       P'.tellT "ipcPort" (ipcPort msg)
       P'.tellT "infoSecurePort" (infoSecurePort msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'ipAddr, parse'hostName, parse'datanodeUuid, parse'xferPort, parse'infoPort, parse'ipcPort,
                   parse'infoSecurePort])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'ipAddr
         = P'.try
            (do
               v <- P'.getT "ipAddr"
               Prelude'.return (\ o -> o{ipAddr = v}))
        parse'hostName
         = P'.try
            (do
               v <- P'.getT "hostName"
               Prelude'.return (\ o -> o{hostName = v}))
        parse'datanodeUuid
         = P'.try
            (do
               v <- P'.getT "datanodeUuid"
               Prelude'.return (\ o -> o{datanodeUuid = v}))
        parse'xferPort
         = P'.try
            (do
               v <- P'.getT "xferPort"
               Prelude'.return (\ o -> o{xferPort = v}))
        parse'infoPort
         = P'.try
            (do
               v <- P'.getT "infoPort"
               Prelude'.return (\ o -> o{infoPort = v}))
        parse'ipcPort
         = P'.try
            (do
               v <- P'.getT "ipcPort"
               Prelude'.return (\ o -> o{ipcPort = v}))
        parse'infoSecurePort
         = P'.try
            (do
               v <- P'.getT "infoSecurePort"
               Prelude'.return (\ o -> o{infoSecurePort = v}))