{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerNodemanagerServiceProtos.LocalizerHeartbeatResponseProto (LocalizerHeartbeatResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnServerNodemanagerServiceProtos.LocalizerActionProto as YarnServerNodemanagerServiceProtos
       (LocalizerActionProto)
import qualified Hadoop.Protos.YarnServerNodemanagerServiceProtos.ResourceLocalizationSpecProto
       as YarnServerNodemanagerServiceProtos (ResourceLocalizationSpecProto)
 
data LocalizerHeartbeatResponseProto = LocalizerHeartbeatResponseProto{action ::
                                                                       !(P'.Maybe
                                                                          YarnServerNodemanagerServiceProtos.LocalizerActionProto),
                                                                       resources ::
                                                                       !(P'.Seq
                                                                          YarnServerNodemanagerServiceProtos.ResourceLocalizationSpecProto)}
                                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable LocalizerHeartbeatResponseProto where
  mergeAppend (LocalizerHeartbeatResponseProto x'1 x'2) (LocalizerHeartbeatResponseProto y'1 y'2)
   = LocalizerHeartbeatResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default LocalizerHeartbeatResponseProto where
  defaultValue = LocalizerHeartbeatResponseProto P'.defaultValue P'.defaultValue
 
instance P'.Wire LocalizerHeartbeatResponseProto where
  wireSize ft' self'@(LocalizerHeartbeatResponseProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePut ft' self'@(LocalizerHeartbeatResponseProto x'1 x'2)
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
             P'.wirePutRep 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{action = Prelude'.Just new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{resources = P'.append (resources old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> LocalizerHeartbeatResponseProto) LocalizerHeartbeatResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB LocalizerHeartbeatResponseProto
 
instance P'.ReflectDescriptor LocalizerHeartbeatResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.LocalizerHeartbeatResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerNodemanagerServiceProtos\"], baseName = MName \"LocalizerHeartbeatResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerNodemanagerServiceProtos\",\"LocalizerHeartbeatResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LocalizerHeartbeatResponseProto.action\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerServiceProtos\",MName \"LocalizerHeartbeatResponseProto\"], baseName' = FName \"action\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.LocalizerActionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerNodemanagerServiceProtos\"], baseName = MName \"LocalizerActionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LocalizerHeartbeatResponseProto.resources\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerServiceProtos\",MName \"LocalizerHeartbeatResponseProto\"], baseName' = FName \"resources\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceLocalizationSpecProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerNodemanagerServiceProtos\"], baseName = MName \"ResourceLocalizationSpecProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType LocalizerHeartbeatResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg LocalizerHeartbeatResponseProto where
  textPut msg
   = do
       P'.tellT "action" (action msg)
       P'.tellT "resources" (resources msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'action, parse'resources]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'action
         = P'.try
            (do
               v <- P'.getT "action"
               Prelude'.return (\ o -> o{action = v}))
        parse'resources
         = P'.try
            (do
               v <- P'.getT "resources"
               Prelude'.return (\ o -> o{resources = P'.append (resources o) v}))