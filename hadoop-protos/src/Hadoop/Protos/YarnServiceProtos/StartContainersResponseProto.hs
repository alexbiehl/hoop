{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.StartContainersResponseProto (StartContainersResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ContainerIdProto as YarnProtos (ContainerIdProto)
import qualified Hadoop.Protos.YarnProtos.StringBytesMapProto as YarnProtos (StringBytesMapProto)
import qualified Hadoop.Protos.YarnServiceProtos.ContainerExceptionMapProto as YarnServiceProtos (ContainerExceptionMapProto)
 
data StartContainersResponseProto = StartContainersResponseProto{services_meta_data :: !(P'.Seq YarnProtos.StringBytesMapProto),
                                                                 succeeded_requests :: !(P'.Seq YarnProtos.ContainerIdProto),
                                                                 failed_requests ::
                                                                 !(P'.Seq YarnServiceProtos.ContainerExceptionMapProto)}
                                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable StartContainersResponseProto where
  mergeAppend (StartContainersResponseProto x'1 x'2 x'3) (StartContainersResponseProto y'1 y'2 y'3)
   = StartContainersResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default StartContainersResponseProto where
  defaultValue = StartContainersResponseProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire StartContainersResponseProto where
  wireSize ft' self'@(StartContainersResponseProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeRep 1 11 x'2 + P'.wireSizeRep 1 11 x'3)
  wirePut ft' self'@(StartContainersResponseProto x'1 x'2 x'3)
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
             P'.wirePutRep 18 11 x'2
             P'.wirePutRep 26 11 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{services_meta_data = P'.append (services_meta_data old'Self) new'Field})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{succeeded_requests = P'.append (succeeded_requests old'Self) new'Field})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{failed_requests = P'.append (failed_requests old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> StartContainersResponseProto) StartContainersResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB StartContainersResponseProto
 
instance P'.ReflectDescriptor StartContainersResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.StartContainersResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"StartContainersResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"StartContainersResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.StartContainersResponseProto.services_meta_data\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"StartContainersResponseProto\"], baseName' = FName \"services_meta_data\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.StringBytesMapProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"StringBytesMapProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.StartContainersResponseProto.succeeded_requests\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"StartContainersResponseProto\"], baseName' = FName \"succeeded_requests\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.StartContainersResponseProto.failed_requests\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"StartContainersResponseProto\"], baseName' = FName \"failed_requests\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerExceptionMapProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"ContainerExceptionMapProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType StartContainersResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg StartContainersResponseProto where
  textPut msg
   = do
       P'.tellT "services_meta_data" (services_meta_data msg)
       P'.tellT "succeeded_requests" (succeeded_requests msg)
       P'.tellT "failed_requests" (failed_requests msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'services_meta_data, parse'succeeded_requests, parse'failed_requests]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'services_meta_data
         = P'.try
            (do
               v <- P'.getT "services_meta_data"
               Prelude'.return (\ o -> o{services_meta_data = P'.append (services_meta_data o) v}))
        parse'succeeded_requests
         = P'.try
            (do
               v <- P'.getT "succeeded_requests"
               Prelude'.return (\ o -> o{succeeded_requests = P'.append (succeeded_requests o) v}))
        parse'failed_requests
         = P'.try
            (do
               v <- P'.getT "failed_requests"
               Prelude'.return (\ o -> o{failed_requests = P'.append (failed_requests o) v}))