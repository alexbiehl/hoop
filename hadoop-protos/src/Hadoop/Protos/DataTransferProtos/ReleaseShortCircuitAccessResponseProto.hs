{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.ReleaseShortCircuitAccessResponseProto (ReleaseShortCircuitAccessResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DataTransferProtos.Status as DataTransferProtos (Status)
 
data ReleaseShortCircuitAccessResponseProto = ReleaseShortCircuitAccessResponseProto{status :: !(DataTransferProtos.Status),
                                                                                     error :: !(P'.Maybe P'.Utf8)}
                                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ReleaseShortCircuitAccessResponseProto where
  mergeAppend (ReleaseShortCircuitAccessResponseProto x'1 x'2) (ReleaseShortCircuitAccessResponseProto y'1 y'2)
   = ReleaseShortCircuitAccessResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ReleaseShortCircuitAccessResponseProto where
  defaultValue = ReleaseShortCircuitAccessResponseProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ReleaseShortCircuitAccessResponseProto where
  wireSize ft' self'@(ReleaseShortCircuitAccessResponseProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 14 x'1 + P'.wireSizeOpt 1 9 x'2)
  wirePut ft' self'@(ReleaseShortCircuitAccessResponseProto x'1 x'2)
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
             P'.wirePutOpt 18 9 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{status = new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{error = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ReleaseShortCircuitAccessResponseProto) ReleaseShortCircuitAccessResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB ReleaseShortCircuitAccessResponseProto
 
instance P'.ReflectDescriptor ReleaseShortCircuitAccessResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.ReleaseShortCircuitAccessResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"ReleaseShortCircuitAccessResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DataTransferProtos\",\"ReleaseShortCircuitAccessResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ReleaseShortCircuitAccessResponseProto.status\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"ReleaseShortCircuitAccessResponseProto\"], baseName' = FName \"status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.Status\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"Status\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ReleaseShortCircuitAccessResponseProto.error\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"ReleaseShortCircuitAccessResponseProto\"], baseName' = FName \"error\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ReleaseShortCircuitAccessResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ReleaseShortCircuitAccessResponseProto where
  textPut msg
   = do
       P'.tellT "status" (status msg)
       P'.tellT "error" (error msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'status, parse'error]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'status
         = P'.try
            (do
               v <- P'.getT "status"
               Prelude'.return (\ o -> o{status = v}))
        parse'error
         = P'.try
            (do
               v <- P'.getT "error"
               Prelude'.return (\ o -> o{error = v}))