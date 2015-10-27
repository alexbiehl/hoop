{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.DatanodeStorageReportProto (DatanodeStorageReportProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.DatanodeInfoProto as HdfsProtos (DatanodeInfoProto)
import qualified Hadoop.Protos.HdfsProtos.StorageReportProto as HdfsProtos (StorageReportProto)
 
data DatanodeStorageReportProto = DatanodeStorageReportProto{datanodeInfo :: !(HdfsProtos.DatanodeInfoProto),
                                                             storageReports :: !(P'.Seq HdfsProtos.StorageReportProto)}
                                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable DatanodeStorageReportProto where
  mergeAppend (DatanodeStorageReportProto x'1 x'2) (DatanodeStorageReportProto y'1 y'2)
   = DatanodeStorageReportProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default DatanodeStorageReportProto where
  defaultValue = DatanodeStorageReportProto P'.defaultValue P'.defaultValue
 
instance P'.Wire DatanodeStorageReportProto where
  wireSize ft' self'@(DatanodeStorageReportProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePut ft' self'@(DatanodeStorageReportProto x'1 x'2)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{datanodeInfo = P'.mergeAppend (datanodeInfo old'Self) (new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{storageReports = P'.append (storageReports old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> DatanodeStorageReportProto) DatanodeStorageReportProto where
  getVal m' f' = f' m'
 
instance P'.GPB DatanodeStorageReportProto
 
instance P'.ReflectDescriptor DatanodeStorageReportProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeStorageReportProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"DatanodeStorageReportProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"DatanodeStorageReportProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeStorageReportProto.datanodeInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"DatanodeStorageReportProto\"], baseName' = FName \"datanodeInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeStorageReportProto.storageReports\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"DatanodeStorageReportProto\"], baseName' = FName \"storageReports\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageReportProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageReportProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType DatanodeStorageReportProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg DatanodeStorageReportProto where
  textPut msg
   = do
       P'.tellT "datanodeInfo" (datanodeInfo msg)
       P'.tellT "storageReports" (storageReports msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'datanodeInfo, parse'storageReports]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'datanodeInfo
         = P'.try
            (do
               v <- P'.getT "datanodeInfo"
               Prelude'.return (\ o -> o{datanodeInfo = v}))
        parse'storageReports
         = P'.try
            (do
               v <- P'.getT "storageReports"
               Prelude'.return (\ o -> o{storageReports = P'.append (storageReports o) v}))