{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.ContainerExceptionMapProto (ContainerExceptionMapProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ContainerIdProto as YarnProtos (ContainerIdProto)
import qualified Hadoop.Protos.YarnProtos.SerializedExceptionProto as YarnProtos (SerializedExceptionProto)
 
data ContainerExceptionMapProto = ContainerExceptionMapProto{container_id :: !(P'.Maybe YarnProtos.ContainerIdProto),
                                                             exception :: !(P'.Maybe YarnProtos.SerializedExceptionProto)}
                                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ContainerExceptionMapProto where
  mergeAppend (ContainerExceptionMapProto x'1 x'2) (ContainerExceptionMapProto y'1 y'2)
   = ContainerExceptionMapProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ContainerExceptionMapProto where
  defaultValue = ContainerExceptionMapProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ContainerExceptionMapProto where
  wireSize ft' self'@(ContainerExceptionMapProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePut ft' self'@(ContainerExceptionMapProto x'1 x'2)
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
             P'.wirePutOpt 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{container_id = P'.mergeAppend (container_id old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{exception = P'.mergeAppend (exception old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ContainerExceptionMapProto) ContainerExceptionMapProto where
  getVal m' f' = f' m'
 
instance P'.GPB ContainerExceptionMapProto
 
instance P'.ReflectDescriptor ContainerExceptionMapProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ContainerExceptionMapProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"ContainerExceptionMapProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"ContainerExceptionMapProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerExceptionMapProto.container_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"ContainerExceptionMapProto\"], baseName' = FName \"container_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerExceptionMapProto.exception\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"ContainerExceptionMapProto\"], baseName' = FName \"exception\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.SerializedExceptionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"SerializedExceptionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ContainerExceptionMapProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ContainerExceptionMapProto where
  textPut msg
   = do
       P'.tellT "container_id" (container_id msg)
       P'.tellT "exception" (exception msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'container_id, parse'exception]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'container_id
         = P'.try
            (do
               v <- P'.getT "container_id"
               Prelude'.return (\ o -> o{container_id = v}))
        parse'exception
         = P'.try
            (do
               v <- P'.getT "exception"
               Prelude'.return (\ o -> o{exception = v}))