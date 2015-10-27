{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.StopContainersResponseProto (StopContainersResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ContainerIdProto as YarnProtos (ContainerIdProto)
import qualified Hadoop.Protos.YarnServiceProtos.ContainerExceptionMapProto as YarnServiceProtos (ContainerExceptionMapProto)
 
data StopContainersResponseProto = StopContainersResponseProto{succeeded_requests :: !(P'.Seq YarnProtos.ContainerIdProto),
                                                               failed_requests ::
                                                               !(P'.Seq YarnServiceProtos.ContainerExceptionMapProto)}
                                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable StopContainersResponseProto where
  mergeAppend (StopContainersResponseProto x'1 x'2) (StopContainersResponseProto y'1 y'2)
   = StopContainersResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default StopContainersResponseProto where
  defaultValue = StopContainersResponseProto P'.defaultValue P'.defaultValue
 
instance P'.Wire StopContainersResponseProto where
  wireSize ft' self'@(StopContainersResponseProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePut ft' self'@(StopContainersResponseProto x'1 x'2)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{succeeded_requests = P'.append (succeeded_requests old'Self) new'Field})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{failed_requests = P'.append (failed_requests old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> StopContainersResponseProto) StopContainersResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB StopContainersResponseProto
 
instance P'.ReflectDescriptor StopContainersResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.StopContainersResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"StopContainersResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"StopContainersResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.StopContainersResponseProto.succeeded_requests\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"StopContainersResponseProto\"], baseName' = FName \"succeeded_requests\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.StopContainersResponseProto.failed_requests\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"StopContainersResponseProto\"], baseName' = FName \"failed_requests\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerExceptionMapProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"ContainerExceptionMapProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType StopContainersResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg StopContainersResponseProto where
  textPut msg
   = do
       P'.tellT "succeeded_requests" (succeeded_requests msg)
       P'.tellT "failed_requests" (failed_requests msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'succeeded_requests, parse'failed_requests]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
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