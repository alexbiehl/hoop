{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.EncryptionZonesProtos.GetEZForPathResponseProto (GetEZForPathResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.EncryptionZonesProtos.EncryptionZoneProto as EncryptionZonesProtos (EncryptionZoneProto)
 
data GetEZForPathResponseProto = GetEZForPathResponseProto{zone :: !(P'.Maybe EncryptionZonesProtos.EncryptionZoneProto)}
                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetEZForPathResponseProto where
  mergeAppend (GetEZForPathResponseProto x'1) (GetEZForPathResponseProto y'1) = GetEZForPathResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetEZForPathResponseProto where
  defaultValue = GetEZForPathResponseProto P'.defaultValue
 
instance P'.Wire GetEZForPathResponseProto where
  wireSize ft' self'@(GetEZForPathResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1)
  wirePut ft' self'@(GetEZForPathResponseProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 11 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{zone = P'.mergeAppend (zone old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetEZForPathResponseProto) GetEZForPathResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetEZForPathResponseProto
 
instance P'.ReflectDescriptor GetEZForPathResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.GetEZForPathResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"EncryptionZonesProtos\"], baseName = MName \"GetEZForPathResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"EncryptionZonesProtos\",\"GetEZForPathResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetEZForPathResponseProto.zone\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"EncryptionZonesProtos\",MName \"GetEZForPathResponseProto\"], baseName' = FName \"zone\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.EncryptionZoneProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"EncryptionZonesProtos\"], baseName = MName \"EncryptionZoneProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetEZForPathResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetEZForPathResponseProto where
  textPut msg
   = do
       P'.tellT "zone" (zone msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'zone]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'zone
         = P'.try
            (do
               v <- P'.getT "zone"
               Prelude'.return (\ o -> o{zone = v}))