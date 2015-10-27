{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.FsImageProto.SecretManagerSection.PersistToken (PersistToken(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data PersistToken = PersistToken{version :: !(P'.Maybe P'.Word32), owner :: !(P'.Maybe P'.Utf8), renewer :: !(P'.Maybe P'.Utf8),
                                 realUser :: !(P'.Maybe P'.Utf8), issueDate :: !(P'.Maybe P'.Word64),
                                 maxDate :: !(P'.Maybe P'.Word64), sequenceNumber :: !(P'.Maybe P'.Word32),
                                 masterKeyId :: !(P'.Maybe P'.Word32), expiryDate :: !(P'.Maybe P'.Word64)}
                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable PersistToken where
  mergeAppend (PersistToken x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9) (PersistToken y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9)
   = PersistToken (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
 
instance P'.Default PersistToken where
  defaultValue
   = PersistToken P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire PersistToken where
  wireSize ft' self'@(PersistToken x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 13 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeOpt 1 4 x'5
             + P'.wireSizeOpt 1 4 x'6
             + P'.wireSizeOpt 1 13 x'7
             + P'.wireSizeOpt 1 13 x'8
             + P'.wireSizeOpt 1 4 x'9)
  wirePut ft' self'@(PersistToken x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 13 x'1
             P'.wirePutOpt 18 9 x'2
             P'.wirePutOpt 26 9 x'3
             P'.wirePutOpt 34 9 x'4
             P'.wirePutOpt 40 4 x'5
             P'.wirePutOpt 48 4 x'6
             P'.wirePutOpt 56 13 x'7
             P'.wirePutOpt 64 13 x'8
             P'.wirePutOpt 72 4 x'9
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{version = Prelude'.Just new'Field}) (P'.wireGet 13)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{owner = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{renewer = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{realUser = Prelude'.Just new'Field}) (P'.wireGet 9)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{issueDate = Prelude'.Just new'Field}) (P'.wireGet 4)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{maxDate = Prelude'.Just new'Field}) (P'.wireGet 4)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{sequenceNumber = Prelude'.Just new'Field}) (P'.wireGet 13)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{masterKeyId = Prelude'.Just new'Field}) (P'.wireGet 13)
             72 -> Prelude'.fmap (\ !new'Field -> old'Self{expiryDate = Prelude'.Just new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> PersistToken) PersistToken where
  getVal m' f' = f' m'
 
instance P'.GPB PersistToken
 
instance P'.ReflectDescriptor PersistToken where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18, 26, 34, 40, 48, 56, 64, 72])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.SecretManagerSection.PersistToken\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"SecretManagerSection\"], baseName = MName \"PersistToken\"}, descFilePath = [\"Hadoop\",\"Protos\",\"FsImageProto\",\"SecretManagerSection\",\"PersistToken.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SecretManagerSection.PersistToken.version\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SecretManagerSection\",MName \"PersistToken\"], baseName' = FName \"version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SecretManagerSection.PersistToken.owner\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SecretManagerSection\",MName \"PersistToken\"], baseName' = FName \"owner\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SecretManagerSection.PersistToken.renewer\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SecretManagerSection\",MName \"PersistToken\"], baseName' = FName \"renewer\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SecretManagerSection.PersistToken.realUser\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SecretManagerSection\",MName \"PersistToken\"], baseName' = FName \"realUser\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SecretManagerSection.PersistToken.issueDate\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SecretManagerSection\",MName \"PersistToken\"], baseName' = FName \"issueDate\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SecretManagerSection.PersistToken.maxDate\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SecretManagerSection\",MName \"PersistToken\"], baseName' = FName \"maxDate\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SecretManagerSection.PersistToken.sequenceNumber\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SecretManagerSection\",MName \"PersistToken\"], baseName' = FName \"sequenceNumber\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SecretManagerSection.PersistToken.masterKeyId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SecretManagerSection\",MName \"PersistToken\"], baseName' = FName \"masterKeyId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.SecretManagerSection.PersistToken.expiryDate\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"SecretManagerSection\",MName \"PersistToken\"], baseName' = FName \"expiryDate\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 72}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType PersistToken where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg PersistToken where
  textPut msg
   = do
       P'.tellT "version" (version msg)
       P'.tellT "owner" (owner msg)
       P'.tellT "renewer" (renewer msg)
       P'.tellT "realUser" (realUser msg)
       P'.tellT "issueDate" (issueDate msg)
       P'.tellT "maxDate" (maxDate msg)
       P'.tellT "sequenceNumber" (sequenceNumber msg)
       P'.tellT "masterKeyId" (masterKeyId msg)
       P'.tellT "expiryDate" (expiryDate msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'version, parse'owner, parse'renewer, parse'realUser, parse'issueDate, parse'maxDate, parse'sequenceNumber,
                   parse'masterKeyId, parse'expiryDate])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'version
         = P'.try
            (do
               v <- P'.getT "version"
               Prelude'.return (\ o -> o{version = v}))
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
        parse'expiryDate
         = P'.try
            (do
               v <- P'.getT "expiryDate"
               Prelude'.return (\ o -> o{expiryDate = v}))