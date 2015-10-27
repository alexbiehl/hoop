{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerCommonServiceProtos.NodeHeartbeatResponseProto (NodeHeartbeatResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationIdProto as YarnProtos (ApplicationIdProto)
import qualified Hadoop.Protos.YarnProtos.ContainerIdProto as YarnProtos (ContainerIdProto)
import qualified Hadoop.Protos.YarnServerCommonProtos.MasterKeyProto as YarnServerCommonProtos (MasterKeyProto)
import qualified Hadoop.Protos.YarnServerCommonProtos.NodeActionProto as YarnServerCommonProtos (NodeActionProto)
import qualified Hadoop.Protos.YarnServerCommonServiceProtos.SystemCredentialsForAppsProto as YarnServerCommonServiceProtos
       (SystemCredentialsForAppsProto)
 
data NodeHeartbeatResponseProto = NodeHeartbeatResponseProto{response_id :: !(P'.Maybe P'.Int32),
                                                             container_token_master_key ::
                                                             !(P'.Maybe YarnServerCommonProtos.MasterKeyProto),
                                                             nm_token_master_key ::
                                                             !(P'.Maybe YarnServerCommonProtos.MasterKeyProto),
                                                             nodeAction :: !(P'.Maybe YarnServerCommonProtos.NodeActionProto),
                                                             containers_to_cleanup :: !(P'.Seq YarnProtos.ContainerIdProto),
                                                             applications_to_cleanup :: !(P'.Seq YarnProtos.ApplicationIdProto),
                                                             nextHeartBeatInterval :: !(P'.Maybe P'.Int64),
                                                             diagnostics_message :: !(P'.Maybe P'.Utf8),
                                                             containers_to_be_removed_from_nm ::
                                                             !(P'.Seq YarnProtos.ContainerIdProto),
                                                             system_credentials_for_apps ::
                                                             !(P'.Seq YarnServerCommonServiceProtos.SystemCredentialsForAppsProto),
                                                             areNodeLabelsAcceptedByRM :: !(P'.Maybe P'.Bool)}
                                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable NodeHeartbeatResponseProto where
  mergeAppend (NodeHeartbeatResponseProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11)
   (NodeHeartbeatResponseProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11)
   = NodeHeartbeatResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)
 
instance P'.Default NodeHeartbeatResponseProto where
  defaultValue
   = NodeHeartbeatResponseProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just Prelude'.False)
 
instance P'.Wire NodeHeartbeatResponseProto where
  wireSize ft' self'@(NodeHeartbeatResponseProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 5 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 14 x'4 +
             P'.wireSizeRep 1 11 x'5
             + P'.wireSizeRep 1 11 x'6
             + P'.wireSizeOpt 1 3 x'7
             + P'.wireSizeOpt 1 9 x'8
             + P'.wireSizeRep 1 11 x'9
             + P'.wireSizeRep 1 11 x'10
             + P'.wireSizeOpt 1 8 x'11)
  wirePut ft' self'@(NodeHeartbeatResponseProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 5 x'1
             P'.wirePutOpt 18 11 x'2
             P'.wirePutOpt 26 11 x'3
             P'.wirePutOpt 32 14 x'4
             P'.wirePutRep 42 11 x'5
             P'.wirePutRep 50 11 x'6
             P'.wirePutOpt 56 3 x'7
             P'.wirePutOpt 66 9 x'8
             P'.wirePutRep 74 11 x'9
             P'.wirePutRep 82 11 x'10
             P'.wirePutOpt 88 8 x'11
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{response_id = Prelude'.Just new'Field}) (P'.wireGet 5)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{container_token_master_key =
                                P'.mergeAppend (container_token_master_key old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{nm_token_master_key = P'.mergeAppend (nm_token_master_key old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{nodeAction = Prelude'.Just new'Field}) (P'.wireGet 14)
             42 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{containers_to_cleanup = P'.append (containers_to_cleanup old'Self) new'Field})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{applications_to_cleanup = P'.append (applications_to_cleanup old'Self) new'Field})
                    (P'.wireGet 11)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{nextHeartBeatInterval = Prelude'.Just new'Field}) (P'.wireGet 3)
             66 -> Prelude'.fmap (\ !new'Field -> old'Self{diagnostics_message = Prelude'.Just new'Field}) (P'.wireGet 9)
             74 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{containers_to_be_removed_from_nm = P'.append (containers_to_be_removed_from_nm old'Self) new'Field})
                    (P'.wireGet 11)
             82 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{system_credentials_for_apps = P'.append (system_credentials_for_apps old'Self) new'Field})
                    (P'.wireGet 11)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{areNodeLabelsAcceptedByRM = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> NodeHeartbeatResponseProto) NodeHeartbeatResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB NodeHeartbeatResponseProto
 
instance P'.ReflectDescriptor NodeHeartbeatResponseProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18, 26, 32, 42, 50, 56, 66, 74, 82, 88])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.NodeHeartbeatResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonServiceProtos\"], baseName = MName \"NodeHeartbeatResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerCommonServiceProtos\",\"NodeHeartbeatResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHeartbeatResponseProto.response_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"NodeHeartbeatResponseProto\"], baseName' = FName \"response_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHeartbeatResponseProto.container_token_master_key\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"NodeHeartbeatResponseProto\"], baseName' = FName \"container_token_master_key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.MasterKeyProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonProtos\"], baseName = MName \"MasterKeyProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHeartbeatResponseProto.nm_token_master_key\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"NodeHeartbeatResponseProto\"], baseName' = FName \"nm_token_master_key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.MasterKeyProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonProtos\"], baseName = MName \"MasterKeyProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHeartbeatResponseProto.nodeAction\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"NodeHeartbeatResponseProto\"], baseName' = FName \"nodeAction\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NodeActionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonProtos\"], baseName = MName \"NodeActionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHeartbeatResponseProto.containers_to_cleanup\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"NodeHeartbeatResponseProto\"], baseName' = FName \"containers_to_cleanup\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHeartbeatResponseProto.applications_to_cleanup\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"NodeHeartbeatResponseProto\"], baseName' = FName \"applications_to_cleanup\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHeartbeatResponseProto.nextHeartBeatInterval\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"NodeHeartbeatResponseProto\"], baseName' = FName \"nextHeartBeatInterval\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHeartbeatResponseProto.diagnostics_message\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"NodeHeartbeatResponseProto\"], baseName' = FName \"diagnostics_message\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHeartbeatResponseProto.containers_to_be_removed_from_nm\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"NodeHeartbeatResponseProto\"], baseName' = FName \"containers_to_be_removed_from_nm\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHeartbeatResponseProto.system_credentials_for_apps\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"NodeHeartbeatResponseProto\"], baseName' = FName \"system_credentials_for_apps\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.SystemCredentialsForAppsProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonServiceProtos\"], baseName = MName \"SystemCredentialsForAppsProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.NodeHeartbeatResponseProto.areNodeLabelsAcceptedByRM\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"NodeHeartbeatResponseProto\"], baseName' = FName \"areNodeLabelsAcceptedByRM\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType NodeHeartbeatResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg NodeHeartbeatResponseProto where
  textPut msg
   = do
       P'.tellT "response_id" (response_id msg)
       P'.tellT "container_token_master_key" (container_token_master_key msg)
       P'.tellT "nm_token_master_key" (nm_token_master_key msg)
       P'.tellT "nodeAction" (nodeAction msg)
       P'.tellT "containers_to_cleanup" (containers_to_cleanup msg)
       P'.tellT "applications_to_cleanup" (applications_to_cleanup msg)
       P'.tellT "nextHeartBeatInterval" (nextHeartBeatInterval msg)
       P'.tellT "diagnostics_message" (diagnostics_message msg)
       P'.tellT "containers_to_be_removed_from_nm" (containers_to_be_removed_from_nm msg)
       P'.tellT "system_credentials_for_apps" (system_credentials_for_apps msg)
       P'.tellT "areNodeLabelsAcceptedByRM" (areNodeLabelsAcceptedByRM msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'response_id, parse'container_token_master_key, parse'nm_token_master_key, parse'nodeAction,
                   parse'containers_to_cleanup, parse'applications_to_cleanup, parse'nextHeartBeatInterval,
                   parse'diagnostics_message, parse'containers_to_be_removed_from_nm, parse'system_credentials_for_apps,
                   parse'areNodeLabelsAcceptedByRM])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'response_id
         = P'.try
            (do
               v <- P'.getT "response_id"
               Prelude'.return (\ o -> o{response_id = v}))
        parse'container_token_master_key
         = P'.try
            (do
               v <- P'.getT "container_token_master_key"
               Prelude'.return (\ o -> o{container_token_master_key = v}))
        parse'nm_token_master_key
         = P'.try
            (do
               v <- P'.getT "nm_token_master_key"
               Prelude'.return (\ o -> o{nm_token_master_key = v}))
        parse'nodeAction
         = P'.try
            (do
               v <- P'.getT "nodeAction"
               Prelude'.return (\ o -> o{nodeAction = v}))
        parse'containers_to_cleanup
         = P'.try
            (do
               v <- P'.getT "containers_to_cleanup"
               Prelude'.return (\ o -> o{containers_to_cleanup = P'.append (containers_to_cleanup o) v}))
        parse'applications_to_cleanup
         = P'.try
            (do
               v <- P'.getT "applications_to_cleanup"
               Prelude'.return (\ o -> o{applications_to_cleanup = P'.append (applications_to_cleanup o) v}))
        parse'nextHeartBeatInterval
         = P'.try
            (do
               v <- P'.getT "nextHeartBeatInterval"
               Prelude'.return (\ o -> o{nextHeartBeatInterval = v}))
        parse'diagnostics_message
         = P'.try
            (do
               v <- P'.getT "diagnostics_message"
               Prelude'.return (\ o -> o{diagnostics_message = v}))
        parse'containers_to_be_removed_from_nm
         = P'.try
            (do
               v <- P'.getT "containers_to_be_removed_from_nm"
               Prelude'.return (\ o -> o{containers_to_be_removed_from_nm = P'.append (containers_to_be_removed_from_nm o) v}))
        parse'system_credentials_for_apps
         = P'.try
            (do
               v <- P'.getT "system_credentials_for_apps"
               Prelude'.return (\ o -> o{system_credentials_for_apps = P'.append (system_credentials_for_apps o) v}))
        parse'areNodeLabelsAcceptedByRM
         = P'.try
            (do
               v <- P'.getT "areNodeLabelsAcceptedByRM"
               Prelude'.return (\ o -> o{areNodeLabelsAcceptedByRM = v}))