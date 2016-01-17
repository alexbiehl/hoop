{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.QueueStatisticsProto (QueueStatisticsProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data QueueStatisticsProto = QueueStatisticsProto{numAppsSubmitted :: !(P'.Maybe P'.Int64), numAppsRunning :: !(P'.Maybe P'.Int64),
                                                 numAppsPending :: !(P'.Maybe P'.Int64), numAppsCompleted :: !(P'.Maybe P'.Int64),
                                                 numAppsKilled :: !(P'.Maybe P'.Int64), numAppsFailed :: !(P'.Maybe P'.Int64),
                                                 numActiveUsers :: !(P'.Maybe P'.Int64), availableMemoryMB :: !(P'.Maybe P'.Int64),
                                                 allocatedMemoryMB :: !(P'.Maybe P'.Int64), pendingMemoryMB :: !(P'.Maybe P'.Int64),
                                                 reservedMemoryMB :: !(P'.Maybe P'.Int64), availableVCores :: !(P'.Maybe P'.Int64),
                                                 allocatedVCores :: !(P'.Maybe P'.Int64), pendingVCores :: !(P'.Maybe P'.Int64),
                                                 reservedVCores :: !(P'.Maybe P'.Int64),
                                                 allocatedContainers :: !(P'.Maybe P'.Int64),
                                                 pendingContainers :: !(P'.Maybe P'.Int64),
                                                 reservedContainers :: !(P'.Maybe P'.Int64)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable QueueStatisticsProto where
  mergeAppend (QueueStatisticsProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18)
   (QueueStatisticsProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16 y'17 y'18)
   = QueueStatisticsProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)
      (P'.mergeAppend x'12 y'12)
      (P'.mergeAppend x'13 y'13)
      (P'.mergeAppend x'14 y'14)
      (P'.mergeAppend x'15 y'15)
      (P'.mergeAppend x'16 y'16)
      (P'.mergeAppend x'17 y'17)
      (P'.mergeAppend x'18 y'18)
 
instance P'.Default QueueStatisticsProto where
  defaultValue
   = QueueStatisticsProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire QueueStatisticsProto where
  wireSize ft' self'@(QueueStatisticsProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 3 x'1 + P'.wireSizeOpt 1 3 x'2 + P'.wireSizeOpt 1 3 x'3 + P'.wireSizeOpt 1 3 x'4 +
             P'.wireSizeOpt 1 3 x'5
             + P'.wireSizeOpt 1 3 x'6
             + P'.wireSizeOpt 1 3 x'7
             + P'.wireSizeOpt 1 3 x'8
             + P'.wireSizeOpt 1 3 x'9
             + P'.wireSizeOpt 1 3 x'10
             + P'.wireSizeOpt 1 3 x'11
             + P'.wireSizeOpt 1 3 x'12
             + P'.wireSizeOpt 1 3 x'13
             + P'.wireSizeOpt 1 3 x'14
             + P'.wireSizeOpt 1 3 x'15
             + P'.wireSizeOpt 2 3 x'16
             + P'.wireSizeOpt 2 3 x'17
             + P'.wireSizeOpt 2 3 x'18)
  wirePut ft' self'@(QueueStatisticsProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18)
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
             P'.wirePutOpt 24 3 x'3
             P'.wirePutOpt 32 3 x'4
             P'.wirePutOpt 40 3 x'5
             P'.wirePutOpt 48 3 x'6
             P'.wirePutOpt 56 3 x'7
             P'.wirePutOpt 64 3 x'8
             P'.wirePutOpt 72 3 x'9
             P'.wirePutOpt 80 3 x'10
             P'.wirePutOpt 88 3 x'11
             P'.wirePutOpt 96 3 x'12
             P'.wirePutOpt 104 3 x'13
             P'.wirePutOpt 112 3 x'14
             P'.wirePutOpt 120 3 x'15
             P'.wirePutOpt 128 3 x'16
             P'.wirePutOpt 136 3 x'17
             P'.wirePutOpt 144 3 x'18
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{numAppsSubmitted = Prelude'.Just new'Field}) (P'.wireGet 3)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{numAppsRunning = Prelude'.Just new'Field}) (P'.wireGet 3)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{numAppsPending = Prelude'.Just new'Field}) (P'.wireGet 3)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{numAppsCompleted = Prelude'.Just new'Field}) (P'.wireGet 3)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{numAppsKilled = Prelude'.Just new'Field}) (P'.wireGet 3)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{numAppsFailed = Prelude'.Just new'Field}) (P'.wireGet 3)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{numActiveUsers = Prelude'.Just new'Field}) (P'.wireGet 3)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{availableMemoryMB = Prelude'.Just new'Field}) (P'.wireGet 3)
             72 -> Prelude'.fmap (\ !new'Field -> old'Self{allocatedMemoryMB = Prelude'.Just new'Field}) (P'.wireGet 3)
             80 -> Prelude'.fmap (\ !new'Field -> old'Self{pendingMemoryMB = Prelude'.Just new'Field}) (P'.wireGet 3)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{reservedMemoryMB = Prelude'.Just new'Field}) (P'.wireGet 3)
             96 -> Prelude'.fmap (\ !new'Field -> old'Self{availableVCores = Prelude'.Just new'Field}) (P'.wireGet 3)
             104 -> Prelude'.fmap (\ !new'Field -> old'Self{allocatedVCores = Prelude'.Just new'Field}) (P'.wireGet 3)
             112 -> Prelude'.fmap (\ !new'Field -> old'Self{pendingVCores = Prelude'.Just new'Field}) (P'.wireGet 3)
             120 -> Prelude'.fmap (\ !new'Field -> old'Self{reservedVCores = Prelude'.Just new'Field}) (P'.wireGet 3)
             128 -> Prelude'.fmap (\ !new'Field -> old'Self{allocatedContainers = Prelude'.Just new'Field}) (P'.wireGet 3)
             136 -> Prelude'.fmap (\ !new'Field -> old'Self{pendingContainers = Prelude'.Just new'Field}) (P'.wireGet 3)
             144 -> Prelude'.fmap (\ !new'Field -> old'Self{reservedContainers = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> QueueStatisticsProto) QueueStatisticsProto where
  getVal m' f' = f' m'
 
