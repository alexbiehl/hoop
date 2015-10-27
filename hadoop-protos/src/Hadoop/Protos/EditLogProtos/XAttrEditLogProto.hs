{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.EditLogProtos.XAttrEditLogProto (XAttrEditLogProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.XAttrProtos.XAttrProto as XAttrProtos (XAttrProto)
 
data XAttrEditLogProto = XAttrEditLogProto{src :: !(P'.Maybe P'.Utf8), xAttrs :: !(P'.Seq XAttrProtos.XAttrProto)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable XAttrEditLogProto where
  mergeAppend (XAttrEditLogProto x'1 x'2) (XAttrEditLogProto y'1 y'2)
   = XAttrEditLogProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default XAttrEditLogProto where
  defaultValue = XAttrEditLogProto P'.defaultValue P'.defaultValue
 
instance P'.Wire XAttrEditLogProto where
  wireSize ft' self'@(XAttrEditLogProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePut ft' self'@(XAttrEditLogProto x'1 x'2)
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
             P'.wirePutRep 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{src = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{xAttrs = P'.append (xAttrs old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> XAttrEditLogProto) XAttrEditLogProto where
  getVal m' f' = f' m'
 
instance P'.GPB XAttrEditLogProto
 
instance P'.ReflectDescriptor XAttrEditLogProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.XAttrEditLogProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"EditLogProtos\"], baseName = MName \"XAttrEditLogProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"EditLogProtos\",\"XAttrEditLogProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.XAttrEditLogProto.src\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"EditLogProtos\",MName \"XAttrEditLogProto\"], baseName' = FName \"src\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.XAttrEditLogProto.xAttrs\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"EditLogProtos\",MName \"XAttrEditLogProto\"], baseName' = FName \"xAttrs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.XAttrProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"XAttrProtos\"], baseName = MName \"XAttrProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType XAttrEditLogProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg XAttrEditLogProto where
  textPut msg
   = do
       P'.tellT "src" (src msg)
       P'.tellT "xAttrs" (xAttrs msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'src, parse'xAttrs]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'src
         = P'.try
            (do
               v <- P'.getT "src"
               Prelude'.return (\ o -> o{src = v}))
        parse'xAttrs
         = P'.try
            (do
               v <- P'.getT "xAttrs"
               Prelude'.return (\ o -> o{xAttrs = P'.append (xAttrs o) v}))