{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DatanodeProtocolProtos.VolumeFailureSummaryProto (VolumeFailureSummaryProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data VolumeFailureSummaryProto = VolumeFailureSummaryProto{failedStorageLocations :: !(P'.Seq P'.Utf8),
                                                           lastVolumeFailureDate :: !(P'.Word64),
                                                           estimatedCapacityLostTotal :: !(P'.Word64)}
                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable VolumeFailureSummaryProto where
  mergeAppend (VolumeFailureSummaryProto x'1 x'2 x'3) (VolumeFailureSummaryProto y'1 y'2 y'3)
   = VolumeFailureSummaryProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default VolumeFailureSummaryProto where
  defaultValue = VolumeFailureSummaryProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire VolumeFailureSummaryProto where
  wireSize ft' self'@(VolumeFailureSummaryProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 9 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeReq 1 4 x'3)
  wirePut ft' self'@(VolumeFailureSummaryProto x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 9 x'1
             P'.wirePutReq 16 4 x'2
             P'.wirePutReq 24 4 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{failedStorageLocations = P'.append (failedStorageLocations old'Self) new'Field})
                    (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{lastVolumeFailureDate = new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{estimatedCapacityLostTotal = new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> VolumeFailureSummaryProto) VolumeFailureSummaryProto where
  getVal m' f' = f' m'
 
instance P'.GPB VolumeFailureSummaryProto
 
instance P'.ReflectDescriptor VolumeFailureSummaryProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [16, 24]) (P'.fromDistinctAscList [10, 16, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.datanode.VolumeFailureSummaryProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DatanodeProtocolProtos\"], baseName = MName \"VolumeFailureSummaryProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DatanodeProtocolProtos\",\"VolumeFailureSummaryProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.VolumeFailureSummaryProto.failedStorageLocations\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"VolumeFailureSummaryProto\"], baseName' = FName \"failedStorageLocations\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.VolumeFailureSummaryProto.lastVolumeFailureDate\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"VolumeFailureSummaryProto\"], baseName' = FName \"lastVolumeFailureDate\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.datanode.VolumeFailureSummaryProto.estimatedCapacityLostTotal\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DatanodeProtocolProtos\",MName \"VolumeFailureSummaryProto\"], baseName' = FName \"estimatedCapacityLostTotal\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType VolumeFailureSummaryProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg VolumeFailureSummaryProto where
  textPut msg
   = do
       P'.tellT "failedStorageLocations" (failedStorageLocations msg)
       P'.tellT "lastVolumeFailureDate" (lastVolumeFailureDate msg)
       P'.tellT "estimatedCapacityLostTotal" (estimatedCapacityLostTotal msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'failedStorageLocations, parse'lastVolumeFailureDate, parse'estimatedCapacityLostTotal])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'failedStorageLocations
         = P'.try
            (do
               v <- P'.getT "failedStorageLocations"
               Prelude'.return (\ o -> o{failedStorageLocations = P'.append (failedStorageLocations o) v}))
        parse'lastVolumeFailureDate
         = P'.try
            (do
               v <- P'.getT "lastVolumeFailureDate"
               Prelude'.return (\ o -> o{lastVolumeFailureDate = v}))
        parse'estimatedCapacityLostTotal
         = P'.try
            (do
               v <- P'.getT "estimatedCapacityLostTotal"
               Prelude'.return (\ o -> o{estimatedCapacityLostTotal = v}))