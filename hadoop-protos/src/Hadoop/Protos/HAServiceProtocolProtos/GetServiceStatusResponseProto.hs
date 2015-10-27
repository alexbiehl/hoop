{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HAServiceProtocolProtos.GetServiceStatusResponseProto (GetServiceStatusResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HAServiceProtocolProtos.HAServiceStateProto as HAServiceProtocolProtos (HAServiceStateProto)
 
data GetServiceStatusResponseProto = GetServiceStatusResponseProto{state :: !(HAServiceProtocolProtos.HAServiceStateProto),
                                                                   readyToBecomeActive :: !(P'.Maybe P'.Bool),
                                                                   notReadyReason :: !(P'.Maybe P'.Utf8)}
                                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetServiceStatusResponseProto where
  mergeAppend (GetServiceStatusResponseProto x'1 x'2 x'3) (GetServiceStatusResponseProto y'1 y'2 y'3)
   = GetServiceStatusResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default GetServiceStatusResponseProto where
  defaultValue = GetServiceStatusResponseProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire GetServiceStatusResponseProto where
  wireSize ft' self'@(GetServiceStatusResponseProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 14 x'1 + P'.wireSizeOpt 1 8 x'2 + P'.wireSizeOpt 1 9 x'3)
  wirePut ft' self'@(GetServiceStatusResponseProto x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 14 x'1
             P'.wirePutOpt 16 8 x'2
             P'.wirePutOpt 26 9 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{state = new'Field}) (P'.wireGet 14)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{readyToBecomeActive = Prelude'.Just new'Field}) (P'.wireGet 8)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{notReadyReason = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetServiceStatusResponseProto) GetServiceStatusResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetServiceStatusResponseProto
 
instance P'.ReflectDescriptor GetServiceStatusResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8, 16, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.GetServiceStatusResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HAServiceProtocolProtos\"], baseName = MName \"GetServiceStatusResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HAServiceProtocolProtos\",\"GetServiceStatusResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.GetServiceStatusResponseProto.state\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HAServiceProtocolProtos\",MName \"GetServiceStatusResponseProto\"], baseName' = FName \"state\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.HAServiceStateProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HAServiceProtocolProtos\"], baseName = MName \"HAServiceStateProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.GetServiceStatusResponseProto.readyToBecomeActive\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HAServiceProtocolProtos\",MName \"GetServiceStatusResponseProto\"], baseName' = FName \"readyToBecomeActive\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.GetServiceStatusResponseProto.notReadyReason\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HAServiceProtocolProtos\",MName \"GetServiceStatusResponseProto\"], baseName' = FName \"notReadyReason\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetServiceStatusResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetServiceStatusResponseProto where
  textPut msg
   = do
       P'.tellT "state" (state msg)
       P'.tellT "readyToBecomeActive" (readyToBecomeActive msg)
       P'.tellT "notReadyReason" (notReadyReason msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'state, parse'readyToBecomeActive, parse'notReadyReason]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'state
         = P'.try
            (do
               v <- P'.getT "state"
               Prelude'.return (\ o -> o{state = v}))
        parse'readyToBecomeActive
         = P'.try
            (do
               v <- P'.getT "readyToBecomeActive"
               Prelude'.return (\ o -> o{readyToBecomeActive = v}))
        parse'notReadyReason
         = P'.try
            (do
               v <- P'.getT "notReadyReason"
               Prelude'.return (\ o -> o{notReadyReason = v}))