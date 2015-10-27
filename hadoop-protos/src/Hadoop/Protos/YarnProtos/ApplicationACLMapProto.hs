{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.ApplicationACLMapProto (ApplicationACLMapProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationAccessTypeProto as YarnProtos (ApplicationAccessTypeProto)
 
data ApplicationACLMapProto = ApplicationACLMapProto{accessType :: !(P'.Maybe YarnProtos.ApplicationAccessTypeProto),
                                                     acl :: !(P'.Maybe P'.Utf8)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ApplicationACLMapProto where
  mergeAppend (ApplicationACLMapProto x'1 x'2) (ApplicationACLMapProto y'1 y'2)
   = ApplicationACLMapProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ApplicationACLMapProto where
  defaultValue = ApplicationACLMapProto P'.defaultValue (Prelude'.Just (P'.Utf8 (P'.pack " ")))
 
instance P'.Wire ApplicationACLMapProto where
  wireSize ft' self'@(ApplicationACLMapProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeOpt 1 9 x'2)
  wirePut ft' self'@(ApplicationACLMapProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 14 x'1
             P'.wirePutOpt 18 9 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{accessType = Prelude'.Just new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{acl = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ApplicationACLMapProto) ApplicationACLMapProto where
  getVal m' f' = f' m'
 
instance P'.GPB ApplicationACLMapProto
 
instance P'.ReflectDescriptor ApplicationACLMapProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationACLMapProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationACLMapProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"ApplicationACLMapProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationACLMapProto.accessType\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationACLMapProto\"], baseName' = FName \"accessType\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationAccessTypeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationAccessTypeProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationACLMapProto.acl\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationACLMapProto\"], baseName' = FName \"acl\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Just \" \", hsDefault = Just (HsDef'ByteString \" \")}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ApplicationACLMapProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ApplicationACLMapProto where
  textPut msg
   = do
       P'.tellT "accessType" (accessType msg)
       P'.tellT "acl" (acl msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'accessType, parse'acl]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'accessType
         = P'.try
            (do
               v <- P'.getT "accessType"
               Prelude'.return (\ o -> o{accessType = v}))
        parse'acl
         = P'.try
            (do
               v <- P'.getT "acl"
               Prelude'.return (\ o -> o{acl = v}))