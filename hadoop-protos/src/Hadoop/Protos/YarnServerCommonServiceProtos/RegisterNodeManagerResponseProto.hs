{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerCommonServiceProtos.RegisterNodeManagerResponseProto (RegisterNodeManagerResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnServerCommonProtos.MasterKeyProto as YarnServerCommonProtos (MasterKeyProto)
import qualified Hadoop.Protos.YarnServerCommonProtos.NodeActionProto as YarnServerCommonProtos (NodeActionProto)
 
data RegisterNodeManagerResponseProto = RegisterNodeManagerResponseProto{container_token_master_key ::
                                                                         !(P'.Maybe YarnServerCommonProtos.MasterKeyProto),
                                                                         nm_token_master_key ::
                                                                         !(P'.Maybe YarnServerCommonProtos.MasterKeyProto),
                                                                         nodeAction ::
                                                                         !(P'.Maybe YarnServerCommonProtos.NodeActionProto),
                                                                         rm_identifier :: !(P'.Maybe P'.Int64),
                                                                         diagnostics_message :: !(P'.Maybe P'.Utf8),
                                                                         rm_version :: !(P'.Maybe P'.Utf8),
                                                                         areNodeLabelsAcceptedByRM :: !(P'.Maybe P'.Bool)}
                                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RegisterNodeManagerResponseProto where
  mergeAppend (RegisterNodeManagerResponseProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   (RegisterNodeManagerResponseProto y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = RegisterNodeManagerResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
 
instance P'.Default RegisterNodeManagerResponseProto where
  defaultValue
   = RegisterNodeManagerResponseProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      (Prelude'.Just Prelude'.False)
 
instance P'.Wire RegisterNodeManagerResponseProto where
  wireSize ft' self'@(RegisterNodeManagerResponseProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 14 x'3 + P'.wireSizeOpt 1 3 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeOpt 1 9 x'6
             + P'.wireSizeOpt 1 8 x'7)
  wirePut ft' self'@(RegisterNodeManagerResponseProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
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
             P'.wirePutOpt 24 14 x'3
             P'.wirePutOpt 32 3 x'4
             P'.wirePutOpt 42 9 x'5
             P'.wirePutOpt 50 9 x'6
             P'.wirePutOpt 56 8 x'7
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
                      old'Self{container_token_master_key =
                                P'.mergeAppend (container_token_master_key old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{nm_token_master_key = P'.mergeAppend (nm_token_master_key old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{nodeAction = Prelude'.Just new'Field}) (P'.wireGet 14)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{rm_identifier = Prelude'.Just new'Field}) (P'.wireGet 3)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{diagnostics_message = Prelude'.Just new'Field}) (P'.wireGet 9)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{rm_version = Prelude'.Just new'Field}) (P'.wireGet 9)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{areNodeLabelsAcceptedByRM = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RegisterNodeManagerResponseProto) RegisterNodeManagerResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB RegisterNodeManagerResponseProto
 
instance P'.ReflectDescriptor RegisterNodeManagerResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 24, 32, 42, 50, 56])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.RegisterNodeManagerResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonServiceProtos\"], baseName = MName \"RegisterNodeManagerResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerCommonServiceProtos\",\"RegisterNodeManagerResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RegisterNodeManagerResponseProto.container_token_master_key\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"RegisterNodeManagerResponseProto\"], baseName' = FName \"container_token_master_key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.MasterKeyProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonProtos\"], baseName = MName \"MasterKeyProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RegisterNodeManagerResponseProto.nm_token_master_key\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"RegisterNodeManagerResponseProto\"], baseName' = FName \"nm_token_master_key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.MasterKeyProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonProtos\"], baseName = MName \"MasterKeyProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RegisterNodeManagerResponseProto.nodeAction\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"RegisterNodeManagerResponseProto\"], baseName' = FName \"nodeAction\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.NodeActionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonProtos\"], baseName = MName \"NodeActionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RegisterNodeManagerResponseProto.rm_identifier\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"RegisterNodeManagerResponseProto\"], baseName' = FName \"rm_identifier\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RegisterNodeManagerResponseProto.diagnostics_message\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"RegisterNodeManagerResponseProto\"], baseName' = FName \"diagnostics_message\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RegisterNodeManagerResponseProto.rm_version\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"RegisterNodeManagerResponseProto\"], baseName' = FName \"rm_version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RegisterNodeManagerResponseProto.areNodeLabelsAcceptedByRM\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"RegisterNodeManagerResponseProto\"], baseName' = FName \"areNodeLabelsAcceptedByRM\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RegisterNodeManagerResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RegisterNodeManagerResponseProto where
  textPut msg
   = do
       P'.tellT "container_token_master_key" (container_token_master_key msg)
       P'.tellT "nm_token_master_key" (nm_token_master_key msg)
       P'.tellT "nodeAction" (nodeAction msg)
       P'.tellT "rm_identifier" (rm_identifier msg)
       P'.tellT "diagnostics_message" (diagnostics_message msg)
       P'.tellT "rm_version" (rm_version msg)
       P'.tellT "areNodeLabelsAcceptedByRM" (areNodeLabelsAcceptedByRM msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'container_token_master_key, parse'nm_token_master_key, parse'nodeAction, parse'rm_identifier,
                   parse'diagnostics_message, parse'rm_version, parse'areNodeLabelsAcceptedByRM])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
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
        parse'rm_identifier
         = P'.try
            (do
               v <- P'.getT "rm_identifier"
               Prelude'.return (\ o -> o{rm_identifier = v}))
        parse'diagnostics_message
         = P'.try
            (do
               v <- P'.getT "diagnostics_message"
               Prelude'.return (\ o -> o{diagnostics_message = v}))
        parse'rm_version
         = P'.try
            (do
               v <- P'.getT "rm_version"
               Prelude'.return (\ o -> o{rm_version = v}))
        parse'areNodeLabelsAcceptedByRM
         = P'.try
            (do
               v <- P'.getT "areNodeLabelsAcceptedByRM"
               Prelude'.return (\ o -> o{areNodeLabelsAcceptedByRM = v}))