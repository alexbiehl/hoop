{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.InotifyProtos.AppendEventProto (AppendEventProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data AppendEventProto = AppendEventProto{path :: !(P'.Utf8), newBlock :: !(P'.Maybe P'.Bool)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AppendEventProto where
  mergeAppend (AppendEventProto x'1 x'2) (AppendEventProto y'1 y'2)
   = AppendEventProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default AppendEventProto where
  defaultValue = AppendEventProto P'.defaultValue (Prelude'.Just Prelude'.False)
 
instance P'.Wire AppendEventProto where
  wireSize ft' self'@(AppendEventProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeOpt 1 8 x'2)
  wirePut ft' self'@(AppendEventProto x'1 x'2)
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
             P'.wirePutOpt 16 8 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{path = new'Field}) (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{newBlock = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> AppendEventProto) AppendEventProto where
  getVal m' f' = f' m'
 
instance P'.GPB AppendEventProto
 
instance P'.ReflectDescriptor AppendEventProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.AppendEventProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InotifyProtos\"], baseName = MName \"AppendEventProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"InotifyProtos\",\"AppendEventProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AppendEventProto.path\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"AppendEventProto\"], baseName' = FName \"path\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AppendEventProto.newBlock\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InotifyProtos\",MName \"AppendEventProto\"], baseName' = FName \"newBlock\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType AppendEventProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg AppendEventProto where
  textPut msg
   = do
       P'.tellT "path" (path msg)
       P'.tellT "newBlock" (newBlock msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'path, parse'newBlock]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'path
         = P'.try
            (do
               v <- P'.getT "path"
               Prelude'.return (\ o -> o{path = v}))
        parse'newBlock
         = P'.try
            (do
               v <- P'.getT "newBlock"
               Prelude'.return (\ o -> o{newBlock = v}))