{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.RpcHeaderProtos.RpcRequestHeaderProto (RpcRequestHeaderProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.RpcHeaderProtos.RPCTraceInfoProto as RpcHeaderProtos (RPCTraceInfoProto)
import qualified Hadoop.Protos.RpcHeaderProtos.RpcKindProto as RpcHeaderProtos (RpcKindProto)
import qualified Hadoop.Protos.RpcHeaderProtos.RpcRequestHeaderProto.OperationProto as RpcHeaderProtos.RpcRequestHeaderProto
       (OperationProto)
 
data RpcRequestHeaderProto = RpcRequestHeaderProto{rpcKind :: !(P'.Maybe RpcHeaderProtos.RpcKindProto),
                                                   rpcOp :: !(P'.Maybe RpcHeaderProtos.RpcRequestHeaderProto.OperationProto),
                                                   callId :: !(P'.Int32), clientId :: !(P'.ByteString),
                                                   retryCount :: !(P'.Maybe P'.Int32),
                                                   traceInfo :: !(P'.Maybe RpcHeaderProtos.RPCTraceInfoProto)}
                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RpcRequestHeaderProto where
  mergeAppend (RpcRequestHeaderProto x'1 x'2 x'3 x'4 x'5 x'6) (RpcRequestHeaderProto y'1 y'2 y'3 y'4 y'5 y'6)
   = RpcRequestHeaderProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
 
instance P'.Default RpcRequestHeaderProto where
  defaultValue
   = RpcRequestHeaderProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue (Prelude'.Just (-1)) P'.defaultValue
 
instance P'.Wire RpcRequestHeaderProto where
  wireSize ft' self'@(RpcRequestHeaderProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeOpt 1 14 x'2 + P'.wireSizeReq 1 17 x'3 + P'.wireSizeReq 1 12 x'4 +
             P'.wireSizeOpt 1 17 x'5
             + P'.wireSizeOpt 1 11 x'6)
  wirePut ft' self'@(RpcRequestHeaderProto x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 14 x'1
             P'.wirePutOpt 16 14 x'2
             P'.wirePutReq 24 17 x'3
             P'.wirePutReq 34 12 x'4
             P'.wirePutOpt 40 17 x'5
             P'.wirePutOpt 50 11 x'6
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{rpcKind = Prelude'.Just new'Field}) (P'.wireGet 14)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{rpcOp = Prelude'.Just new'Field}) (P'.wireGet 14)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{callId = new'Field}) (P'.wireGet 17)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{clientId = new'Field}) (P'.wireGet 12)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{retryCount = Prelude'.Just new'Field}) (P'.wireGet 17)
             50 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{traceInfo = P'.mergeAppend (traceInfo old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RpcRequestHeaderProto) RpcRequestHeaderProto where
  getVal m' f' = f' m'
 
instance P'.GPB RpcRequestHeaderProto
 
instance P'.ReflectDescriptor RpcRequestHeaderProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [24, 34]) (P'.fromDistinctAscList [8, 16, 24, 34, 40, 50])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.RpcRequestHeaderProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"RpcHeaderProtos\"], baseName = MName \"RpcRequestHeaderProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"RpcHeaderProtos\",\"RpcRequestHeaderProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcRequestHeaderProto.rpcKind\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcRequestHeaderProto\"], baseName' = FName \"rpcKind\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.RpcKindProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"RpcHeaderProtos\"], baseName = MName \"RpcKindProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcRequestHeaderProto.rpcOp\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcRequestHeaderProto\"], baseName' = FName \"rpcOp\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.RpcRequestHeaderProto.OperationProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"RpcHeaderProtos\",MName \"RpcRequestHeaderProto\"], baseName = MName \"OperationProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcRequestHeaderProto.callId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcRequestHeaderProto\"], baseName' = FName \"callId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 17}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcRequestHeaderProto.clientId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcRequestHeaderProto\"], baseName' = FName \"clientId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcRequestHeaderProto.retryCount\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcRequestHeaderProto\"], baseName' = FName \"retryCount\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 17}, typeName = Nothing, hsRawDefault = Just \"-1\", hsDefault = Just (HsDef'Integer (-1))},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcRequestHeaderProto.traceInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcRequestHeaderProto\"], baseName' = FName \"traceInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.RPCTraceInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"RpcHeaderProtos\"], baseName = MName \"RPCTraceInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RpcRequestHeaderProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RpcRequestHeaderProto where
  textPut msg
   = do
       P'.tellT "rpcKind" (rpcKind msg)
       P'.tellT "rpcOp" (rpcOp msg)
       P'.tellT "callId" (callId msg)
       P'.tellT "clientId" (clientId msg)
       P'.tellT "retryCount" (retryCount msg)
       P'.tellT "traceInfo" (traceInfo msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'rpcKind, parse'rpcOp, parse'callId, parse'clientId, parse'retryCount, parse'traceInfo])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'rpcKind
         = P'.try
            (do
               v <- P'.getT "rpcKind"
               Prelude'.return (\ o -> o{rpcKind = v}))
        parse'rpcOp
         = P'.try
            (do
               v <- P'.getT "rpcOp"
               Prelude'.return (\ o -> o{rpcOp = v}))
        parse'callId
         = P'.try
            (do
               v <- P'.getT "callId"
               Prelude'.return (\ o -> o{callId = v}))
        parse'clientId
         = P'.try
            (do
               v <- P'.getT "clientId"
               Prelude'.return (\ o -> o{clientId = v}))
        parse'retryCount
         = P'.try
            (do
               v <- P'.getT "retryCount"
               Prelude'.return (\ o -> o{retryCount = v}))
        parse'traceInfo
         = P'.try
            (do
               v <- P'.getT "traceInfo"
               Prelude'.return (\ o -> o{traceInfo = v}))