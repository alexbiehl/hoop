{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.RpcHeaderProtos.RPCTraceInfoProto (RPCTraceInfoProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RPCTraceInfoProto = RPCTraceInfoProto{traceId :: !(P'.Maybe P'.Int64), parentId :: !(P'.Maybe P'.Int64)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RPCTraceInfoProto where
  mergeAppend (RPCTraceInfoProto x'1 x'2) (RPCTraceInfoProto y'1 y'2)
   = RPCTraceInfoProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default RPCTraceInfoProto where
  defaultValue = RPCTraceInfoProto P'.defaultValue P'.defaultValue
 
instance P'.Wire RPCTraceInfoProto where
  wireSize ft' self'@(RPCTraceInfoProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 3 x'1 + P'.wireSizeOpt 1 3 x'2)
  wirePut ft' self'@(RPCTraceInfoProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 3 x'1
             P'.wirePutOpt 16 3 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{traceId = Prelude'.Just new'Field}) (P'.wireGet 3)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{parentId = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RPCTraceInfoProto) RPCTraceInfoProto where
  getVal m' f' = f' m'
 
instance P'.GPB RPCTraceInfoProto
 
instance P'.ReflectDescriptor RPCTraceInfoProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.RPCTraceInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"RpcHeaderProtos\"], baseName = MName \"RPCTraceInfoProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"RpcHeaderProtos\",\"RPCTraceInfoProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RPCTraceInfoProto.traceId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RPCTraceInfoProto\"], baseName' = FName \"traceId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RPCTraceInfoProto.parentId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RPCTraceInfoProto\"], baseName' = FName \"parentId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RPCTraceInfoProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RPCTraceInfoProto where
  textPut msg
   = do
       P'.tellT "traceId" (traceId msg)
       P'.tellT "parentId" (parentId msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'traceId, parse'parentId]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'traceId
         = P'.try
            (do
               v <- P'.getT "traceId"
               Prelude'.return (\ o -> o{traceId = v}))
        parse'parentId
         = P'.try
            (do
               v <- P'.getT "parentId"
               Prelude'.return (\ o -> o{parentId = v}))