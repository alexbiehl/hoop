{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.FsImageProto.INodeSection.QuotaByStorageTypeFeatureProto (QuotaByStorageTypeFeatureProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.FsImageProto.INodeSection.QuotaByStorageTypeEntryProto as FsImageProto.INodeSection
       (QuotaByStorageTypeEntryProto)
 
data QuotaByStorageTypeFeatureProto = QuotaByStorageTypeFeatureProto{quotas ::
                                                                     !(P'.Seq
                                                                        FsImageProto.INodeSection.QuotaByStorageTypeEntryProto)}
                                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable QuotaByStorageTypeFeatureProto where
  mergeAppend (QuotaByStorageTypeFeatureProto x'1) (QuotaByStorageTypeFeatureProto y'1)
   = QuotaByStorageTypeFeatureProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default QuotaByStorageTypeFeatureProto where
  defaultValue = QuotaByStorageTypeFeatureProto P'.defaultValue
 
instance P'.Wire QuotaByStorageTypeFeatureProto where
  wireSize ft' self'@(QuotaByStorageTypeFeatureProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(QuotaByStorageTypeFeatureProto x'1)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{quotas = P'.append (quotas old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> QuotaByStorageTypeFeatureProto) QuotaByStorageTypeFeatureProto where
  getVal m' f' = f' m'
 
instance P'.GPB QuotaByStorageTypeFeatureProto
 
instance P'.ReflectDescriptor QuotaByStorageTypeFeatureProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.INodeSection.QuotaByStorageTypeFeatureProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"INodeSection\"], baseName = MName \"QuotaByStorageTypeFeatureProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"FsImageProto\",\"INodeSection\",\"QuotaByStorageTypeFeatureProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.QuotaByStorageTypeFeatureProto.quotas\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"QuotaByStorageTypeFeatureProto\"], baseName' = FName \"quotas\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.INodeSection.QuotaByStorageTypeEntryProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"INodeSection\"], baseName = MName \"QuotaByStorageTypeEntryProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType QuotaByStorageTypeFeatureProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg QuotaByStorageTypeFeatureProto where
  textPut msg
   = do
       P'.tellT "quotas" (quotas msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'quotas]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'quotas
         = P'.try
            (do
               v <- P'.getT "quotas"
               Prelude'.return (\ o -> o{quotas = P'.append (quotas o) v}))