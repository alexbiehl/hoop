{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.ContainerResourceIncreaseProto (ContainerResourceIncreaseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.SecurityProtos.TokenProto as SecurityProtos (TokenProto)
import qualified Hadoop.Protos.YarnProtos.ContainerIdProto as YarnProtos (ContainerIdProto)
import qualified Hadoop.Protos.YarnProtos.ResourceProto as YarnProtos (ResourceProto)
 
data ContainerResourceIncreaseProto = ContainerResourceIncreaseProto{container_id :: !(P'.Maybe YarnProtos.ContainerIdProto),
                                                                     capability :: !(P'.Maybe YarnProtos.ResourceProto),
                                                                     container_token :: !(P'.Maybe SecurityProtos.TokenProto)}
                                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ContainerResourceIncreaseProto where
  mergeAppend (ContainerResourceIncreaseProto x'1 x'2 x'3) (ContainerResourceIncreaseProto y'1 y'2 y'3)
   = ContainerResourceIncreaseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default ContainerResourceIncreaseProto where
  defaultValue = ContainerResourceIncreaseProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire ContainerResourceIncreaseProto where
  wireSize ft' self'@(ContainerResourceIncreaseProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 11 x'3)
  wirePut ft' self'@(ContainerResourceIncreaseProto x'1 x'2 x'3)
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
             P'.wirePutOpt 26 11 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{container_id = P'.mergeAppend (container_id old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{capability = P'.mergeAppend (capability old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{container_token = P'.mergeAppend (container_token old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ContainerResourceIncreaseProto) ContainerResourceIncreaseProto where
  getVal m' f' = f' m'
 
instance P'.GPB ContainerResourceIncreaseProto
 
instance P'.ReflectDescriptor ContainerResourceIncreaseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ContainerResourceIncreaseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerResourceIncreaseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"ContainerResourceIncreaseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerResourceIncreaseProto.container_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ContainerResourceIncreaseProto\"], baseName' = FName \"container_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerResourceIncreaseProto.capability\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ContainerResourceIncreaseProto\"], baseName' = FName \"capability\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerResourceIncreaseProto.container_token\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ContainerResourceIncreaseProto\"], baseName' = FName \"container_token\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.TokenProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"SecurityProtos\"], baseName = MName \"TokenProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ContainerResourceIncreaseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ContainerResourceIncreaseProto where
  textPut msg
   = do
       P'.tellT "container_id" (container_id msg)
       P'.tellT "capability" (capability msg)
       P'.tellT "container_token" (container_token msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'container_id, parse'capability, parse'container_token]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'container_id
         = P'.try
            (do
               v <- P'.getT "container_id"
               Prelude'.return (\ o -> o{container_id = v}))
        parse'capability
         = P'.try
            (do
               v <- P'.getT "capability"
               Prelude'.return (\ o -> o{capability = v}))
        parse'container_token
         = P'.try
            (do
               v <- P'.getT "container_token"
               Prelude'.return (\ o -> o{container_token = v}))