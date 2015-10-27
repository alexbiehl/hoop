{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.CheckpointCommandProto (CheckpointCommandProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.CheckpointSignatureProto as HdfsProtos (CheckpointSignatureProto)
 
data CheckpointCommandProto = CheckpointCommandProto{signature :: !(HdfsProtos.CheckpointSignatureProto),
                                                     needToReturnImage :: !(P'.Bool)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CheckpointCommandProto where
  mergeAppend (CheckpointCommandProto x'1 x'2) (CheckpointCommandProto y'1 y'2)
   = CheckpointCommandProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default CheckpointCommandProto where
  defaultValue = CheckpointCommandProto P'.defaultValue P'.defaultValue
 
instance P'.Wire CheckpointCommandProto where
  wireSize ft' self'@(CheckpointCommandProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 8 x'2)
  wirePut ft' self'@(CheckpointCommandProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 11 x'1
             P'.wirePutReq 16 8 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{signature = P'.mergeAppend (signature old'Self) (new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{needToReturnImage = new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> CheckpointCommandProto) CheckpointCommandProto where
  getVal m' f' = f' m'
 
instance P'.GPB CheckpointCommandProto
 
instance P'.ReflectDescriptor CheckpointCommandProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16]) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.CheckpointCommandProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"CheckpointCommandProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"CheckpointCommandProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CheckpointCommandProto.signature\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"CheckpointCommandProto\"], baseName' = FName \"signature\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.CheckpointSignatureProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"CheckpointSignatureProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CheckpointCommandProto.needToReturnImage\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"CheckpointCommandProto\"], baseName' = FName \"needToReturnImage\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType CheckpointCommandProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg CheckpointCommandProto where
  textPut msg
   = do
       P'.tellT "signature" (signature msg)
       P'.tellT "needToReturnImage" (needToReturnImage msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'signature, parse'needToReturnImage]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'signature
         = P'.try
            (do
               v <- P'.getT "signature"
               Prelude'.return (\ o -> o{signature = v}))
        parse'needToReturnImage
         = P'.try
            (do
               v <- P'.getT "needToReturnImage"
               Prelude'.return (\ o -> o{needToReturnImage = v}))