{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.IpcConnectionContextProtos.UserInformationProto (UserInformationProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data UserInformationProto = UserInformationProto{effectiveUser :: !(P'.Maybe P'.Utf8), realUser :: !(P'.Maybe P'.Utf8)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable UserInformationProto where
  mergeAppend (UserInformationProto x'1 x'2) (UserInformationProto y'1 y'2)
   = UserInformationProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default UserInformationProto where
  defaultValue = UserInformationProto P'.defaultValue P'.defaultValue
 
instance P'.Wire UserInformationProto where
  wireSize ft' self'@(UserInformationProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2)
  wirePut ft' self'@(UserInformationProto x'1 x'2)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{effectiveUser = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{realUser = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> UserInformationProto) UserInformationProto where
  getVal m' f' = f' m'
 
instance P'.GPB UserInformationProto
 
instance P'.ReflectDescriptor UserInformationProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.UserInformationProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"IpcConnectionContextProtos\"], baseName = MName \"UserInformationProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"IpcConnectionContextProtos\",\"UserInformationProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.UserInformationProto.effectiveUser\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"IpcConnectionContextProtos\",MName \"UserInformationProto\"], baseName' = FName \"effectiveUser\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.UserInformationProto.realUser\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"IpcConnectionContextProtos\",MName \"UserInformationProto\"], baseName' = FName \"realUser\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType UserInformationProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg UserInformationProto where
  textPut msg
   = do
       P'.tellT "effectiveUser" (effectiveUser msg)
       P'.tellT "realUser" (realUser msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'effectiveUser, parse'realUser]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'effectiveUser
         = P'.try
            (do
               v <- P'.getT "effectiveUser"
               Prelude'.return (\ o -> o{effectiveUser = v}))
        parse'realUser
         = P'.try
            (do
               v <- P'.getT "realUser"
               Prelude'.return (\ o -> o{realUser = v}))