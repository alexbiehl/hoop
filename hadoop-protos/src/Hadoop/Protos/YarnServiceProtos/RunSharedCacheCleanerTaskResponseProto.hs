{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.RunSharedCacheCleanerTaskResponseProto (RunSharedCacheCleanerTaskResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RunSharedCacheCleanerTaskResponseProto = RunSharedCacheCleanerTaskResponseProto{accepted :: !(P'.Maybe P'.Bool)}
                                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RunSharedCacheCleanerTaskResponseProto where
  mergeAppend (RunSharedCacheCleanerTaskResponseProto x'1) (RunSharedCacheCleanerTaskResponseProto y'1)
   = RunSharedCacheCleanerTaskResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default RunSharedCacheCleanerTaskResponseProto where
  defaultValue = RunSharedCacheCleanerTaskResponseProto P'.defaultValue
 
instance P'.Wire RunSharedCacheCleanerTaskResponseProto where
  wireSize ft' self'@(RunSharedCacheCleanerTaskResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 8 x'1)
  wirePut ft' self'@(RunSharedCacheCleanerTaskResponseProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 8 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{accepted = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RunSharedCacheCleanerTaskResponseProto) RunSharedCacheCleanerTaskResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB RunSharedCacheCleanerTaskResponseProto
 
instance P'.ReflectDescriptor RunSharedCacheCleanerTaskResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.RunSharedCacheCleanerTaskResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"RunSharedCacheCleanerTaskResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"RunSharedCacheCleanerTaskResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RunSharedCacheCleanerTaskResponseProto.accepted\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"RunSharedCacheCleanerTaskResponseProto\"], baseName' = FName \"accepted\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RunSharedCacheCleanerTaskResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RunSharedCacheCleanerTaskResponseProto where
  textPut msg
   = do
       P'.tellT "accepted" (accepted msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'accepted]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'accepted
         = P'.try
            (do
               v <- P'.getT "accepted"
               Prelude'.return (\ o -> o{accepted = v}))