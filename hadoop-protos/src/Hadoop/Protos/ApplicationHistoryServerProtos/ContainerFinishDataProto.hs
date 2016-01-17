{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ApplicationHistoryServerProtos.ContainerFinishDataProto (ContainerFinishDataProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ContainerIdProto as YarnProtos (ContainerIdProto)
import qualified Hadoop.Protos.YarnProtos.ContainerStateProto as YarnProtos (ContainerStateProto)
 
data ContainerFinishDataProto = ContainerFinishDataProto{container_id :: !(P'.Maybe YarnProtos.ContainerIdProto),
                                                         finish_time :: !(P'.Maybe P'.Int64),
                                                         diagnostics_info :: !(P'.Maybe P'.Utf8),
                                                         container_exit_status :: !(P'.Maybe P'.Int32),
                                                         container_state :: !(P'.Maybe YarnProtos.ContainerStateProto)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ContainerFinishDataProto where
  mergeAppend (ContainerFinishDataProto x'1 x'2 x'3 x'4 x'5) (ContainerFinishDataProto y'1 y'2 y'3 y'4 y'5)
   = ContainerFinishDataProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
 
instance P'.Default ContainerFinishDataProto where
  defaultValue = ContainerFinishDataProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire ContainerFinishDataProto where
  wireSize ft' self'@(ContainerFinishDataProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 3 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 5 x'4 +
             P'.wireSizeOpt 1 14 x'5)
  wirePut ft' self'@(ContainerFinishDataProto x'1 x'2 x'3 x'4 x'5)
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
             P'.wirePutOpt 16 3 x'2
             P'.wirePutOpt 26 9 x'3
             P'.wirePutOpt 32 5 x'4
             P'.wirePutOpt 40 14 x'5
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
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{finish_time = Prelude'.Just new'Field}) (P'.wireGet 3)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{diagnostics_info = Prelude'.Just new'Field}) (P'.wireGet 9)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{container_exit_status = Prelude'.Just new'Field}) (P'.wireGet 5)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{container_state = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ContainerFinishDataProto) ContainerFinishDataProto where
  getVal m' f' = f' m'
 
instance P'.GPB ContainerFinishDataProto
 
instance P'.ReflectDescriptor ContainerFinishDataProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16, 26, 32, 40])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ContainerFinishDataProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ApplicationHistoryServerProtos\"], baseName = MName \"ContainerFinishDataProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ApplicationHistoryServerProtos\",\"ContainerFinishDataProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerFinishDataProto.container_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ContainerFinishDataProto\"], baseName' = FName \"container_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerFinishDataProto.finish_time\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ContainerFinishDataProto\"], baseName' = FName \"finish_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerFinishDataProto.diagnostics_info\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ContainerFinishDataProto\"], baseName' = FName \"diagnostics_info\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerFinishDataProto.container_exit_status\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ContainerFinishDataProto\"], baseName' = FName \"container_exit_status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerFinishDataProto.container_state\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ApplicationHistoryServerProtos\",MName \"ContainerFinishDataProto\"], baseName' = FName \"container_state\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerStateProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerStateProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ContainerFinishDataProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ContainerFinishDataProto where
  textPut msg
   = do
       P'.tellT "container_id" (container_id msg)
       P'.tellT "finish_time" (finish_time msg)
       P'.tellT "diagnostics_info" (diagnostics_info msg)
       P'.tellT "container_exit_status" (container_exit_status msg)
       P'.tellT "container_state" (container_state msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'container_id, parse'finish_time, parse'diagnostics_info, parse'container_exit_status,
                   parse'container_state])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'container_id
         = P'.try
            (do
               v <- P'.getT "container_id"
               Prelude'.return (\ o -> o{container_id = v}))
        parse'finish_time
         = P'.try
            (do
               v <- P'.getT "finish_time"
               Prelude'.return (\ o -> o{finish_time = v}))
        parse'diagnostics_info
         = P'.try
            (do
               v <- P'.getT "diagnostics_info"
               Prelude'.return (\ o -> o{diagnostics_info = v}))
        parse'container_exit_status
         = P'.try
            (do
               v <- P'.getT "container_exit_status"
               Prelude'.return (\ o -> o{container_exit_status = v}))
        parse'container_state
         = P'.try
            (do
               v <- P'.getT "container_state"
               Prelude'.return (\ o -> o{container_state = v}))