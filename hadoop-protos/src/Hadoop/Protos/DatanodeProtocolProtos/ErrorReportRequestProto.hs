{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.ErrorReportRequestProto (ErrorReportRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DatanodeProtocolProtos.DatanodeRegistrationProto as DatanodeProtocolProtos
       (DatanodeRegistrationProto)
 
data ErrorReportRequestProto = ErrorReportRequestProto{registartion :: !(DatanodeProtocolProtos.DatanodeRegistrationProto),
                                                       errorCode :: !(P'.Word32), msg :: !(P'.Utf8)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ErrorReportRequestProto where
  mergeAppend (ErrorReportRequestProto x'1 x'2 x'3) (ErrorReportRequestProto y'1 y'2 y'3)
   = ErrorReportRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default ErrorReportRequestProto where
  defaultValue = ErrorReportRequestProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire ErrorReportRequestProto where
  wireSize ft' self'@(ErrorReportRequestProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 13 x'2 + P'.wireSizeReq 1 9 x'3)
  wirePut ft' self'@(ErrorReportRequestProto x'1 x'2 x'3)
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
             P'.wirePutReq 16 13 x'2
             P'.wirePutReq 26 9 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{registartion = P'.mergeAppend (registartion old'Self) (new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{errorCode = new'Field}) (P'.wireGet 13)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{msg = new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ErrorReportRequestProto) ErrorReportRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB ErrorReportRequestProto
 
instance P'.ReflectDescriptor ErrorReportRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16, 26]) (P'.fromDistinctAscList [10, 16, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.ErrorReportRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"ErrorReportRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DatanodeProtocolProtos\",\"ErrorReportRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.ErrorReportRequestProto.registartion\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"ErrorReportRequestProto\"], baseName' = FName \"registartion\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.DatanodeRegistrationProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"DatanodeRegistrationProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.ErrorReportRequestProto.errorCode\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"ErrorReportRequestProto\"], baseName' = FName \"errorCode\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.ErrorReportRequestProto.msg\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"ErrorReportRequestProto\"], baseName' = FName \"msg\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ErrorReportRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ErrorReportRequestProto where
  textPut msg'
   = do
       P'.tellT "registartion" (registartion msg')
       P'.tellT "errorCode" (errorCode msg')
       P'.tellT "msg" (msg msg')
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'registartion, parse'errorCode, parse'msg]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'registartion
         = P'.try
            (do
               v <- P'.getT "registartion"
               Prelude'.return (\ o -> o{registartion = v}))
        parse'errorCode
         = P'.try
            (do
               v <- P'.getT "errorCode"
               Prelude'.return (\ o -> o{errorCode = v}))
        parse'msg
         = P'.try
            (do
               v <- P'.getT "msg"
               Prelude'.return (\ o -> o{msg = v}))