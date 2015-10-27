{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.StorageTypeQuotaInfosProto (StorageTypeQuotaInfosProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.StorageTypeQuotaInfoProto as HdfsProtos (StorageTypeQuotaInfoProto)
 
data StorageTypeQuotaInfosProto = StorageTypeQuotaInfosProto{typeQuotaInfo :: !(P'.Seq HdfsProtos.StorageTypeQuotaInfoProto)}
                                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable StorageTypeQuotaInfosProto where
  mergeAppend (StorageTypeQuotaInfosProto x'1) (StorageTypeQuotaInfosProto y'1)
   = StorageTypeQuotaInfosProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default StorageTypeQuotaInfosProto where
  defaultValue = StorageTypeQuotaInfosProto P'.defaultValue
 
instance P'.Wire StorageTypeQuotaInfosProto where
  wireSize ft' self'@(StorageTypeQuotaInfosProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(StorageTypeQuotaInfosProto x'1)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{typeQuotaInfo = P'.append (typeQuotaInfo old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> StorageTypeQuotaInfosProto) StorageTypeQuotaInfosProto where
  getVal m' f' = f' m'
 
instance P'.GPB StorageTypeQuotaInfosProto
 
instance P'.ReflectDescriptor StorageTypeQuotaInfosProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.StorageTypeQuotaInfosProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageTypeQuotaInfosProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"StorageTypeQuotaInfosProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.StorageTypeQuotaInfosProto.typeQuotaInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"StorageTypeQuotaInfosProto\"], baseName' = FName \"typeQuotaInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageTypeQuotaInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageTypeQuotaInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType StorageTypeQuotaInfosProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg StorageTypeQuotaInfosProto where
  textPut msg
   = do
       P'.tellT "typeQuotaInfo" (typeQuotaInfo msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'typeQuotaInfo]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'typeQuotaInfo
         = P'.try
            (do
               v <- P'.getT "typeQuotaInfo"
               Prelude'.return (\ o -> o{typeQuotaInfo = P'.append (typeQuotaInfo o) v}))