{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.RpcHeaderProtos.RpcResponseHeaderProto (RpcResponseHeaderProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.RpcHeaderProtos.RpcResponseHeaderProto.RpcErrorCodeProto as RpcHeaderProtos.RpcResponseHeaderProto
       (RpcErrorCodeProto)
import qualified Hadoop.Protos.RpcHeaderProtos.RpcResponseHeaderProto.RpcStatusProto as RpcHeaderProtos.RpcResponseHeaderProto
       (RpcStatusProto)
 
data RpcResponseHeaderProto = RpcResponseHeaderProto{callId :: !(P'.Word32),
                                                     status :: !(RpcHeaderProtos.RpcResponseHeaderProto.RpcStatusProto),
                                                     serverIpcVersionNum :: !(P'.Maybe P'.Word32),
                                                     exceptionClassName :: !(P'.Maybe P'.Utf8), errorMsg :: !(P'.Maybe P'.Utf8),
                                                     errorDetail ::
                                                     !(P'.Maybe RpcHeaderProtos.RpcResponseHeaderProto.RpcErrorCodeProto),
                                                     clientId :: !(P'.Maybe P'.ByteString), retryCount :: !(P'.Maybe P'.Int32)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RpcResponseHeaderProto where
  mergeAppend (RpcResponseHeaderProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8) (RpcResponseHeaderProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8)
   = RpcResponseHeaderProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
 
instance P'.Default RpcResponseHeaderProto where
  defaultValue
   = RpcResponseHeaderProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      (Prelude'.Just (-1))
 
instance P'.Wire RpcResponseHeaderProto where
  wireSize ft' self'@(RpcResponseHeaderProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 13 x'1 + P'.wireSizeReq 1 14 x'2 + P'.wireSizeOpt 1 13 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeOpt 1 14 x'6
             + P'.wireSizeOpt 1 12 x'7
             + P'.wireSizeOpt 1 17 x'8)
  wirePut ft' self'@(RpcResponseHeaderProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 13 x'1
             P'.wirePutReq 16 14 x'2
             P'.wirePutOpt 24 13 x'3
             P'.wirePutOpt 34 9 x'4
             P'.wirePutOpt 42 9 x'5
             P'.wirePutOpt 48 14 x'6
             P'.wirePutOpt 58 12 x'7
             P'.wirePutOpt 64 17 x'8
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{callId = new'Field}) (P'.wireGet 13)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{status = new'Field}) (P'.wireGet 14)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{serverIpcVersionNum = Prelude'.Just new'Field}) (P'.wireGet 13)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{exceptionClassName = Prelude'.Just new'Field}) (P'.wireGet 9)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{errorMsg = Prelude'.Just new'Field}) (P'.wireGet 9)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{errorDetail = Prelude'.Just new'Field}) (P'.wireGet 14)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{clientId = Prelude'.Just new'Field}) (P'.wireGet 12)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{retryCount = Prelude'.Just new'Field}) (P'.wireGet 17)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RpcResponseHeaderProto) RpcResponseHeaderProto where
  getVal m' f' = f' m'
 
instance P'.GPB RpcResponseHeaderProto
 
instance P'.ReflectDescriptor RpcResponseHeaderProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 16]) (P'.fromDistinctAscList [8, 16, 24, 34, 42, 48, 58, 64])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.RpcResponseHeaderProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"RpcHeaderProtos\"], baseName = MName \"RpcResponseHeaderProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"RpcHeaderProtos\",\"RpcResponseHeaderProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcResponseHeaderProto.callId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcResponseHeaderProto\"], baseName' = FName \"callId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcResponseHeaderProto.status\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcResponseHeaderProto\"], baseName' = FName \"status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.RpcResponseHeaderProto.RpcStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"RpcHeaderProtos\",MName \"RpcResponseHeaderProto\"], baseName = MName \"RpcStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcResponseHeaderProto.serverIpcVersionNum\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcResponseHeaderProto\"], baseName' = FName \"serverIpcVersionNum\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcResponseHeaderProto.exceptionClassName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcResponseHeaderProto\"], baseName' = FName \"exceptionClassName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcResponseHeaderProto.errorMsg\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcResponseHeaderProto\"], baseName' = FName \"errorMsg\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcResponseHeaderProto.errorDetail\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcResponseHeaderProto\"], baseName' = FName \"errorDetail\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.RpcResponseHeaderProto.RpcErrorCodeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"RpcHeaderProtos\",MName \"RpcResponseHeaderProto\"], baseName = MName \"RpcErrorCodeProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcResponseHeaderProto.clientId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcResponseHeaderProto\"], baseName' = FName \"clientId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RpcResponseHeaderProto.retryCount\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"RpcHeaderProtos\",MName \"RpcResponseHeaderProto\"], baseName' = FName \"retryCount\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 17}, typeName = Nothing, hsRawDefault = Just \"-1\", hsDefault = Just (HsDef'Integer (-1))}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RpcResponseHeaderProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RpcResponseHeaderProto where
  textPut msg
   = do
       P'.tellT "callId" (callId msg)
       P'.tellT "status" (status msg)
       P'.tellT "serverIpcVersionNum" (serverIpcVersionNum msg)
       P'.tellT "exceptionClassName" (exceptionClassName msg)
       P'.tellT "errorMsg" (errorMsg msg)
       P'.tellT "errorDetail" (errorDetail msg)
       P'.tellT "clientId" (clientId msg)
       P'.tellT "retryCount" (retryCount msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'callId, parse'status, parse'serverIpcVersionNum, parse'exceptionClassName, parse'errorMsg,
                   parse'errorDetail, parse'clientId, parse'retryCount])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'callId
         = P'.try
            (do
               v <- P'.getT "callId"
               Prelude'.return (\ o -> o{callId = v}))
        parse'status
         = P'.try
            (do
               v <- P'.getT "status"
               Prelude'.return (\ o -> o{status = v}))
        parse'serverIpcVersionNum
         = P'.try
            (do
               v <- P'.getT "serverIpcVersionNum"
               Prelude'.return (\ o -> o{serverIpcVersionNum = v}))
        parse'exceptionClassName
         = P'.try
            (do
               v <- P'.getT "exceptionClassName"
               Prelude'.return (\ o -> o{exceptionClassName = v}))
        parse'errorMsg
         = P'.try
            (do
               v <- P'.getT "errorMsg"
               Prelude'.return (\ o -> o{errorMsg = v}))
        parse'errorDetail
         = P'.try
            (do
               v <- P'.getT "errorDetail"
               Prelude'.return (\ o -> o{errorDetail = v}))
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