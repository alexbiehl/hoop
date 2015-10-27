{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.SecurityProtos.TokenProto (TokenProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data TokenProto = TokenProto{identifier :: !(P'.ByteString), password :: !(P'.ByteString), kind :: !(P'.Utf8),
                             service :: !(P'.Utf8)}
                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable TokenProto where
  mergeAppend (TokenProto x'1 x'2 x'3 x'4) (TokenProto y'1 y'2 y'3 y'4)
   = TokenProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default TokenProto where
  defaultValue = TokenProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire TokenProto where
  wireSize ft' self'@(TokenProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 12 x'1 + P'.wireSizeReq 1 12 x'2 + P'.wireSizeReq 1 9 x'3 + P'.wireSizeReq 1 9 x'4)
  wirePut ft' self'@(TokenProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 12 x'1
             P'.wirePutReq 18 12 x'2
             P'.wirePutReq 26 9 x'3
             P'.wirePutReq 34 9 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{identifier = new'Field}) (P'.wireGet 12)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{password = new'Field}) (P'.wireGet 12)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{kind = new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{service = new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> TokenProto) TokenProto where
  getVal m' f' = f' m'
 
instance P'.GPB TokenProto
 
instance P'.ReflectDescriptor TokenProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18, 26, 34]) (P'.fromDistinctAscList [10, 18, 26, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.TokenProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"SecurityProtos\"], baseName = MName \"TokenProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"SecurityProtos\",\"TokenProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.TokenProto.identifier\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"SecurityProtos\",MName \"TokenProto\"], baseName' = FName \"identifier\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.TokenProto.password\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"SecurityProtos\",MName \"TokenProto\"], baseName' = FName \"password\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.TokenProto.kind\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"SecurityProtos\",MName \"TokenProto\"], baseName' = FName \"kind\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.TokenProto.service\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"SecurityProtos\",MName \"TokenProto\"], baseName' = FName \"service\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType TokenProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg TokenProto where
  textPut msg
   = do
       P'.tellT "identifier" (identifier msg)
       P'.tellT "password" (password msg)
       P'.tellT "kind" (kind msg)
       P'.tellT "service" (service msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'identifier, parse'password, parse'kind, parse'service]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'identifier
         = P'.try
            (do
               v <- P'.getT "identifier"
               Prelude'.return (\ o -> o{identifier = v}))
        parse'password
         = P'.try
            (do
               v <- P'.getT "password"
               Prelude'.return (\ o -> o{password = v}))
        parse'kind
         = P'.try
            (do
               v <- P'.getT "kind"
               Prelude'.return (\ o -> o{kind = v}))
        parse'service
         = P'.try
            (do
               v <- P'.getT "service"
               Prelude'.return (\ o -> o{service = v}))