{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerResourceManagerServiceProtos.ActiveRMInfoProto (ActiveRMInfoProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ActiveRMInfoProto = ActiveRMInfoProto{clusterId :: !(P'.Maybe P'.Utf8), rmId :: !(P'.Maybe P'.Utf8)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ActiveRMInfoProto where
  mergeAppend (ActiveRMInfoProto x'1 x'2) (ActiveRMInfoProto y'1 y'2)
   = ActiveRMInfoProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ActiveRMInfoProto where
  defaultValue = ActiveRMInfoProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ActiveRMInfoProto where
  wireSize ft' self'@(ActiveRMInfoProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2)
  wirePut ft' self'@(ActiveRMInfoProto x'1 x'2)
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
             P'.wirePutOpt 18 9 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{clusterId = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{rmId = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ActiveRMInfoProto) ActiveRMInfoProto where
  getVal m' f' = f' m'
 
instance P'.GPB ActiveRMInfoProto
 
instance P'.ReflectDescriptor ActiveRMInfoProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ActiveRMInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerResourceManagerServiceProtos\"], baseName = MName \"ActiveRMInfoProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerResourceManagerServiceProtos\",\"ActiveRMInfoProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ActiveRMInfoProto.clusterId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerServiceProtos\",MName \"ActiveRMInfoProto\"], baseName' = FName \"clusterId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ActiveRMInfoProto.rmId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerServiceProtos\",MName \"ActiveRMInfoProto\"], baseName' = FName \"rmId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ActiveRMInfoProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ActiveRMInfoProto where
  textPut msg
   = do
       P'.tellT "clusterId" (clusterId msg)
       P'.tellT "rmId" (rmId msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'clusterId, parse'rmId]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'clusterId
         = P'.try
            (do
               v <- P'.getT "clusterId"
               Prelude'.return (\ o -> o{clusterId = v}))
        parse'rmId
         = P'.try
            (do
               v <- P'.getT "rmId"
               Prelude'.return (\ o -> o{rmId = v}))