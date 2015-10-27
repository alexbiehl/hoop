{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.QueueInfoProto (QueueInfoProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationReportProto as YarnProtos (ApplicationReportProto)
import qualified Hadoop.Protos.YarnProtos.QueueStateProto as YarnProtos (QueueStateProto)
import qualified Hadoop.Protos.YarnProtos.QueueStatisticsProto as YarnProtos (QueueStatisticsProto)
 
data QueueInfoProto = QueueInfoProto{queueName :: !(P'.Maybe P'.Utf8), capacity :: !(P'.Maybe P'.Float),
                                     maximumCapacity :: !(P'.Maybe P'.Float), currentCapacity :: !(P'.Maybe P'.Float),
                                     state :: !(P'.Maybe YarnProtos.QueueStateProto), childQueues :: !(P'.Seq QueueInfoProto),
                                     applications :: !(P'.Seq YarnProtos.ApplicationReportProto),
                                     accessibleNodeLabels :: !(P'.Seq P'.Utf8), defaultNodeLabelExpression :: !(P'.Maybe P'.Utf8),
                                     queueStatistics :: !(P'.Maybe YarnProtos.QueueStatisticsProto)}
                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable QueueInfoProto where
  mergeAppend (QueueInfoProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10) (QueueInfoProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10)
   = QueueInfoProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
 
instance P'.Default QueueInfoProto where
  defaultValue
   = QueueInfoProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire QueueInfoProto where
  wireSize ft' self'@(QueueInfoProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 2 x'2 + P'.wireSizeOpt 1 2 x'3 + P'.wireSizeOpt 1 2 x'4 +
             P'.wireSizeOpt 1 14 x'5
             + P'.wireSizeRep 1 11 x'6
             + P'.wireSizeRep 1 11 x'7
             + P'.wireSizeRep 1 9 x'8
             + P'.wireSizeOpt 1 9 x'9
             + P'.wireSizeOpt 1 11 x'10)
  wirePut ft' self'@(QueueInfoProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 9 x'1
             P'.wirePutOpt 21 2 x'2
             P'.wirePutOpt 29 2 x'3
             P'.wirePutOpt 37 2 x'4
             P'.wirePutOpt 40 14 x'5
             P'.wirePutRep 50 11 x'6
             P'.wirePutRep 58 11 x'7
             P'.wirePutRep 66 9 x'8
             P'.wirePutOpt 74 9 x'9
             P'.wirePutOpt 82 11 x'10
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{queueName = Prelude'.Just new'Field}) (P'.wireGet 9)
             21 -> Prelude'.fmap (\ !new'Field -> old'Self{capacity = Prelude'.Just new'Field}) (P'.wireGet 2)
             29 -> Prelude'.fmap (\ !new'Field -> old'Self{maximumCapacity = Prelude'.Just new'Field}) (P'.wireGet 2)
             37 -> Prelude'.fmap (\ !new'Field -> old'Self{currentCapacity = Prelude'.Just new'Field}) (P'.wireGet 2)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{state = Prelude'.Just new'Field}) (P'.wireGet 14)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{childQueues = P'.append (childQueues old'Self) new'Field})
                    (P'.wireGet 11)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{applications = P'.append (applications old'Self) new'Field})
                    (P'.wireGet 11)
             66 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{accessibleNodeLabels = P'.append (accessibleNodeLabels old'Self) new'Field})
                    (P'.wireGet 9)
             74 -> Prelude'.fmap (\ !new'Field -> old'Self{defaultNodeLabelExpression = Prelude'.Just new'Field}) (P'.wireGet 9)
             82 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{queueStatistics = P'.mergeAppend (queueStatistics old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> QueueInfoProto) QueueInfoProto where
  getVal m' f' = f' m'
 
instance P'.GPB QueueInfoProto
 
instance P'.ReflectDescriptor QueueInfoProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 21, 29, 37, 40, 50, 58, 66, 74, 82])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.QueueInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"QueueInfoProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"QueueInfoProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueInfoProto.queueName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueInfoProto\"], baseName' = FName \"queueName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueInfoProto.capacity\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueInfoProto\"], baseName' = FName \"capacity\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 21}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 2}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueInfoProto.maximumCapacity\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueInfoProto\"], baseName' = FName \"maximumCapacity\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 29}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 2}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueInfoProto.currentCapacity\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueInfoProto\"], baseName' = FName \"currentCapacity\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 37}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 2}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueInfoProto.state\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueInfoProto\"], baseName' = FName \"state\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.QueueStateProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"QueueStateProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueInfoProto.childQueues\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueInfoProto\"], baseName' = FName \"childQueues\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.QueueInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"QueueInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueInfoProto.applications\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueInfoProto\"], baseName' = FName \"applications\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationReportProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationReportProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueInfoProto.accessibleNodeLabels\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueInfoProto\"], baseName' = FName \"accessibleNodeLabels\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueInfoProto.defaultNodeLabelExpression\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueInfoProto\"], baseName' = FName \"defaultNodeLabelExpression\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.QueueInfoProto.queueStatistics\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"QueueInfoProto\"], baseName' = FName \"queueStatistics\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.QueueStatisticsProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"QueueStatisticsProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType QueueInfoProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg QueueInfoProto where
  textPut msg
   = do
       P'.tellT "queueName" (queueName msg)
       P'.tellT "capacity" (capacity msg)
       P'.tellT "maximumCapacity" (maximumCapacity msg)
       P'.tellT "currentCapacity" (currentCapacity msg)
       P'.tellT "state" (state msg)
       P'.tellT "childQueues" (childQueues msg)
       P'.tellT "applications" (applications msg)
       P'.tellT "accessibleNodeLabels" (accessibleNodeLabels msg)
       P'.tellT "defaultNodeLabelExpression" (defaultNodeLabelExpression msg)
       P'.tellT "queueStatistics" (queueStatistics msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'queueName, parse'capacity, parse'maximumCapacity, parse'currentCapacity, parse'state, parse'childQueues,
                   parse'applications, parse'accessibleNodeLabels, parse'defaultNodeLabelExpression, parse'queueStatistics])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'queueName
         = P'.try
            (do
               v <- P'.getT "queueName"
               Prelude'.return (\ o -> o{queueName = v}))
        parse'capacity
         = P'.try
            (do
               v <- P'.getT "capacity"
               Prelude'.return (\ o -> o{capacity = v}))
        parse'maximumCapacity
         = P'.try
            (do
               v <- P'.getT "maximumCapacity"
               Prelude'.return (\ o -> o{maximumCapacity = v}))
        parse'currentCapacity
         = P'.try
            (do
               v <- P'.getT "currentCapacity"
               Prelude'.return (\ o -> o{currentCapacity = v}))
        parse'state
         = P'.try
            (do
               v <- P'.getT "state"
               Prelude'.return (\ o -> o{state = v}))
        parse'childQueues
         = P'.try
            (do
               v <- P'.getT "childQueues"
               Prelude'.return (\ o -> o{childQueues = P'.append (childQueues o) v}))
        parse'applications
         = P'.try
            (do
               v <- P'.getT "applications"
               Prelude'.return (\ o -> o{applications = P'.append (applications o) v}))
        parse'accessibleNodeLabels
         = P'.try
            (do
               v <- P'.getT "accessibleNodeLabels"
               Prelude'.return (\ o -> o{accessibleNodeLabels = P'.append (accessibleNodeLabels o) v}))
        parse'defaultNodeLabelExpression
         = P'.try
            (do
               v <- P'.getT "defaultNodeLabelExpression"
               Prelude'.return (\ o -> o{defaultNodeLabelExpression = v}))
        parse'queueStatistics
         = P'.try
            (do
               v <- P'.getT "queueStatistics"
               Prelude'.return (\ o -> o{queueStatistics = v}))