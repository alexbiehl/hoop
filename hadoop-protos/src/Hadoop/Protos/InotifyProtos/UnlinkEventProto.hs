{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.InotifyProtos.UnlinkEventProto (UnlinkEventProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data UnlinkEventProto = UnlinkEventProto{path :: !(P'.Utf8), timestamp :: !(P'.Int64)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable UnlinkEventProto where
  mergeAppend (UnlinkEventProto x'1 x'2) (UnlinkEventProto y'1 y'2)
   = UnlinkEventProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default UnlinkEventProto where
  defaultValue = UnlinkEventProto P'.defaultValue P'.defaultValue
 
instance P'.Wire UnlinkEventProto where
  wireSize ft' self'@(UnlinkEventProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 3 x'2)
  wirePut ft' self'@(UnlinkEventProto x'1 x'2)
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
             P'.wirePutReq 16 3 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{path = new'Field}) (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{timestamp = new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> UnlinkEventProto) UnlinkEventProto where
  getVal m' f' = f' m'
 
instance P'.GPB UnlinkEventProto
 
instance P'.ReflectDescriptor UnlinkEventProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16]) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.UnlinkEventProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InotifyProtos\"], baseName = MName \"UnlinkEventProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"InotifyProtos\",\"UnlinkEventProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.UnlinkEventProto.path\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"UnlinkEventProto\"], baseName' = FName \"path\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.UnlinkEventProto.timestamp\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"UnlinkEventProto\"], baseName' = FName \"timestamp\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType UnlinkEventProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg UnlinkEventProto where
  textPut msg
   = do
       P'.tellT "path" (path msg)
       P'.tellT "timestamp" (timestamp msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'path, parse'timestamp]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'path
         = P'.try
            (do
               v <- P'.getT "path"
               Prelude'.return (\ o -> o{path = v}))
        parse'timestamp
         = P'.try
            (do
               v <- P'.getT "timestamp"
               Prelude'.return (\ o -> o{timestamp = v}))