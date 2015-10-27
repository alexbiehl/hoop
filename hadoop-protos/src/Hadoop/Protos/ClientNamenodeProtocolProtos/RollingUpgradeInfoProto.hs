{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.RollingUpgradeInfoProto (RollingUpgradeInfoProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.RollingUpgradeStatusProto as HdfsProtos (RollingUpgradeStatusProto)
 
data RollingUpgradeInfoProto = RollingUpgradeInfoProto{status :: !(HdfsProtos.RollingUpgradeStatusProto), startTime :: !(P'.Word64),
                                                       finalizeTime :: !(P'.Word64), createdRollbackImages :: !(P'.Bool)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RollingUpgradeInfoProto where
  mergeAppend (RollingUpgradeInfoProto x'1 x'2 x'3 x'4) (RollingUpgradeInfoProto y'1 y'2 y'3 y'4)
   = RollingUpgradeInfoProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default RollingUpgradeInfoProto where
  defaultValue = RollingUpgradeInfoProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire RollingUpgradeInfoProto where
  wireSize ft' self'@(RollingUpgradeInfoProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeReq 1 4 x'3 + P'.wireSizeReq 1 8 x'4)
  wirePut ft' self'@(RollingUpgradeInfoProto x'1 x'2 x'3 x'4)
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
             P'.wirePutReq 32 8 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{status = P'.mergeAppend (status old'Self) (new'Field)}) (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{startTime = new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{finalizeTime = new'Field}) (P'.wireGet 4)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{createdRollbackImages = new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RollingUpgradeInfoProto) RollingUpgradeInfoProto where
  getVal m' f' = f' m'
 
instance P'.GPB RollingUpgradeInfoProto
 
instance P'.ReflectDescriptor RollingUpgradeInfoProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16, 24, 32]) (P'.fromDistinctAscList [10, 16, 24, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.RollingUpgradeInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"RollingUpgradeInfoProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"RollingUpgradeInfoProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.RollingUpgradeInfoProto.status\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"RollingUpgradeInfoProto\"], baseName' = FName \"status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.RollingUpgradeStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"RollingUpgradeStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.RollingUpgradeInfoProto.startTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"RollingUpgradeInfoProto\"], baseName' = FName \"startTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.RollingUpgradeInfoProto.finalizeTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"RollingUpgradeInfoProto\"], baseName' = FName \"finalizeTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.RollingUpgradeInfoProto.createdRollbackImages\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"RollingUpgradeInfoProto\"], baseName' = FName \"createdRollbackImages\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RollingUpgradeInfoProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RollingUpgradeInfoProto where
  textPut msg
   = do
       P'.tellT "status" (status msg)
       P'.tellT "startTime" (startTime msg)
       P'.tellT "finalizeTime" (finalizeTime msg)
       P'.tellT "createdRollbackImages" (createdRollbackImages msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'status, parse'startTime, parse'finalizeTime, parse'createdRollbackImages]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'status
         = P'.try
            (do
               v <- P'.getT "status"
               Prelude'.return (\ o -> o{status = v}))
        parse'startTime
         = P'.try
            (do
               v <- P'.getT "startTime"
               Prelude'.return (\ o -> o{startTime = v}))
        parse'finalizeTime
         = P'.try
            (do
               v <- P'.getT "finalizeTime"
               Prelude'.return (\ o -> o{finalizeTime = v}))
        parse'createdRollbackImages
         = P'.try
            (do
               v <- P'.getT "createdRollbackImages"
               Prelude'.return (\ o -> o{createdRollbackImages = v}))