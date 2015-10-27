{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.GenericRefreshProtocolProtos.GenericRefreshResponseProto (GenericRefreshResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data GenericRefreshResponseProto = GenericRefreshResponseProto{exitStatus :: !(P'.Maybe P'.Int32),
                                                               userMessage :: !(P'.Maybe P'.Utf8),
                                                               senderName :: !(P'.Maybe P'.Utf8)}
                                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GenericRefreshResponseProto where
  mergeAppend (GenericRefreshResponseProto x'1 x'2 x'3) (GenericRefreshResponseProto y'1 y'2 y'3)
   = GenericRefreshResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default GenericRefreshResponseProto where
  defaultValue = GenericRefreshResponseProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire GenericRefreshResponseProto where
  wireSize ft' self'@(GenericRefreshResponseProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 5 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3)
  wirePut ft' self'@(GenericRefreshResponseProto x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 5 x'1
             P'.wirePutOpt 18 9 x'2
             P'.wirePutOpt 26 9 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{exitStatus = Prelude'.Just new'Field}) (P'.wireGet 5)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{userMessage = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{senderName = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GenericRefreshResponseProto) GenericRefreshResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GenericRefreshResponseProto
 
instance P'.ReflectDescriptor GenericRefreshResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.GenericRefreshResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"GenericRefreshProtocolProtos\"], baseName = MName \"GenericRefreshResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"GenericRefreshProtocolProtos\",\"GenericRefreshResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.GenericRefreshResponseProto.exitStatus\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"GenericRefreshProtocolProtos\",MName \"GenericRefreshResponseProto\"], baseName' = FName \"exitStatus\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.GenericRefreshResponseProto.userMessage\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"GenericRefreshProtocolProtos\",MName \"GenericRefreshResponseProto\"], baseName' = FName \"userMessage\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.GenericRefreshResponseProto.senderName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"GenericRefreshProtocolProtos\",MName \"GenericRefreshResponseProto\"], baseName' = FName \"senderName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GenericRefreshResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GenericRefreshResponseProto where
  textPut msg
   = do
       P'.tellT "exitStatus" (exitStatus msg)
       P'.tellT "userMessage" (userMessage msg)
       P'.tellT "senderName" (senderName msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'exitStatus, parse'userMessage, parse'senderName]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'exitStatus
         = P'.try
            (do
               v <- P'.getT "exitStatus"
               Prelude'.return (\ o -> o{exitStatus = v}))
        parse'userMessage
         = P'.try
            (do
               v <- P'.getT "userMessage"
               Prelude'.return (\ o -> o{userMessage = v}))
        parse'senderName
         = P'.try
            (do
               v <- P'.getT "senderName"
               Prelude'.return (\ o -> o{senderName = v}))