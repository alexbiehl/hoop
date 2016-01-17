{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerNodemanagerServiceProtos.LocalResourceStatusProto (LocalResourceStatusProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.LocalResourceProto as YarnProtos (LocalResourceProto)
import qualified Hadoop.Protos.YarnProtos.SerializedExceptionProto as YarnProtos (SerializedExceptionProto)
import qualified Hadoop.Protos.YarnProtos.URLProto as YarnProtos (URLProto)
import qualified Hadoop.Protos.YarnServerNodemanagerServiceProtos.ResourceStatusTypeProto as YarnServerNodemanagerServiceProtos
       (ResourceStatusTypeProto)
 
data LocalResourceStatusProto = LocalResourceStatusProto{resource :: !(P'.Maybe YarnProtos.LocalResourceProto),
                                                         status ::
                                                         !(P'.Maybe YarnServerNodemanagerServiceProtos.ResourceStatusTypeProto),
                                                         localPath :: !(P'.Maybe YarnProtos.URLProto),
                                                         localSize :: !(P'.Maybe P'.Int64),
                                                         exception :: !(P'.Maybe YarnProtos.SerializedExceptionProto)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable LocalResourceStatusProto where
  mergeAppend (LocalResourceStatusProto x'1 x'2 x'3 x'4 x'5) (LocalResourceStatusProto y'1 y'2 y'3 y'4 y'5)
   = LocalResourceStatusProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
 
instance P'.Default LocalResourceStatusProto where
  defaultValue = LocalResourceStatusProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire LocalResourceStatusProto where
  wireSize ft' self'@(LocalResourceStatusProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 14 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 3 x'4 +
             P'.wireSizeOpt 1 11 x'5)
  wirePut ft' self'@(LocalResourceStatusProto x'1 x'2 x'3 x'4 x'5)
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
             P'.wirePutOpt 16 14 x'2
             P'.wirePutOpt 26 11 x'3
             P'.wirePutOpt 32 3 x'4
             P'.wirePutOpt 42 11 x'5
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{resource = P'.mergeAppend (resource old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{status = Prelude'.Just new'Field}) (P'.wireGet 14)
             26 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{localPath = P'.mergeAppend (localPath old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{localSize = Prelude'.Just new'Field}) (P'.wireGet 3)
             42 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{exception = P'.mergeAppend (exception old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> LocalResourceStatusProto) LocalResourceStatusProto where
  getVal m' f' = f' m'
 
instance P'.GPB LocalResourceStatusProto
 
instance P'.ReflectDescriptor LocalResourceStatusProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16, 26, 32, 42])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.LocalResourceStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerNodemanagerServiceProtos\"], baseName = MName \"LocalResourceStatusProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerNodemanagerServiceProtos\",\"LocalResourceStatusProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LocalResourceStatusProto.resource\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerServiceProtos\",MName \"LocalResourceStatusProto\"], baseName' = FName \"resource\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.LocalResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"LocalResourceProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LocalResourceStatusProto.status\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerServiceProtos\",MName \"LocalResourceStatusProto\"], baseName' = FName \"status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceStatusTypeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerNodemanagerServiceProtos\"], baseName = MName \"ResourceStatusTypeProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LocalResourceStatusProto.localPath\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerServiceProtos\",MName \"LocalResourceStatusProto\"], baseName' = FName \"localPath\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.URLProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"URLProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LocalResourceStatusProto.localSize\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerServiceProtos\",MName \"LocalResourceStatusProto\"], baseName' = FName \"localSize\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LocalResourceStatusProto.exception\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerServiceProtos\",MName \"LocalResourceStatusProto\"], baseName' = FName \"exception\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.SerializedExceptionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"SerializedExceptionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType LocalResourceStatusProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg LocalResourceStatusProto where
  textPut msg
   = do
       P'.tellT "resource" (resource msg)
       P'.tellT "status" (status msg)
       P'.tellT "localPath" (localPath msg)
       P'.tellT "localSize" (localSize msg)
       P'.tellT "exception" (exception msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'resource, parse'status, parse'localPath, parse'localSize, parse'exception]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'resource
         = P'.try
            (do
               v <- P'.getT "resource"
               Prelude'.return (\ o -> o{resource = v}))
        parse'status
         = P'.try
            (do
               v <- P'.getT "status"
               Prelude'.return (\ o -> o{status = v}))
        parse'localPath
         = P'.try
            (do
               v <- P'.getT "localPath"
               Prelude'.return (\ o -> o{localPath = v}))
        parse'localSize
         = P'.try
            (do
               v <- P'.getT "localSize"
               Prelude'.return (\ o -> o{localSize = v}))
        parse'exception
         = P'.try
            (do
               v <- P'.getT "exception"
               Prelude'.return (\ o -> o{exception = v}))