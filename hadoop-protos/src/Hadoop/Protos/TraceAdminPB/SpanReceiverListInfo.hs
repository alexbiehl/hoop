{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.TraceAdminPB.SpanReceiverListInfo (SpanReceiverListInfo(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data SpanReceiverListInfo = SpanReceiverListInfo{id :: !(P'.Int64), className :: !(P'.Utf8)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SpanReceiverListInfo where
  mergeAppend (SpanReceiverListInfo x'1 x'2) (SpanReceiverListInfo y'1 y'2)
   = SpanReceiverListInfo (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default SpanReceiverListInfo where
  defaultValue = SpanReceiverListInfo P'.defaultValue P'.defaultValue
 
instance P'.Wire SpanReceiverListInfo where
  wireSize ft' self'@(SpanReceiverListInfo x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 3 x'1 + P'.wireSizeReq 1 9 x'2)
  wirePut ft' self'@(SpanReceiverListInfo x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 3 x'1
             P'.wirePutReq 18 9 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{id = new'Field}) (P'.wireGet 3)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{className = new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> SpanReceiverListInfo) SpanReceiverListInfo where
  getVal m' f' = f' m'
 
instance P'.GPB SpanReceiverListInfo
 
instance P'.ReflectDescriptor SpanReceiverListInfo where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 18]) (P'.fromDistinctAscList [8, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.SpanReceiverListInfo\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"TraceAdminPB\"], baseName = MName \"SpanReceiverListInfo\"}, descFilePath = [\"Hadoop\",\"Protos\",\"TraceAdminPB\",\"SpanReceiverListInfo.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.SpanReceiverListInfo.id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"TraceAdminPB\",MName \"SpanReceiverListInfo\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.SpanReceiverListInfo.className\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"TraceAdminPB\",MName \"SpanReceiverListInfo\"], baseName' = FName \"className\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType SpanReceiverListInfo where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg SpanReceiverListInfo where
  textPut msg
   = do
       P'.tellT "id" (id msg)
       P'.tellT "className" (className msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'id, parse'className]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'id
         = P'.try
            (do
               v <- P'.getT "id"
               Prelude'.return (\ o -> o{id = v}))
        parse'className
         = P'.try
            (do
               v <- P'.getT "className"
               Prelude'.return (\ o -> o{className = v}))