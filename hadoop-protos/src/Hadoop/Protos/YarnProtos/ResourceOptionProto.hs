{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.ResourceOptionProto (ResourceOptionProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ResourceProto as YarnProtos (ResourceProto)
 
data ResourceOptionProto = ResourceOptionProto{resource :: !(P'.Maybe YarnProtos.ResourceProto),
                                               over_commit_timeout :: !(P'.Maybe P'.Int32)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ResourceOptionProto where
  mergeAppend (ResourceOptionProto x'1 x'2) (ResourceOptionProto y'1 y'2)
   = ResourceOptionProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ResourceOptionProto where
  defaultValue = ResourceOptionProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ResourceOptionProto where
  wireSize ft' self'@(ResourceOptionProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 5 x'2)
  wirePut ft' self'@(ResourceOptionProto x'1 x'2)
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
             P'.wirePutOpt 16 5 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{resource = P'.mergeAppend (resource old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{over_commit_timeout = Prelude'.Just new'Field}) (P'.wireGet 5)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ResourceOptionProto) ResourceOptionProto where
  getVal m' f' = f' m'
 
instance P'.GPB ResourceOptionProto
 
instance P'.ReflectDescriptor ResourceOptionProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ResourceOptionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceOptionProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"ResourceOptionProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ResourceOptionProto.resource\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ResourceOptionProto\"], baseName' = FName \"resource\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ResourceOptionProto.over_commit_timeout\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ResourceOptionProto\"], baseName' = FName \"over_commit_timeout\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ResourceOptionProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ResourceOptionProto where
  textPut msg
   = do
       P'.tellT "resource" (resource msg)
       P'.tellT "over_commit_timeout" (over_commit_timeout msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'resource, parse'over_commit_timeout]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'resource
         = P'.try
            (do
               v <- P'.getT "resource"
               Prelude'.return (\ o -> o{resource = v}))
        parse'over_commit_timeout
         = P'.try
            (do
               v <- P'.getT "over_commit_timeout"
               Prelude'.return (\ o -> o{over_commit_timeout = v}))