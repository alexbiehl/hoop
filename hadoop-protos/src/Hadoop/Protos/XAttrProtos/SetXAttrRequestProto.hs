{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.XAttrProtos.SetXAttrRequestProto (SetXAttrRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.XAttrProtos.XAttrProto as XAttrProtos (XAttrProto)
 
data SetXAttrRequestProto = SetXAttrRequestProto{src :: !(P'.Utf8), xAttr :: !(P'.Maybe XAttrProtos.XAttrProto),
                                                 flag :: !(P'.Maybe P'.Word32)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SetXAttrRequestProto where
  mergeAppend (SetXAttrRequestProto x'1 x'2 x'3) (SetXAttrRequestProto y'1 y'2 y'3)
   = SetXAttrRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default SetXAttrRequestProto where
  defaultValue = SetXAttrRequestProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire SetXAttrRequestProto where
  wireSize ft' self'@(SetXAttrRequestProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 13 x'3)
  wirePut ft' self'@(SetXAttrRequestProto x'1 x'2 x'3)
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
             P'.wirePutOpt 18 11 x'2
             P'.wirePutOpt 24 13 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{src = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{xAttr = P'.mergeAppend (xAttr old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{flag = Prelude'.Just new'Field}) (P'.wireGet 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> SetXAttrRequestProto) SetXAttrRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB SetXAttrRequestProto
 
instance P'.ReflectDescriptor SetXAttrRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10, 18, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.SetXAttrRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"XAttrProtos\"], baseName = MName \"SetXAttrRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"XAttrProtos\",\"SetXAttrRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SetXAttrRequestProto.src\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"XAttrProtos\",MName \"SetXAttrRequestProto\"], baseName' = FName \"src\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SetXAttrRequestProto.xAttr\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"XAttrProtos\",MName \"SetXAttrRequestProto\"], baseName' = FName \"xAttr\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.XAttrProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"XAttrProtos\"], baseName = MName \"XAttrProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SetXAttrRequestProto.flag\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"XAttrProtos\",MName \"SetXAttrRequestProto\"], baseName' = FName \"flag\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType SetXAttrRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg SetXAttrRequestProto where
  textPut msg
   = do
       P'.tellT "src" (src msg)
       P'.tellT "xAttr" (xAttr msg)
       P'.tellT "flag" (flag msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'src, parse'xAttr, parse'flag]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'src
         = P'.try
            (do
               v <- P'.getT "src"
               Prelude'.return (\ o -> o{src = v}))
        parse'xAttr
         = P'.try
            (do
               v <- P'.getT "xAttr"
               Prelude'.return (\ o -> o{xAttr = v}))
        parse'flag
         = P'.try
            (do
               v <- P'.getT "flag"
               Prelude'.return (\ o -> o{flag = v}))