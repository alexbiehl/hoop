{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.RpcHeaderProtos.RpcSaslProto (RpcSaslProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.RpcHeaderProtos.RpcSaslProto.SaslAuth as RpcHeaderProtos.RpcSaslProto (SaslAuth)
import qualified Hadoop.Protos.RpcHeaderProtos.RpcSaslProto.SaslState as RpcHeaderProtos.RpcSaslProto (SaslState)
 
data RpcSaslProto = RpcSaslProto{version :: !(P'.Maybe P'.Word32), state :: !(RpcHeaderProtos.RpcSaslProto.SaslState),
                                 token :: !(P'.Maybe P'.ByteString), auths :: !(P'.Seq RpcHeaderProtos.RpcSaslProto.SaslAuth)}
                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RpcSaslProto where
  mergeAppend (RpcSaslProto x'1 x'2 x'3 x'4) (RpcSaslProto y'1 y'2 y'3 y'4)
   = RpcSaslProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default RpcSaslProto where
  defaultValue = RpcSaslProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire RpcSaslProto where
  wireSize ft' self'@(RpcSaslProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 13 x'1 + P'.wireSizeReq 1 14 x'2 + P'.wireSizeOpt 1 12 x'3 + P'.wireSizeRep 1 11 x'4)
  wirePut ft' self'@(RpcSaslProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 13 x'1
             P'.wirePutReq 16 14 x'2
             P'.wirePutOpt 26 12 x'3
             P'.wirePutRep 34 11 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{version = Prelude'.Just new'Field}) (P'.wireGet 13)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{state = new'Field}) (P'.wireGet 14)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{token = Prelude'.Just new'Field}) (P'.wireGet 12)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{auths = P'.append (auths old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RpcSaslProto) RpcSaslProto where
  getVal m' f' = f' m'
 
instance P'.GPB RpcSaslProto
 
instance P'.ReflectDescriptor RpcSaslProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [16]) (P'.fromDistinctAscList [8, 16, 26, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.RpcSaslProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"RpcHeaderProtos\"], baseName = MName \"RpcSaslProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"RpcHeaderProtos\",\"RpcSaslProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcSaslProto.version\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcSaslProto\"], baseName' = FName \"version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcSaslProto.state\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcSaslProto\"], baseName' = FName \"state\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.RpcSaslProto.SaslState\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"RpcHeaderProtos\",MName \"RpcSaslProto\"], baseName = MName \"SaslState\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcSaslProto.token\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcSaslProto\"], baseName' = FName \"token\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcSaslProto.auths\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcSaslProto\"], baseName' = FName \"auths\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.RpcSaslProto.SaslAuth\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"RpcHeaderProtos\",MName \"RpcSaslProto\"], baseName = MName \"SaslAuth\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RpcSaslProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RpcSaslProto where
  textPut msg
   = do
       P'.tellT "version" (version msg)
       P'.tellT "state" (state msg)
       P'.tellT "token" (token msg)
       P'.tellT "auths" (auths msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'version, parse'state, parse'token, parse'auths]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'version
         = P'.try
            (do
               v <- P'.getT "version"
               Prelude'.return (\ o -> o{version = v}))
        parse'state
         = P'.try
            (do
               v <- P'.getT "state"
               Prelude'.return (\ o -> o{state = v}))
        parse'token
         = P'.try
            (do
               v <- P'.getT "token"
               Prelude'.return (\ o -> o{token = v}))
        parse'auths
         = P'.try
            (do
               v <- P'.getT "auths"
               Prelude'.return (\ o -> o{auths = P'.append (auths o) v}))