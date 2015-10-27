{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerCommonServiceProtos.SCMUploaderCanUploadRequestProto (SCMUploaderCanUploadRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data SCMUploaderCanUploadRequestProto = SCMUploaderCanUploadRequestProto{resource_key :: !(P'.Maybe P'.Utf8)}
                                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SCMUploaderCanUploadRequestProto where
  mergeAppend (SCMUploaderCanUploadRequestProto x'1) (SCMUploaderCanUploadRequestProto y'1)
   = SCMUploaderCanUploadRequestProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default SCMUploaderCanUploadRequestProto where
  defaultValue = SCMUploaderCanUploadRequestProto P'.defaultValue
 
instance P'.Wire SCMUploaderCanUploadRequestProto where
  wireSize ft' self'@(SCMUploaderCanUploadRequestProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1)
  wirePut ft' self'@(SCMUploaderCanUploadRequestProto x'1)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{resource_key = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> SCMUploaderCanUploadRequestProto) SCMUploaderCanUploadRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB SCMUploaderCanUploadRequestProto
 
instance P'.ReflectDescriptor SCMUploaderCanUploadRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.SCMUploaderCanUploadRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonServiceProtos\"], baseName = MName \"SCMUploaderCanUploadRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerCommonServiceProtos\",\"SCMUploaderCanUploadRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.SCMUploaderCanUploadRequestProto.resource_key\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"SCMUploaderCanUploadRequestProto\"], baseName' = FName \"resource_key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType SCMUploaderCanUploadRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg SCMUploaderCanUploadRequestProto where
  textPut msg
   = do
       P'.tellT "resource_key" (resource_key msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'resource_key]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'resource_key
         = P'.try
            (do
               v <- P'.getT "resource_key"
               Prelude'.return (\ o -> o{resource_key = v}))