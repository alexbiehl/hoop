{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.GetDatanodeStorageReportResponseProto (GetDatanodeStorageReportResponseProto(..))
       where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.ClientNamenodeProtocolProtos.DatanodeStorageReportProto as ClientNamenodeProtocolProtos
       (DatanodeStorageReportProto)
 
data GetDatanodeStorageReportResponseProto = GetDatanodeStorageReportResponseProto{datanodeStorageReports ::
                                                                                   !(P'.Seq
                                                                                      ClientNamenodeProtocolProtos.DatanodeStorageReportProto)}
                                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetDatanodeStorageReportResponseProto where
  mergeAppend (GetDatanodeStorageReportResponseProto x'1) (GetDatanodeStorageReportResponseProto y'1)
   = GetDatanodeStorageReportResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetDatanodeStorageReportResponseProto where
  defaultValue = GetDatanodeStorageReportResponseProto P'.defaultValue
 
instance P'.Wire GetDatanodeStorageReportResponseProto where
  wireSize ft' self'@(GetDatanodeStorageReportResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(GetDatanodeStorageReportResponseProto x'1)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{datanodeStorageReports = P'.append (datanodeStorageReports old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetDatanodeStorageReportResponseProto) GetDatanodeStorageReportResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetDatanodeStorageReportResponseProto
 
instance P'.ReflectDescriptor GetDatanodeStorageReportResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.GetDatanodeStorageReportResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"GetDatanodeStorageReportResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"GetDatanodeStorageReportResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetDatanodeStorageReportResponseProto.datanodeStorageReports\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetDatanodeStorageReportResponseProto\"], baseName' = FName \"datanodeStorageReports\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeStorageReportProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"DatanodeStorageReportProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetDatanodeStorageReportResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetDatanodeStorageReportResponseProto where
  textPut msg
   = do
       P'.tellT "datanodeStorageReports" (datanodeStorageReports msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'datanodeStorageReports]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'datanodeStorageReports
         = P'.try
            (do
               v <- P'.getT "datanodeStorageReports"
               Prelude'.return (\ o -> o{datanodeStorageReports = P'.append (datanodeStorageReports o) v}))