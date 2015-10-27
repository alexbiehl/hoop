{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerCommonServiceProtos.SystemCredentialsForAppsProto (SystemCredentialsForAppsProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationIdProto as YarnProtos (ApplicationIdProto)
 
data SystemCredentialsForAppsProto = SystemCredentialsForAppsProto{appId :: !(P'.Maybe YarnProtos.ApplicationIdProto),
                                                                   credentialsForApp :: !(P'.Maybe P'.ByteString)}
                                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SystemCredentialsForAppsProto where
  mergeAppend (SystemCredentialsForAppsProto x'1 x'2) (SystemCredentialsForAppsProto y'1 y'2)
   = SystemCredentialsForAppsProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default SystemCredentialsForAppsProto where
  defaultValue = SystemCredentialsForAppsProto P'.defaultValue P'.defaultValue
 
instance P'.Wire SystemCredentialsForAppsProto where
  wireSize ft' self'@(SystemCredentialsForAppsProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 12 x'2)
  wirePut ft' self'@(SystemCredentialsForAppsProto x'1 x'2)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{appId = P'.mergeAppend (appId old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{credentialsForApp = Prelude'.Just new'Field}) (P'.wireGet 12)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> SystemCredentialsForAppsProto) SystemCredentialsForAppsProto where
  getVal m' f' = f' m'
 
instance P'.GPB SystemCredentialsForAppsProto
 
instance P'.ReflectDescriptor SystemCredentialsForAppsProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.SystemCredentialsForAppsProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonServiceProtos\"], baseName = MName \"SystemCredentialsForAppsProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerCommonServiceProtos\",\"SystemCredentialsForAppsProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.SystemCredentialsForAppsProto.appId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"SystemCredentialsForAppsProto\"], baseName' = FName \"appId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.SystemCredentialsForAppsProto.credentialsForApp\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"SystemCredentialsForAppsProto\"], baseName' = FName \"credentialsForApp\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType SystemCredentialsForAppsProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg SystemCredentialsForAppsProto where
  textPut msg
   = do
       P'.tellT "appId" (appId msg)
       P'.tellT "credentialsForApp" (credentialsForApp msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'appId, parse'credentialsForApp]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'appId
         = P'.try
            (do
               v <- P'.getT "appId"
               Prelude'.return (\ o -> o{appId = v}))
        parse'credentialsForApp
         = P'.try
            (do
               v <- P'.getT "credentialsForApp"
               Prelude'.return (\ o -> o{credentialsForApp = v}))