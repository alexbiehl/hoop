{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.RemoteEditLogProto (RemoteEditLogProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RemoteEditLogProto = RemoteEditLogProto{startTxId :: !(P'.Word64), endTxId :: !(P'.Word64),
                                             isInProgress :: !(P'.Maybe P'.Bool)}
                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RemoteEditLogProto where
  mergeAppend (RemoteEditLogProto x'1 x'2 x'3) (RemoteEditLogProto y'1 y'2 y'3)
   = RemoteEditLogProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default RemoteEditLogProto where
  defaultValue = RemoteEditLogProto P'.defaultValue P'.defaultValue (Prelude'.Just Prelude'.False)
 
instance P'.Wire RemoteEditLogProto where
  wireSize ft' self'@(RemoteEditLogProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 4 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeOpt 1 8 x'3)
  wirePut ft' self'@(RemoteEditLogProto x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 4 x'1
             P'.wirePutReq 16 4 x'2
             P'.wirePutOpt 24 8 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{startTxId = new'Field}) (P'.wireGet 4)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{endTxId = new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{isInProgress = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RemoteEditLogProto) RemoteEditLogProto where
  getVal m' f' = f' m'
 
instance P'.GPB RemoteEditLogProto
 
instance P'.ReflectDescriptor RemoteEditLogProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 16]) (P'.fromDistinctAscList [8, 16, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.RemoteEditLogProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"RemoteEditLogProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"RemoteEditLogProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.RemoteEditLogProto.startTxId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"RemoteEditLogProto\"], baseName' = FName \"startTxId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.RemoteEditLogProto.endTxId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"RemoteEditLogProto\"], baseName' = FName \"endTxId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.RemoteEditLogProto.isInProgress\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"RemoteEditLogProto\"], baseName' = FName \"isInProgress\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RemoteEditLogProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RemoteEditLogProto where
  textPut msg
   = do
       P'.tellT "startTxId" (startTxId msg)
       P'.tellT "endTxId" (endTxId msg)
       P'.tellT "isInProgress" (isInProgress msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'startTxId, parse'endTxId, parse'isInProgress]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'startTxId
         = P'.try
            (do
               v <- P'.getT "startTxId"
               Prelude'.return (\ o -> o{startTxId = v}))
        parse'endTxId
         = P'.try
            (do
               v <- P'.getT "endTxId"
               Prelude'.return (\ o -> o{endTxId = v}))
        parse'isInProgress
         = P'.try
            (do
               v <- P'.getT "isInProgress"
               Prelude'.return (\ o -> o{isInProgress = v}))