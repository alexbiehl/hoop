{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HAZKInfoProtos.ActiveNodeInfo (ActiveNodeInfo(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ActiveNodeInfo = ActiveNodeInfo{nameserviceId :: !(P'.Utf8), namenodeId :: !(P'.Utf8), hostname :: !(P'.Utf8),
                                     port :: !(P'.Int32), zkfcPort :: !(P'.Int32)}
                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ActiveNodeInfo where
  mergeAppend (ActiveNodeInfo x'1 x'2 x'3 x'4 x'5) (ActiveNodeInfo y'1 y'2 y'3 y'4 y'5)
   = ActiveNodeInfo (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
 
instance P'.Default ActiveNodeInfo where
  defaultValue = ActiveNodeInfo P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire ActiveNodeInfo where
  wireSize ft' self'@(ActiveNodeInfo x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeReq 1 9 x'3 + P'.wireSizeReq 1 5 x'4 +
             P'.wireSizeReq 1 5 x'5)
  wirePut ft' self'@(ActiveNodeInfo x'1 x'2 x'3 x'4 x'5)
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
             P'.wirePutReq 32 5 x'4
             P'.wirePutReq 40 5 x'5
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{nameserviceId = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{namenodeId = new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{hostname = new'Field}) (P'.wireGet 9)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{port = new'Field}) (P'.wireGet 5)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{zkfcPort = new'Field}) (P'.wireGet 5)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ActiveNodeInfo) ActiveNodeInfo where
  getVal m' f' = f' m'
 
instance P'.GPB ActiveNodeInfo
 
instance P'.ReflectDescriptor ActiveNodeInfo where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18, 26, 32, 40]) (P'.fromDistinctAscList [10, 18, 26, 32, 40])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.ActiveNodeInfo\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HAZKInfoProtos\"], baseName = MName \"ActiveNodeInfo\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HAZKInfoProtos\",\"ActiveNodeInfo.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ActiveNodeInfo.nameserviceId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HAZKInfoProtos\",MName \"ActiveNodeInfo\"], baseName' = FName \"nameserviceId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ActiveNodeInfo.namenodeId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HAZKInfoProtos\",MName \"ActiveNodeInfo\"], baseName' = FName \"namenodeId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ActiveNodeInfo.hostname\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HAZKInfoProtos\",MName \"ActiveNodeInfo\"], baseName' = FName \"hostname\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ActiveNodeInfo.port\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HAZKInfoProtos\",MName \"ActiveNodeInfo\"], baseName' = FName \"port\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ActiveNodeInfo.zkfcPort\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HAZKInfoProtos\",MName \"ActiveNodeInfo\"], baseName' = FName \"zkfcPort\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ActiveNodeInfo where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ActiveNodeInfo where
  textPut msg
   = do
       P'.tellT "nameserviceId" (nameserviceId msg)
       P'.tellT "namenodeId" (namenodeId msg)
       P'.tellT "hostname" (hostname msg)
       P'.tellT "port" (port msg)
       P'.tellT "zkfcPort" (zkfcPort msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'nameserviceId, parse'namenodeId, parse'hostname, parse'port, parse'zkfcPort]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'nameserviceId
         = P'.try
            (do
               v <- P'.getT "nameserviceId"
               Prelude'.return (\ o -> o{nameserviceId = v}))
        parse'namenodeId
         = P'.try
            (do
               v <- P'.getT "namenodeId"
               Prelude'.return (\ o -> o{namenodeId = v}))
        parse'hostname
         = P'.try
            (do
               v <- P'.getT "hostname"
               Prelude'.return (\ o -> o{hostname = v}))
        parse'port
         = P'.try
            (do
               v <- P'.getT "port"
               Prelude'.return (\ o -> o{port = v}))
        parse'zkfcPort
         = P'.try
            (do
               v <- P'.getT "zkfcPort"
               Prelude'.return (\ o -> o{zkfcPort = v}))