{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.RpcHeaderProtos.RpcSaslProto.SaslAuth (SaslAuth(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data SaslAuth = SaslAuth{method :: !(P'.Utf8), mechanism :: !(P'.Utf8), protocol :: !(P'.Maybe P'.Utf8),
                         serverId :: !(P'.Maybe P'.Utf8), challenge :: !(P'.Maybe P'.ByteString)}
              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SaslAuth where
  mergeAppend (SaslAuth x'1 x'2 x'3 x'4 x'5) (SaslAuth y'1 y'2 y'3 y'4 y'5)
   = SaslAuth (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
 
instance P'.Default SaslAuth where
  defaultValue = SaslAuth P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire SaslAuth where
  wireSize ft' self'@(SaslAuth x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeOpt 1 12 x'5)
  wirePut ft' self'@(SaslAuth x'1 x'2 x'3 x'4 x'5)
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
             P'.wirePutOpt 26 9 x'3
             P'.wirePutOpt 34 9 x'4
             P'.wirePutOpt 42 12 x'5
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{method = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{mechanism = new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{protocol = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{serverId = Prelude'.Just new'Field}) (P'.wireGet 9)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{challenge = Prelude'.Just new'Field}) (P'.wireGet 12)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> SaslAuth) SaslAuth where
  getVal m' f' = f' m'
 
instance P'.GPB SaslAuth
 
instance P'.ReflectDescriptor SaslAuth where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18]) (P'.fromDistinctAscList [10, 18, 26, 34, 42])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.RpcSaslProto.SaslAuth\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"RpcHeaderProtos\",MName \"RpcSaslProto\"], baseName = MName \"SaslAuth\"}, descFilePath = [\"Hadoop\",\"Protos\",\"RpcHeaderProtos\",\"RpcSaslProto\",\"SaslAuth.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcSaslProto.SaslAuth.method\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcSaslProto\",MName \"SaslAuth\"], baseName' = FName \"method\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcSaslProto.SaslAuth.mechanism\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcSaslProto\",MName \"SaslAuth\"], baseName' = FName \"mechanism\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcSaslProto.SaslAuth.protocol\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcSaslProto\",MName \"SaslAuth\"], baseName' = FName \"protocol\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcSaslProto.SaslAuth.serverId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcSaslProto\",MName \"SaslAuth\"], baseName' = FName \"serverId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcSaslProto.SaslAuth.challenge\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcSaslProto\",MName \"SaslAuth\"], baseName' = FName \"challenge\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType SaslAuth where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg SaslAuth where
  textPut msg
   = do
       P'.tellT "method" (method msg)
       P'.tellT "mechanism" (mechanism msg)
       P'.tellT "protocol" (protocol msg)
       P'.tellT "serverId" (serverId msg)
       P'.tellT "challenge" (challenge msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'method, parse'mechanism, parse'protocol, parse'serverId, parse'challenge]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'method
         = P'.try
            (do
               v <- P'.getT "method"
               Prelude'.return (\ o -> o{method = v}))
        parse'mechanism
         = P'.try
            (do
               v <- P'.getT "mechanism"
               Prelude'.return (\ o -> o{mechanism = v}))
        parse'protocol
         = P'.try
            (do
               v <- P'.getT "protocol"
               Prelude'.return (\ o -> o{protocol = v}))
        parse'serverId
         = P'.try
            (do
               v <- P'.getT "serverId"
               Prelude'.return (\ o -> o{serverId = v}))
        parse'challenge
         = P'.try
            (do
               v <- P'.getT "challenge"
               Prelude'.return (\ o -> o{challenge = v}))