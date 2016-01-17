{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ProtobufRpcEngineProtos.RequestHeaderProto (RequestHeaderProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RequestHeaderProto = RequestHeaderProto{methodName :: !(P'.Utf8), declaringClassProtocolName :: !(P'.Utf8),
                                             clientProtocolVersion :: !(P'.Word64)}
                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RequestHeaderProto where
  mergeAppend (RequestHeaderProto x'1 x'2 x'3) (RequestHeaderProto y'1 y'2 y'3)
   = RequestHeaderProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default RequestHeaderProto where
  defaultValue = RequestHeaderProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire RequestHeaderProto where
  wireSize ft' self'@(RequestHeaderProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeReq 1 4 x'3)
  wirePut ft' self'@(RequestHeaderProto x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 9 x'1
             P'.wirePutReq 18 9 x'2
             P'.wirePutReq 24 4 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{methodName = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{declaringClassProtocolName = new'Field}) (P'.wireGet 9)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{clientProtocolVersion = new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RequestHeaderProto) RequestHeaderProto where
  getVal m' f' = f' m'
 
instance P'.GPB RequestHeaderProto
 
instance P'.ReflectDescriptor RequestHeaderProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18, 24]) (P'.fromDistinctAscList [10, 18, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.RequestHeaderProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ProtobufRpcEngineProtos\"], baseName = MName \"RequestHeaderProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ProtobufRpcEngineProtos\",\"RequestHeaderProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RequestHeaderProto.methodName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ProtobufRpcEngineProtos\",MName \"RequestHeaderProto\"], baseName' = FName \"methodName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RequestHeaderProto.declaringClassProtocolName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ProtobufRpcEngineProtos\",MName \"RequestHeaderProto\"], baseName' = FName \"declaringClassProtocolName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RequestHeaderProto.clientProtocolVersion\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ProtobufRpcEngineProtos\",MName \"RequestHeaderProto\"], baseName' = FName \"clientProtocolVersion\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RequestHeaderProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RequestHeaderProto where
  textPut msg
   = do
       P'.tellT "methodName" (methodName msg)
       P'.tellT "declaringClassProtocolName" (declaringClassProtocolName msg)
       P'.tellT "clientProtocolVersion" (clientProtocolVersion msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'methodName, parse'declaringClassProtocolName, parse'clientProtocolVersion]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'methodName
         = P'.try
            (do
               v <- P'.getT "methodName"
               Prelude'.return (\ o -> o{methodName = v}))
        parse'declaringClassProtocolName
         = P'.try
            (do
               v <- P'.getT "declaringClassProtocolName"
               Prelude'.return (\ o -> o{declaringClassProtocolName = v}))
        parse'clientProtocolVersion
         = P'.try
            (do
               v <- P'.getT "clientProtocolVersion"
               Prelude'.return (\ o -> o{clientProtocolVersion = v}))