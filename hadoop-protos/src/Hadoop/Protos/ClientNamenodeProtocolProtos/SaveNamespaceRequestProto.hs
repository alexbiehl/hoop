{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.SaveNamespaceRequestProto (SaveNamespaceRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data SaveNamespaceRequestProto = SaveNamespaceRequestProto{timeWindow :: !(P'.Maybe P'.Word64), txGap :: !(P'.Maybe P'.Word64)}
                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SaveNamespaceRequestProto where
  mergeAppend (SaveNamespaceRequestProto x'1 x'2) (SaveNamespaceRequestProto y'1 y'2)
   = SaveNamespaceRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default SaveNamespaceRequestProto where
  defaultValue = SaveNamespaceRequestProto (Prelude'.Just 0) (Prelude'.Just 0)
 
instance P'.Wire SaveNamespaceRequestProto where
  wireSize ft' self'@(SaveNamespaceRequestProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 4 x'1 + P'.wireSizeOpt 1 4 x'2)
  wirePut ft' self'@(SaveNamespaceRequestProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 4 x'1
             P'.wirePutOpt 16 4 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{timeWindow = Prelude'.Just new'Field}) (P'.wireGet 4)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{txGap = Prelude'.Just new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> SaveNamespaceRequestProto) SaveNamespaceRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB SaveNamespaceRequestProto
 
instance P'.ReflectDescriptor SaveNamespaceRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.SaveNamespaceRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"SaveNamespaceRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"SaveNamespaceRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SaveNamespaceRequestProto.timeWindow\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"SaveNamespaceRequestProto\"], baseName' = FName \"timeWindow\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SaveNamespaceRequestProto.txGap\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"SaveNamespaceRequestProto\"], baseName' = FName \"txGap\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType SaveNamespaceRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg SaveNamespaceRequestProto where
  textPut msg
   = do
       P'.tellT "timeWindow" (timeWindow msg)
       P'.tellT "txGap" (txGap msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'timeWindow, parse'txGap]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'timeWindow
         = P'.try
            (do
               v <- P'.getT "timeWindow"
               Prelude'.return (\ o -> o{timeWindow = v}))
        parse'txGap
         = P'.try
            (do
               v <- P'.getT "txGap"
               Prelude'.return (\ o -> o{txGap = v}))