{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerNodemanagerRecoveryProtos.LogDeleterProto (LogDeleterProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data LogDeleterProto = LogDeleterProto{user :: !(P'.Maybe P'.Utf8), deletionTime :: !(P'.Maybe P'.Int64)}
                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable LogDeleterProto where
  mergeAppend (LogDeleterProto x'1 x'2) (LogDeleterProto y'1 y'2)
   = LogDeleterProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default LogDeleterProto where
  defaultValue = LogDeleterProto P'.defaultValue P'.defaultValue
 
instance P'.Wire LogDeleterProto where
  wireSize ft' self'@(LogDeleterProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 3 x'2)
  wirePut ft' self'@(LogDeleterProto x'1 x'2)
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
             P'.wirePutOpt 16 3 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{user = Prelude'.Just new'Field}) (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{deletionTime = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> LogDeleterProto) LogDeleterProto where
  getVal m' f' = f' m'
 
instance P'.GPB LogDeleterProto
 
instance P'.ReflectDescriptor LogDeleterProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.LogDeleterProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerNodemanagerRecoveryProtos\"], baseName = MName \"LogDeleterProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerNodemanagerRecoveryProtos\",\"LogDeleterProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LogDeleterProto.user\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"LogDeleterProto\"], baseName' = FName \"user\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LogDeleterProto.deletionTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"LogDeleterProto\"], baseName' = FName \"deletionTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType LogDeleterProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg LogDeleterProto where
  textPut msg
   = do
       P'.tellT "user" (user msg)
       P'.tellT "deletionTime" (deletionTime msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'user, parse'deletionTime]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'user
         = P'.try
            (do
               v <- P'.getT "user"
               Prelude'.return (\ o -> o{user = v}))
        parse'deletionTime
         = P'.try
            (do
               v <- P'.getT "deletionTime"
               Prelude'.return (\ o -> o{deletionTime = v}))