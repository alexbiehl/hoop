{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.InotifyProtos.EventProto (EventProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.InotifyProtos.EventType as InotifyProtos (EventType)
 
data EventProto = EventProto{type' :: !(InotifyProtos.EventType), contents :: !(P'.ByteString)}
                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable EventProto where
  mergeAppend (EventProto x'1 x'2) (EventProto y'1 y'2) = EventProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default EventProto where
  defaultValue = EventProto P'.defaultValue P'.defaultValue
 
instance P'.Wire EventProto where
  wireSize ft' self'@(EventProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 14 x'1 + P'.wireSizeReq 1 12 x'2)
  wirePut ft' self'@(EventProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 14 x'1
             P'.wirePutReq 18 12 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{type' = new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{contents = new'Field}) (P'.wireGet 12)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> EventProto) EventProto where
  getVal m' f' = f' m'
 
instance P'.GPB EventProto
 
instance P'.ReflectDescriptor EventProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 18]) (P'.fromDistinctAscList [8, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.EventProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InotifyProtos\"], baseName = MName \"EventProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"InotifyProtos\",\"EventProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.EventProto.type\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"EventProto\"], baseName' = FName \"type'\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.EventType\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InotifyProtos\"], baseName = MName \"EventType\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.EventProto.contents\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"EventProto\"], baseName' = FName \"contents\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType EventProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg EventProto where
  textPut msg
   = do
       P'.tellT "type" (type' msg)
       P'.tellT "contents" (contents msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'type', parse'contents]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'type'
         = P'.try
            (do
               v <- P'.getT "type"
               Prelude'.return (\ o -> o{type' = v}))
        parse'contents
         = P'.try
            (do
               v <- P'.getT "contents"
               Prelude'.return (\ o -> o{contents = v}))