instance P'.GPB QueueStatisticsProto
 
instance P'.ReflectDescriptor QueueStatisticsProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [])
      (P'.fromDistinctAscList [8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.QueueStatisticsProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"QueueStatisticsProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"QueueStatisticsProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.numAppsSubmitted\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"numAppsSubmitted\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.numAppsRunning\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"numAppsRunning\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.numAppsPending\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"numAppsPending\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.numAppsCompleted\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"numAppsCompleted\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.numAppsKilled\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"numAppsKilled\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.numAppsFailed\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"numAppsFailed\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.numActiveUsers\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"numActiveUsers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.availableMemoryMB\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"availableMemoryMB\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.allocatedMemoryMB\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"allocatedMemoryMB\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 72}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.pendingMemoryMB\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"pendingMemoryMB\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 80}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.reservedMemoryMB\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"reservedMemoryMB\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.availableVCores\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"availableVCores\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 96}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.allocatedVCores\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"allocatedVCores\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 104}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.pendingVCores\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"pendingVCores\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 112}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.reservedVCores\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"reservedVCores\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 120}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.allocatedContainers\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"allocatedContainers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 128}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.pendingContainers\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"pendingContainers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 17}, wireTag = WireTag {getWireTag = 136}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueStatisticsProto.reservedContainers\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueStatisticsProto\"], baseName' = FName \"reservedContainers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 18}, wireTag = WireTag {getWireTag = 144}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType QueueStatisticsProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg QueueStatisticsProto where
  textPut msg
   = do
       P'.tellT "numAppsSubmitted" (numAppsSubmitted msg)
       P'.tellT "numAppsRunning" (numAppsRunning msg)
       P'.tellT "numAppsPending" (numAppsPending msg)
       P'.tellT "numAppsCompleted" (numAppsCompleted msg)
       P'.tellT "numAppsKilled" (numAppsKilled msg)
       P'.tellT "numAppsFailed" (numAppsFailed msg)
       P'.tellT "numActiveUsers" (numActiveUsers msg)
       P'.tellT "availableMemoryMB" (availableMemoryMB msg)
       P'.tellT "allocatedMemoryMB" (allocatedMemoryMB msg)
       P'.tellT "pendingMemoryMB" (pendingMemoryMB msg)
       P'.tellT "reservedMemoryMB" (reservedMemoryMB msg)
       P'.tellT "availableVCores" (availableVCores msg)
       P'.tellT "allocatedVCores" (allocatedVCores msg)
       P'.tellT "pendingVCores" (pendingVCores msg)
       P'.tellT "reservedVCores" (reservedVCores msg)
       P'.tellT "allocatedContainers" (allocatedContainers msg)
       P'.tellT "pendingContainers" (pendingContainers msg)
       P'.tellT "reservedContainers" (reservedContainers msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'numAppsSubmitted, parse'numAppsRunning, parse'numAppsPending, parse'numAppsCompleted, parse'numAppsKilled,
                   parse'numAppsFailed, parse'numActiveUsers, parse'availableMemoryMB, parse'allocatedMemoryMB,
                   parse'pendingMemoryMB, parse'reservedMemoryMB, parse'availableVCores, parse'allocatedVCores, parse'pendingVCores,
                   parse'reservedVCores, parse'allocatedContainers, parse'pendingContainers, parse'reservedContainers])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'numAppsSubmitted
         = P'.try
            (do
               v <- P'.getT "numAppsSubmitted"
               Prelude'.return (\ o -> o{numAppsSubmitted = v}))
        parse'numAppsRunning
         = P'.try
            (do
               v <- P'.getT "numAppsRunning"
               Prelude'.return (\ o -> o{numAppsRunning = v}))
        parse'numAppsPending
         = P'.try
            (do
               v <- P'.getT "numAppsPending"
               Prelude'.return (\ o -> o{numAppsPending = v}))
        parse'numAppsCompleted
         = P'.try
            (do
               v <- P'.getT "numAppsCompleted"
               Prelude'.return (\ o -> o{numAppsCompleted = v}))
        parse'numAppsKilled
         = P'.try
            (do
               v <- P'.getT "numAppsKilled"
               Prelude'.return (\ o -> o{numAppsKilled = v}))
        parse'numAppsFailed
         = P'.try
            (do
               v <- P'.getT "numAppsFailed"
               Prelude'.return (\ o -> o{numAppsFailed = v}))
        parse'numActiveUsers
         = P'.try
            (do
               v <- P'.getT "numActiveUsers"
               Prelude'.return (\ o -> o{numActiveUsers = v}))
        parse'availableMemoryMB
         = P'.try
            (do
               v <- P'.getT "availableMemoryMB"
               Prelude'.return (\ o -> o{availableMemoryMB = v}))
        parse'allocatedMemoryMB
         = P'.try
            (do
               v <- P'.getT "allocatedMemoryMB"
               Prelude'.return (\ o -> o{allocatedMemoryMB = v}))
        parse'pendingMemoryMB
         = P'.try
            (do
               v <- P'.getT "pendingMemoryMB"
               Prelude'.return (\ o -> o{pendingMemoryMB = v}))
        parse'reservedMemoryMB
         = P'.try
            (do
               v <- P'.getT "reservedMemoryMB"
               Prelude'.return (\ o -> o{reservedMemoryMB = v}))
        parse'availableVCores
         = P'.try
            (do
               v <- P'.getT "availableVCores"
               Prelude'.return (\ o -> o{availableVCores = v}))
        parse'allocatedVCores
         = P'.try
            (do
               v <- P'.getT "allocatedVCores"
               Prelude'.return (\ o -> o{allocatedVCores = v}))
        parse'pendingVCores
         = P'.try
            (do
               v <- P'.getT "pendingVCores"
               Prelude'.return (\ o -> o{pendingVCores = v}))
        parse'reservedVCores
         = P'.try
            (do
               v <- P'.getT "reservedVCores"
               Prelude'.return (\ o -> o{reservedVCores = v}))
        parse'allocatedContainers
         = P'.try
            (do
               v <- P'.getT "allocatedContainers"
               Prelude'.return (\ o -> o{allocatedContainers = v}))
        parse'pendingContainers
         = P'.try
            (do
               v <- P'.getT "pendingContainers"
               Prelude'.return (\ o -> o{pendingContainers = v}))
        parse'reservedContainers
         = P'.try
            (do
               v <- P'.getT "reservedContainers"
               Prelude'.return (\ o -> o{reservedContainers = v}))