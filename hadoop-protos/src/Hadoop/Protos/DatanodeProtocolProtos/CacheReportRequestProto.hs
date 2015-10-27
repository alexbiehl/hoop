{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.CacheReportRequestProto (CacheReportRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DatanodeProtocolProtos.DatanodeRegistrationProto as DatanodeProtocolProtos
       (DatanodeRegistrationProto)
 
data CacheReportRequestProto = CacheReportRequestProto{registration :: !(DatanodeProtocolProtos.DatanodeRegistrationProto),
                                                       blockPoolId :: !(P'.Utf8), blocks :: !(P'.Seq P'.Word64)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CacheReportRequestProto where
  mergeAppend (CacheReportRequestProto x'1 x'2 x'3) (CacheReportRequestProto y'1 y'2 y'3)
   = CacheReportRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default CacheReportRequestProto where
  defaultValue = CacheReportRequestProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire CacheReportRequestProto where
  wireSize ft' self'@(CacheReportRequestProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizePacked 1 4 x'3)
  wirePut ft' self'@(CacheReportRequestProto x'1 x'2 x'3)
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
             P'.wirePutReq 18 9 x'2
             P'.wirePutPacked 26 4 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{registration = P'.mergeAppend (registration old'Self) (new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{blockPoolId = new'Field}) (P'.wireGet 9)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{blocks = P'.append (blocks old'Self) new'Field}) (P'.wireGet 4)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{blocks = P'.mergeAppend (blocks old'Self) new'Field})
                    (P'.wireGetPacked 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> CacheReportRequestProto) CacheReportRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB CacheReportRequestProto
 
instance P'.ReflectDescriptor CacheReportRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18]) (P'.fromDistinctAscList [10, 18, 24, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.CacheReportRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"CacheReportRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DatanodeProtocolProtos\",\"CacheReportRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.CacheReportRequestProto.registration\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"CacheReportRequestProto\"], baseName' = FName \"registration\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.DatanodeRegistrationProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"DatanodeRegistrationProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.CacheReportRequestProto.blockPoolId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"CacheReportRequestProto\"], baseName' = FName \"blockPoolId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.CacheReportRequestProto.blocks\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"CacheReportRequestProto\"], baseName' = FName \"blocks\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Just (WireTag {getWireTag = 24},WireTag {getWireTag = 26}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType CacheReportRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg CacheReportRequestProto where
  textPut msg
   = do
       P'.tellT "registration" (registration msg)
       P'.tellT "blockPoolId" (blockPoolId msg)
       P'.tellT "blocks" (blocks msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'registration, parse'blockPoolId, parse'blocks]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'registration
         = P'.try
            (do
               v <- P'.getT "registration"
               Prelude'.return (\ o -> o{registration = v}))
        parse'blockPoolId
         = P'.try
            (do
               v <- P'.getT "blockPoolId"
               Prelude'.return (\ o -> o{blockPoolId = v}))
        parse'blocks
         = P'.try
            (do
               v <- P'.getT "blocks"
               Prelude'.return (\ o -> o{blocks = P'.append (blocks o) v}))