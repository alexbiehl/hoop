{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.RegisterApplicationMasterRequestProto (RegisterApplicationMasterRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RegisterApplicationMasterRequestProto = RegisterApplicationMasterRequestProto{host :: !(P'.Maybe P'.Utf8),
                                                                                   rpc_port :: !(P'.Maybe P'.Int32),
                                                                                   tracking_url :: !(P'.Maybe P'.Utf8)}
                                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RegisterApplicationMasterRequestProto where
  mergeAppend (RegisterApplicationMasterRequestProto x'1 x'2 x'3) (RegisterApplicationMasterRequestProto y'1 y'2 y'3)
   = RegisterApplicationMasterRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default RegisterApplicationMasterRequestProto where
  defaultValue = RegisterApplicationMasterRequestProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire RegisterApplicationMasterRequestProto where
  wireSize ft' self'@(RegisterApplicationMasterRequestProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 5 x'2 + P'.wireSizeOpt 1 9 x'3)
  wirePut ft' self'@(RegisterApplicationMasterRequestProto x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 9 x'1
             P'.wirePutOpt 16 5 x'2
             P'.wirePutOpt 26 9 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{host = Prelude'.Just new'Field}) (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{rpc_port = Prelude'.Just new'Field}) (P'.wireGet 5)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{tracking_url = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RegisterApplicationMasterRequestProto) RegisterApplicationMasterRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB RegisterApplicationMasterRequestProto
 
instance P'.ReflectDescriptor RegisterApplicationMasterRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.RegisterApplicationMasterRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"RegisterApplicationMasterRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"RegisterApplicationMasterRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RegisterApplicationMasterRequestProto.host\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"RegisterApplicationMasterRequestProto\"], baseName' = FName \"host\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RegisterApplicationMasterRequestProto.rpc_port\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"RegisterApplicationMasterRequestProto\"], baseName' = FName \"rpc_port\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RegisterApplicationMasterRequestProto.tracking_url\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"RegisterApplicationMasterRequestProto\"], baseName' = FName \"tracking_url\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RegisterApplicationMasterRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RegisterApplicationMasterRequestProto where
  textPut msg
   = do
       P'.tellT "host" (host msg)
       P'.tellT "rpc_port" (rpc_port msg)
       P'.tellT "tracking_url" (tracking_url msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'host, parse'rpc_port, parse'tracking_url]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'host
         = P'.try
            (do
               v <- P'.getT "host"
               Prelude'.return (\ o -> o{host = v}))
        parse'rpc_port
         = P'.try
            (do
               v <- P'.getT "rpc_port"
               Prelude'.return (\ o -> o{rpc_port = v}))
        parse'tracking_url
         = P'.try
            (do
               v <- P'.getT "tracking_url"
               Prelude'.return (\ o -> o{tracking_url = v}))