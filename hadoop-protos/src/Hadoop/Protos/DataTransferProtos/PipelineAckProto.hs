{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.PipelineAckProto (PipelineAckProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DataTransferProtos.Status as DataTransferProtos (Status)
 
data PipelineAckProto = PipelineAckProto{seqno :: !(P'.Int64), reply :: !(P'.Seq DataTransferProtos.Status),
                                         downstreamAckTimeNanos :: !(P'.Maybe P'.Word64), flag :: !(P'.Seq P'.Word32)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable PipelineAckProto where
  mergeAppend (PipelineAckProto x'1 x'2 x'3 x'4) (PipelineAckProto y'1 y'2 y'3 y'4)
   = PipelineAckProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default PipelineAckProto where
  defaultValue = PipelineAckProto P'.defaultValue P'.defaultValue (Prelude'.Just 0) P'.defaultValue
 
instance P'.Wire PipelineAckProto where
  wireSize ft' self'@(PipelineAckProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 18 x'1 + P'.wireSizeRep 1 14 x'2 + P'.wireSizeOpt 1 4 x'3 + P'.wireSizePacked 1 13 x'4)
  wirePut ft' self'@(PipelineAckProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 18 x'1
             P'.wirePutRep 16 14 x'2
             P'.wirePutOpt 24 4 x'3
             P'.wirePutPacked 34 13 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{seqno = new'Field}) (P'.wireGet 18)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{reply = P'.append (reply old'Self) new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{reply = P'.mergeAppend (reply old'Self) new'Field}) (P'.wireGetPacked 14)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{downstreamAckTimeNanos = Prelude'.Just new'Field}) (P'.wireGet 4)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{flag = P'.append (flag old'Self) new'Field}) (P'.wireGet 13)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{flag = P'.mergeAppend (flag old'Self) new'Field}) (P'.wireGetPacked 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> PipelineAckProto) PipelineAckProto where
  getVal m' f' = f' m'
 
instance P'.GPB PipelineAckProto
 
instance P'.ReflectDescriptor PipelineAckProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8, 16, 18, 24, 32, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.PipelineAckProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"PipelineAckProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DataTransferProtos\",\"PipelineAckProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.PipelineAckProto.seqno\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"PipelineAckProto\"], baseName' = FName \"seqno\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 18}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.PipelineAckProto.reply\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"PipelineAckProto\"], baseName' = FName \"reply\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Just (WireTag {getWireTag = 16},WireTag {getWireTag = 18}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.Status\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"Status\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.PipelineAckProto.downstreamAckTimeNanos\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"PipelineAckProto\"], baseName' = FName \"downstreamAckTimeNanos\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.PipelineAckProto.flag\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"PipelineAckProto\"], baseName' = FName \"flag\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Just (WireTag {getWireTag = 32},WireTag {getWireTag = 34}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType PipelineAckProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg PipelineAckProto where
  textPut msg
   = do
       P'.tellT "seqno" (seqno msg)
       P'.tellT "reply" (reply msg)
       P'.tellT "downstreamAckTimeNanos" (downstreamAckTimeNanos msg)
       P'.tellT "flag" (flag msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'seqno, parse'reply, parse'downstreamAckTimeNanos, parse'flag]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'seqno
         = P'.try
            (do
               v <- P'.getT "seqno"
               Prelude'.return (\ o -> o{seqno = v}))
        parse'reply
         = P'.try
            (do
               v <- P'.getT "reply"
               Prelude'.return (\ o -> o{reply = P'.append (reply o) v}))
        parse'downstreamAckTimeNanos
         = P'.try
            (do
               v <- P'.getT "downstreamAckTimeNanos"
               Prelude'.return (\ o -> o{downstreamAckTimeNanos = v}))
        parse'flag
         = P'.try
            (do
               v <- P'.getT "flag"
               Prelude'.return (\ o -> o{flag = P'.append (flag o) v}))