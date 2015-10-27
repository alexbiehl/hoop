{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.InotifyProtos.RenameEventProto (RenameEventProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RenameEventProto = RenameEventProto{srcPath :: !(P'.Utf8), destPath :: !(P'.Utf8), timestamp :: !(P'.Int64)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RenameEventProto where
  mergeAppend (RenameEventProto x'1 x'2 x'3) (RenameEventProto y'1 y'2 y'3)
   = RenameEventProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default RenameEventProto where
  defaultValue = RenameEventProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire RenameEventProto where
  wireSize ft' self'@(RenameEventProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeReq 1 3 x'3)
  wirePut ft' self'@(RenameEventProto x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 9 x'1
             P'.wirePutReq 18 9 x'2
             P'.wirePutReq 24 3 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{srcPath = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{destPath = new'Field}) (P'.wireGet 9)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{timestamp = new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RenameEventProto) RenameEventProto where
  getVal m' f' = f' m'
 
instance P'.GPB RenameEventProto
 
instance P'.ReflectDescriptor RenameEventProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18, 24]) (P'.fromDistinctAscList [10, 18, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.RenameEventProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InotifyProtos\"], baseName = MName \"RenameEventProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"InotifyProtos\",\"RenameEventProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.RenameEventProto.srcPath\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"RenameEventProto\"], baseName' = FName \"srcPath\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.RenameEventProto.destPath\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"RenameEventProto\"], baseName' = FName \"destPath\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.RenameEventProto.timestamp\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"RenameEventProto\"], baseName' = FName \"timestamp\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RenameEventProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RenameEventProto where
  textPut msg
   = do
       P'.tellT "srcPath" (srcPath msg)
       P'.tellT "destPath" (destPath msg)
       P'.tellT "timestamp" (timestamp msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'srcPath, parse'destPath, parse'timestamp]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'srcPath
         = P'.try
            (do
               v <- P'.getT "srcPath"
               Prelude'.return (\ o -> o{srcPath = v}))
        parse'destPath
         = P'.try
            (do
               v <- P'.getT "destPath"
               Prelude'.return (\ o -> o{destPath = v}))
        parse'timestamp
         = P'.try
            (do
               v <- P'.getT "timestamp"
               Prelude'.return (\ o -> o{timestamp = v}))