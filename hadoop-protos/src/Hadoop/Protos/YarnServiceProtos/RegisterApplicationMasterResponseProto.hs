{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.RegisterApplicationMasterResponseProto (RegisterApplicationMasterResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationACLMapProto as YarnProtos (ApplicationACLMapProto)
import qualified Hadoop.Protos.YarnProtos.ContainerProto as YarnProtos (ContainerProto)
import qualified Hadoop.Protos.YarnProtos.ResourceProto as YarnProtos (ResourceProto)
import qualified Hadoop.Protos.YarnServiceProtos.NMTokenProto as YarnServiceProtos (NMTokenProto)
import qualified Hadoop.Protos.YarnServiceProtos.SchedulerResourceTypes as YarnServiceProtos (SchedulerResourceTypes)
 
data RegisterApplicationMasterResponseProto = RegisterApplicationMasterResponseProto{maximumCapability ::
                                                                                     !(P'.Maybe YarnProtos.ResourceProto),
                                                                                     client_to_am_token_master_key ::
                                                                                     !(P'.Maybe P'.ByteString),
                                                                                     application_ACLs ::
                                                                                     !(P'.Seq YarnProtos.ApplicationACLMapProto),
                                                                                     containers_from_previous_attempts ::
                                                                                     !(P'.Seq YarnProtos.ContainerProto),
                                                                                     queue :: !(P'.Maybe P'.Utf8),
                                                                                     nm_tokens_from_previous_attempts ::
                                                                                     !(P'.Seq YarnServiceProtos.NMTokenProto),
                                                                                     scheduler_resource_types ::
                                                                                     !(P'.Seq
                                                                                        YarnServiceProtos.SchedulerResourceTypes)}
                                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RegisterApplicationMasterResponseProto where
  mergeAppend (RegisterApplicationMasterResponseProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   (RegisterApplicationMasterResponseProto y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = RegisterApplicationMasterResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
 
instance P'.Default RegisterApplicationMasterResponseProto where
  defaultValue
   = RegisterApplicationMasterResponseProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire RegisterApplicationMasterResponseProto where
  wireSize ft' self'@(RegisterApplicationMasterResponseProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 12 x'2 + P'.wireSizeRep 1 11 x'3 + P'.wireSizeRep 1 11 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeRep 1 11 x'6
             + P'.wireSizeRep 1 14 x'7)
  wirePut ft' self'@(RegisterApplicationMasterResponseProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
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
             P'.wirePutOpt 18 12 x'2
             P'.wirePutRep 26 11 x'3
             P'.wirePutRep 34 11 x'4
             P'.wirePutOpt 42 9 x'5
             P'.wirePutRep 50 11 x'6
             P'.wirePutRep 56 14 x'7
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{maximumCapability = P'.mergeAppend (maximumCapability old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{client_to_am_token_master_key = Prelude'.Just new'Field}) (P'.wireGet 12)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{application_ACLs = P'.append (application_ACLs old'Self) new'Field})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{containers_from_previous_attempts =
                                P'.append (containers_from_previous_attempts old'Self) new'Field})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{queue = Prelude'.Just new'Field}) (P'.wireGet 9)
             50 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{nm_tokens_from_previous_attempts = P'.append (nm_tokens_from_previous_attempts old'Self) new'Field})
                    (P'.wireGet 11)
             56 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{scheduler_resource_types = P'.append (scheduler_resource_types old'Self) new'Field})
                    (P'.wireGet 14)
             58 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{scheduler_resource_types = P'.mergeAppend (scheduler_resource_types old'Self) new'Field})
                    (P'.wireGetPacked 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RegisterApplicationMasterResponseProto) RegisterApplicationMasterResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB RegisterApplicationMasterResponseProto
 
instance P'.ReflectDescriptor RegisterApplicationMasterResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 42, 50, 56, 58])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.RegisterApplicationMasterResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"RegisterApplicationMasterResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"RegisterApplicationMasterResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RegisterApplicationMasterResponseProto.maximumCapability\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"RegisterApplicationMasterResponseProto\"], baseName' = FName \"maximumCapability\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RegisterApplicationMasterResponseProto.client_to_am_token_master_key\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"RegisterApplicationMasterResponseProto\"], baseName' = FName \"client_to_am_token_master_key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RegisterApplicationMasterResponseProto.application_ACLs\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"RegisterApplicationMasterResponseProto\"], baseName' = FName \"application_ACLs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationACLMapProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationACLMapProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RegisterApplicationMasterResponseProto.containers_from_previous_attempts\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"RegisterApplicationMasterResponseProto\"], baseName' = FName \"containers_from_previous_attempts\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RegisterApplicationMasterResponseProto.queue\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"RegisterApplicationMasterResponseProto\"], baseName' = FName \"queue\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RegisterApplicationMasterResponseProto.nm_tokens_from_previous_attempts\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"RegisterApplicationMasterResponseProto\"], baseName' = FName \"nm_tokens_from_previous_attempts\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NMTokenProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"NMTokenProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RegisterApplicationMasterResponseProto.scheduler_resource_types\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"RegisterApplicationMasterResponseProto\"], baseName' = FName \"scheduler_resource_types\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Just (WireTag {getWireTag = 56},WireTag {getWireTag = 58}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.SchedulerResourceTypes\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"SchedulerResourceTypes\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RegisterApplicationMasterResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RegisterApplicationMasterResponseProto where
  textPut msg
   = do
       P'.tellT "maximumCapability" (maximumCapability msg)
       P'.tellT "client_to_am_token_master_key" (client_to_am_token_master_key msg)
       P'.tellT "application_ACLs" (application_ACLs msg)
       P'.tellT "containers_from_previous_attempts" (containers_from_previous_attempts msg)
       P'.tellT "queue" (queue msg)
       P'.tellT "nm_tokens_from_previous_attempts" (nm_tokens_from_previous_attempts msg)
       P'.tellT "scheduler_resource_types" (scheduler_resource_types msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'maximumCapability, parse'client_to_am_token_master_key, parse'application_ACLs,
                   parse'containers_from_previous_attempts, parse'queue, parse'nm_tokens_from_previous_attempts,
                   parse'scheduler_resource_types])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'maximumCapability
         = P'.try
            (do
               v <- P'.getT "maximumCapability"
               Prelude'.return (\ o -> o{maximumCapability = v}))
        parse'client_to_am_token_master_key
         = P'.try
            (do
               v <- P'.getT "client_to_am_token_master_key"
               Prelude'.return (\ o -> o{client_to_am_token_master_key = v}))
        parse'application_ACLs
         = P'.try
            (do
               v <- P'.getT "application_ACLs"
               Prelude'.return (\ o -> o{application_ACLs = P'.append (application_ACLs o) v}))
        parse'containers_from_previous_attempts
         = P'.try
            (do
               v <- P'.getT "containers_from_previous_attempts"
               Prelude'.return (\ o -> o{containers_from_previous_attempts = P'.append (containers_from_previous_attempts o) v}))
        parse'queue
         = P'.try
            (do
               v <- P'.getT "queue"
               Prelude'.return (\ o -> o{queue = v}))
        parse'nm_tokens_from_previous_attempts
         = P'.try
            (do
               v <- P'.getT "nm_tokens_from_previous_attempts"
               Prelude'.return (\ o -> o{nm_tokens_from_previous_attempts = P'.append (nm_tokens_from_previous_attempts o) v}))
        parse'scheduler_resource_types
         = P'.try
            (do
               v <- P'.getT "scheduler_resource_types"
               Prelude'.return (\ o -> o{scheduler_resource_types = P'.append (scheduler_resource_types o) v}))