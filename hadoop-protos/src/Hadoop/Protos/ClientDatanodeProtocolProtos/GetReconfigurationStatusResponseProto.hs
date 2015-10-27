{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientDatanodeProtocolProtos.GetReconfigurationStatusResponseProto (GetReconfigurationStatusResponseProto(..))
       where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.ClientDatanodeProtocolProtos.GetReconfigurationStatusConfigChangeProto
       as ClientDatanodeProtocolProtos (GetReconfigurationStatusConfigChangeProto)
 
data GetReconfigurationStatusResponseProto = GetReconfigurationStatusResponseProto{startTime :: !(P'.Int64),
                                                                                   endTime :: !(P'.Maybe P'.Int64),
                                                                                   changes ::
                                                                                   !(P'.Seq
                                                                                      ClientDatanodeProtocolProtos.GetReconfigurationStatusConfigChangeProto)}
                                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetReconfigurationStatusResponseProto where
  mergeAppend (GetReconfigurationStatusResponseProto x'1 x'2 x'3) (GetReconfigurationStatusResponseProto y'1 y'2 y'3)
   = GetReconfigurationStatusResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default GetReconfigurationStatusResponseProto where
  defaultValue = GetReconfigurationStatusResponseProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire GetReconfigurationStatusResponseProto where
  wireSize ft' self'@(GetReconfigurationStatusResponseProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 3 x'1 + P'.wireSizeOpt 1 3 x'2 + P'.wireSizeRep 1 11 x'3)
  wirePut ft' self'@(GetReconfigurationStatusResponseProto x'1 x'2 x'3)
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
             P'.wirePutOpt 16 3 x'2
             P'.wirePutRep 26 11 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{startTime = new'Field}) (P'.wireGet 3)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{endTime = Prelude'.Just new'Field}) (P'.wireGet 3)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{changes = P'.append (changes old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetReconfigurationStatusResponseProto) GetReconfigurationStatusResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetReconfigurationStatusResponseProto
 
instance P'.ReflectDescriptor GetReconfigurationStatusResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8, 16, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.GetReconfigurationStatusResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientDatanodeProtocolProtos\"], baseName = MName \"GetReconfigurationStatusResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientDatanodeProtocolProtos\",\"GetReconfigurationStatusResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetReconfigurationStatusResponseProto.startTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientDatanodeProtocolProtos\",MName \"GetReconfigurationStatusResponseProto\"], baseName' = FName \"startTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetReconfigurationStatusResponseProto.endTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientDatanodeProtocolProtos\",MName \"GetReconfigurationStatusResponseProto\"], baseName' = FName \"endTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetReconfigurationStatusResponseProto.changes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientDatanodeProtocolProtos\",MName \"GetReconfigurationStatusResponseProto\"], baseName' = FName \"changes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.GetReconfigurationStatusConfigChangeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientDatanodeProtocolProtos\"], baseName = MName \"GetReconfigurationStatusConfigChangeProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetReconfigurationStatusResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetReconfigurationStatusResponseProto where
  textPut msg
   = do
       P'.tellT "startTime" (startTime msg)
       P'.tellT "endTime" (endTime msg)
       P'.tellT "changes" (changes msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'startTime, parse'endTime, parse'changes]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'startTime
         = P'.try
            (do
               v <- P'.getT "startTime"
               Prelude'.return (\ o -> o{startTime = v}))
        parse'endTime
         = P'.try
            (do
               v <- P'.getT "endTime"
               Prelude'.return (\ o -> o{endTime = v}))
        parse'changes
         = P'.try
            (do
               v <- P'.getT "changes"
               Prelude'.return (\ o -> o{changes = P'.append (changes o) v}))