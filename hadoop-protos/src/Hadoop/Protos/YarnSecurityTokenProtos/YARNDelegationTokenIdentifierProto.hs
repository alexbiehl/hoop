{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnSecurityTokenProtos.YARNDelegationTokenIdentifierProto (YARNDelegationTokenIdentifierProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data YARNDelegationTokenIdentifierProto = YARNDelegationTokenIdentifierProto{owner :: !(P'.Maybe P'.Utf8),
                                                                             renewer :: !(P'.Maybe P'.Utf8),
                                                                             realUser :: !(P'.Maybe P'.Utf8),
                                                                             issueDate :: !(P'.Maybe P'.Int64),
                                                                             maxDate :: !(P'.Maybe P'.Int64),
                                                                             sequenceNumber :: !(P'.Maybe P'.Int32),
                                                                             masterKeyId :: !(P'.Maybe P'.Int32)}
                                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable YARNDelegationTokenIdentifierProto where
  mergeAppend (YARNDelegationTokenIdentifierProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   (YARNDelegationTokenIdentifierProto y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = YARNDelegationTokenIdentifierProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
 
instance P'.Default YARNDelegationTokenIdentifierProto where
  defaultValue
   = YARNDelegationTokenIdentifierProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire YARNDelegationTokenIdentifierProto where
  wireSize ft' self'@(YARNDelegationTokenIdentifierProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 3 x'4 +
             P'.wireSizeOpt 1 3 x'5
             + P'.wireSizeOpt 1 5 x'6
             + P'.wireSizeOpt 1 5 x'7)
  wirePut ft' self'@(YARNDelegationTokenIdentifierProto x'1 x'2 x'3 x'4 x'5 x'6 x'7)
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
             P'.wirePutOpt 26 9 x'3
             P'.wirePutOpt 32 3 x'4
             P'.wirePutOpt 40 3 x'5
             P'.wirePutOpt 48 5 x'6
             P'.wirePutOpt 56 5 x'7
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{owner = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{renewer = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{realUser = Prelude'.Just new'Field}) (P'.wireGet 9)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{issueDate = Prelude'.Just new'Field}) (P'.wireGet 3)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{maxDate = Prelude'.Just new'Field}) (P'.wireGet 3)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{sequenceNumber = Prelude'.Just new'Field}) (P'.wireGet 5)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{masterKeyId = Prelude'.Just new'Field}) (P'.wireGet 5)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> YARNDelegationTokenIdentifierProto) YARNDelegationTokenIdentifierProto where
  getVal m' f' = f' m'
 
instance P'.GPB YARNDelegationTokenIdentifierProto
 
instance P'.ReflectDescriptor YARNDelegationTokenIdentifierProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 32, 40, 48, 56])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.YARNDelegationTokenIdentifierProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnSecurityTokenProtos\"], baseName = MName \"YARNDelegationTokenIdentifierProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnSecurityTokenProtos\",\"YARNDelegationTokenIdentifierProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.YARNDelegationTokenIdentifierProto.owner\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"YARNDelegationTokenIdentifierProto\"], baseName' = FName \"owner\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.YARNDelegationTokenIdentifierProto.renewer\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"YARNDelegationTokenIdentifierProto\"], baseName' = FName \"renewer\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.YARNDelegationTokenIdentifierProto.realUser\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"YARNDelegationTokenIdentifierProto\"], baseName' = FName \"realUser\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.YARNDelegationTokenIdentifierProto.issueDate\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"YARNDelegationTokenIdentifierProto\"], baseName' = FName \"issueDate\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.YARNDelegationTokenIdentifierProto.maxDate\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"YARNDelegationTokenIdentifierProto\"], baseName' = FName \"maxDate\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.YARNDelegationTokenIdentifierProto.sequenceNumber\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"YARNDelegationTokenIdentifierProto\"], baseName' = FName \"sequenceNumber\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.YARNDelegationTokenIdentifierProto.masterKeyId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"YARNDelegationTokenIdentifierProto\"], baseName' = FName \"masterKeyId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType YARNDelegationTokenIdentifierProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg YARNDelegationTokenIdentifierProto where
  textPut msg
   = do
       P'.tellT "owner" (owner msg)
       P'.tellT "renewer" (renewer msg)
       P'.tellT "realUser" (realUser msg)
       P'.tellT "issueDate" (issueDate msg)
       P'.tellT "maxDate" (maxDate msg)
       P'.tellT "sequenceNumber" (sequenceNumber msg)
       P'.tellT "masterKeyId" (masterKeyId msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'owner, parse'renewer, parse'realUser, parse'issueDate, parse'maxDate, parse'sequenceNumber,
                   parse'masterKeyId])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'owner
         = P'.try
            (do
               v <- P'.getT "owner"
               Prelude'.return (\ o -> o{owner = v}))
        parse'renewer
         = P'.try
            (do
               v <- P'.getT "renewer"
               Prelude'.return (\ o -> o{renewer = v}))
        parse'realUser
         = P'.try
            (do
               v <- P'.getT "realUser"
               Prelude'.return (\ o -> o{realUser = v}))
        parse'issueDate
         = P'.try
            (do
               v <- P'.getT "issueDate"
               Prelude'.return (\ o -> o{issueDate = v}))
        parse'maxDate
         = P'.try
            (do
               v <- P'.getT "maxDate"
               Prelude'.return (\ o -> o{maxDate = v}))
        parse'sequenceNumber
         = P'.try
            (do
               v <- P'.getT "sequenceNumber"
               Prelude'.return (\ o -> o{sequenceNumber = v}))
        parse'masterKeyId
         = P'.try
            (do
               v <- P'.getT "masterKeyId"
               Prelude'.return (\ o -> o{masterKeyId = v}))