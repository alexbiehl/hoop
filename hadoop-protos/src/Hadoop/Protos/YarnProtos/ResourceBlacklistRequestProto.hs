{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.ResourceBlacklistRequestProto (ResourceBlacklistRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ResourceBlacklistRequestProto = ResourceBlacklistRequestProto{blacklist_additions :: !(P'.Seq P'.Utf8),
                                                                   blacklist_removals :: !(P'.Seq P'.Utf8)}
                                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ResourceBlacklistRequestProto where
  mergeAppend (ResourceBlacklistRequestProto x'1 x'2) (ResourceBlacklistRequestProto y'1 y'2)
   = ResourceBlacklistRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ResourceBlacklistRequestProto where
  defaultValue = ResourceBlacklistRequestProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ResourceBlacklistRequestProto where
  wireSize ft' self'@(ResourceBlacklistRequestProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 9 x'1 + P'.wireSizeRep 1 9 x'2)
  wirePut ft' self'@(ResourceBlacklistRequestProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 9 x'1
             P'.wirePutRep 18 9 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{blacklist_additions = P'.append (blacklist_additions old'Self) new'Field})
                    (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{blacklist_removals = P'.append (blacklist_removals old'Self) new'Field})
                    (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ResourceBlacklistRequestProto) ResourceBlacklistRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB ResourceBlacklistRequestProto
 
instance P'.ReflectDescriptor ResourceBlacklistRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ResourceBlacklistRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceBlacklistRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"ResourceBlacklistRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ResourceBlacklistRequestProto.blacklist_additions\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ResourceBlacklistRequestProto\"], baseName' = FName \"blacklist_additions\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ResourceBlacklistRequestProto.blacklist_removals\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ResourceBlacklistRequestProto\"], baseName' = FName \"blacklist_removals\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ResourceBlacklistRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ResourceBlacklistRequestProto where
  textPut msg
   = do
       P'.tellT "blacklist_additions" (blacklist_additions msg)
       P'.tellT "blacklist_removals" (blacklist_removals msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'blacklist_additions, parse'blacklist_removals]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'blacklist_additions
         = P'.try
            (do
               v <- P'.getT "blacklist_additions"
               Prelude'.return (\ o -> o{blacklist_additions = P'.append (blacklist_additions o) v}))
        parse'blacklist_removals
         = P'.try
            (do
               v <- P'.getT "blacklist_removals"
               Prelude'.return (\ o -> o{blacklist_removals = P'.append (blacklist_removals o) v}))