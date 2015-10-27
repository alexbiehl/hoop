{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerNodemanagerServiceProtos.ResourceLocalizationSpecProto (ResourceLocalizationSpecProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.LocalResourceProto as YarnProtos (LocalResourceProto)
import qualified Hadoop.Protos.YarnProtos.URLProto as YarnProtos (URLProto)
 
data ResourceLocalizationSpecProto = ResourceLocalizationSpecProto{resource :: !(P'.Maybe YarnProtos.LocalResourceProto),
                                                                   destination_directory :: !(P'.Maybe YarnProtos.URLProto)}
                                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ResourceLocalizationSpecProto where
  mergeAppend (ResourceLocalizationSpecProto x'1 x'2) (ResourceLocalizationSpecProto y'1 y'2)
   = ResourceLocalizationSpecProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ResourceLocalizationSpecProto where
  defaultValue = ResourceLocalizationSpecProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ResourceLocalizationSpecProto where
  wireSize ft' self'@(ResourceLocalizationSpecProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePut ft' self'@(ResourceLocalizationSpecProto x'1 x'2)
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
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{destination_directory = P'.mergeAppend (destination_directory old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ResourceLocalizationSpecProto) ResourceLocalizationSpecProto where
  getVal m' f' = f' m'
 
instance P'.GPB ResourceLocalizationSpecProto
 
instance P'.ReflectDescriptor ResourceLocalizationSpecProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ResourceLocalizationSpecProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerNodemanagerServiceProtos\"], baseName = MName \"ResourceLocalizationSpecProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerNodemanagerServiceProtos\",\"ResourceLocalizationSpecProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ResourceLocalizationSpecProto.resource\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerServiceProtos\",MName \"ResourceLocalizationSpecProto\"], baseName' = FName \"resource\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.LocalResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"LocalResourceProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ResourceLocalizationSpecProto.destination_directory\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerServiceProtos\",MName \"ResourceLocalizationSpecProto\"], baseName' = FName \"destination_directory\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.URLProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"URLProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ResourceLocalizationSpecProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ResourceLocalizationSpecProto where
  textPut msg
   = do
       P'.tellT "resource" (resource msg)
       P'.tellT "destination_directory" (destination_directory msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'resource, parse'destination_directory]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'resource
         = P'.try
            (do
               v <- P'.getT "resource"
               Prelude'.return (\ o -> o{resource = v}))
        parse'destination_directory
         = P'.try
            (do
               v <- P'.getT "destination_directory"
               Prelude'.return (\ o -> o{destination_directory = v}))