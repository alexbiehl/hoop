{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.SetStoragePolicyRequestProto (SetStoragePolicyRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data SetStoragePolicyRequestProto = SetStoragePolicyRequestProto{src :: !(P'.Utf8), policyName :: !(P'.Utf8)}
                                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SetStoragePolicyRequestProto where
  mergeAppend (SetStoragePolicyRequestProto x'1 x'2) (SetStoragePolicyRequestProto y'1 y'2)
   = SetStoragePolicyRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default SetStoragePolicyRequestProto where
  defaultValue = SetStoragePolicyRequestProto P'.defaultValue P'.defaultValue
 
instance P'.Wire SetStoragePolicyRequestProto where
  wireSize ft' self'@(SetStoragePolicyRequestProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 9 x'2)
  wirePut ft' self'@(SetStoragePolicyRequestProto x'1 x'2)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{src = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{policyName = new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> SetStoragePolicyRequestProto) SetStoragePolicyRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB SetStoragePolicyRequestProto
 
instance P'.ReflectDescriptor SetStoragePolicyRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18]) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.SetStoragePolicyRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"SetStoragePolicyRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"SetStoragePolicyRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SetStoragePolicyRequestProto.src\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"SetStoragePolicyRequestProto\"], baseName' = FName \"src\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SetStoragePolicyRequestProto.policyName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"SetStoragePolicyRequestProto\"], baseName' = FName \"policyName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType SetStoragePolicyRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg SetStoragePolicyRequestProto where
  textPut msg
   = do
       P'.tellT "src" (src msg)
       P'.tellT "policyName" (policyName msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'src, parse'policyName]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'src
         = P'.try
            (do
               v <- P'.getT "src"
               Prelude'.return (\ o -> o{src = v}))
        parse'policyName
         = P'.try
            (do
               v <- P'.getT "policyName"
               Prelude'.return (\ o -> o{policyName = v}))