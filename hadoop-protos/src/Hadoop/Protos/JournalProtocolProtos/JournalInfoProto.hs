{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.JournalProtocolProtos.JournalInfoProto (JournalInfoProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data JournalInfoProto = JournalInfoProto{clusterID :: !(P'.Utf8), layoutVersion :: !(P'.Maybe P'.Word32),
                                         namespaceID :: !(P'.Maybe P'.Word32)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable JournalInfoProto where
  mergeAppend (JournalInfoProto x'1 x'2 x'3) (JournalInfoProto y'1 y'2 y'3)
   = JournalInfoProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default JournalInfoProto where
  defaultValue = JournalInfoProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire JournalInfoProto where
  wireSize ft' self'@(JournalInfoProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeOpt 1 13 x'2 + P'.wireSizeOpt 1 13 x'3)
  wirePut ft' self'@(JournalInfoProto x'1 x'2 x'3)
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
             P'.wirePutOpt 16 13 x'2
             P'.wirePutOpt 24 13 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{clusterID = new'Field}) (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{layoutVersion = Prelude'.Just new'Field}) (P'.wireGet 13)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{namespaceID = Prelude'.Just new'Field}) (P'.wireGet 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> JournalInfoProto) JournalInfoProto where
  getVal m' f' = f' m'
 
instance P'.GPB JournalInfoProto
 
instance P'.ReflectDescriptor JournalInfoProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10, 16, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.JournalInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"JournalProtocolProtos\"], baseName = MName \"JournalInfoProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"JournalProtocolProtos\",\"JournalInfoProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.JournalInfoProto.clusterID\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"JournalInfoProto\"], baseName' = FName \"clusterID\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.JournalInfoProto.layoutVersion\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"JournalInfoProto\"], baseName' = FName \"layoutVersion\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.JournalInfoProto.namespaceID\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"JournalProtocolProtos\",MName \"JournalInfoProto\"], baseName' = FName \"namespaceID\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType JournalInfoProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg JournalInfoProto where
  textPut msg
   = do
       P'.tellT "clusterID" (clusterID msg)
       P'.tellT "layoutVersion" (layoutVersion msg)
       P'.tellT "namespaceID" (namespaceID msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'clusterID, parse'layoutVersion, parse'namespaceID]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'clusterID
         = P'.try
            (do
               v <- P'.getT "clusterID"
               Prelude'.return (\ o -> o{clusterID = v}))
        parse'layoutVersion
         = P'.try
            (do
               v <- P'.getT "layoutVersion"
               Prelude'.return (\ o -> o{layoutVersion = v}))
        parse'namespaceID
         = P'.try
            (do
               v <- P'.getT "namespaceID"
               Prelude'.return (\ o -> o{namespaceID = v}))