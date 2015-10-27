{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerNodemanagerServiceProtos.LocalizerStatusProto (LocalizerStatusProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnServerNodemanagerServiceProtos.LocalResourceStatusProto as YarnServerNodemanagerServiceProtos
       (LocalResourceStatusProto)
 
data LocalizerStatusProto = LocalizerStatusProto{localizer_id :: !(P'.Maybe P'.Utf8),
                                                 resources :: !(P'.Seq YarnServerNodemanagerServiceProtos.LocalResourceStatusProto)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable LocalizerStatusProto where
  mergeAppend (LocalizerStatusProto x'1 x'2) (LocalizerStatusProto y'1 y'2)
   = LocalizerStatusProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default LocalizerStatusProto where
  defaultValue = LocalizerStatusProto P'.defaultValue P'.defaultValue
 
instance P'.Wire LocalizerStatusProto where
  wireSize ft' self'@(LocalizerStatusProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePut ft' self'@(LocalizerStatusProto x'1 x'2)
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
             P'.wirePutRep 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{localizer_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{resources = P'.append (resources old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> LocalizerStatusProto) LocalizerStatusProto where
  getVal m' f' = f' m'
 
instance P'.GPB LocalizerStatusProto
 
instance P'.ReflectDescriptor LocalizerStatusProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.LocalizerStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerNodemanagerServiceProtos\"], baseName = MName \"LocalizerStatusProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerNodemanagerServiceProtos\",\"LocalizerStatusProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LocalizerStatusProto.localizer_id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerServiceProtos\",MName \"LocalizerStatusProto\"], baseName' = FName \"localizer_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LocalizerStatusProto.resources\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerServiceProtos\",MName \"LocalizerStatusProto\"], baseName' = FName \"resources\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.LocalResourceStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerNodemanagerServiceProtos\"], baseName = MName \"LocalResourceStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType LocalizerStatusProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg LocalizerStatusProto where
  textPut msg
   = do
       P'.tellT "localizer_id" (localizer_id msg)
       P'.tellT "resources" (resources msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'localizer_id, parse'resources]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'localizer_id
         = P'.try
            (do
               v <- P'.getT "localizer_id"
               Prelude'.return (\ o -> o{localizer_id = v}))
        parse'resources
         = P'.try
            (do
               v <- P'.getT "resources"
               Prelude'.return (\ o -> o{resources = P'.append (resources o) v}))