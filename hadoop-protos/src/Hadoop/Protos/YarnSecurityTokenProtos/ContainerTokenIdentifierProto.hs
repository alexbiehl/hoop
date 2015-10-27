{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnSecurityTokenProtos.ContainerTokenIdentifierProto (ContainerTokenIdentifierProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ContainerIdProto as YarnProtos (ContainerIdProto)
import qualified Hadoop.Protos.YarnProtos.ContainerTypeProto as YarnProtos (ContainerTypeProto)
import qualified Hadoop.Protos.YarnProtos.LogAggregationContextProto as YarnProtos (LogAggregationContextProto)
import qualified Hadoop.Protos.YarnProtos.PriorityProto as YarnProtos (PriorityProto)
import qualified Hadoop.Protos.YarnProtos.ResourceProto as YarnProtos (ResourceProto)
 
data ContainerTokenIdentifierProto = ContainerTokenIdentifierProto{containerId :: !(P'.Maybe YarnProtos.ContainerIdProto),
                                                                   nmHostAddr :: !(P'.Maybe P'.Utf8),
                                                                   appSubmitter :: !(P'.Maybe P'.Utf8),
                                                                   resource :: !(P'.Maybe YarnProtos.ResourceProto),
                                                                   expiryTimeStamp :: !(P'.Maybe P'.Int64),
                                                                   masterKeyId :: !(P'.Maybe P'.Int32),
                                                                   rmIdentifier :: !(P'.Maybe P'.Int64),
                                                                   priority :: !(P'.Maybe YarnProtos.PriorityProto),
                                                                   creationTime :: !(P'.Maybe P'.Int64),
                                                                   logAggregationContext ::
                                                                   !(P'.Maybe YarnProtos.LogAggregationContextProto),
                                                                   nodeLabelExpression :: !(P'.Maybe P'.Utf8),
                                                                   containerType :: !(P'.Maybe YarnProtos.ContainerTypeProto)}
                                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ContainerTokenIdentifierProto where
  mergeAppend (ContainerTokenIdentifierProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
   (ContainerTokenIdentifierProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12)
   = ContainerTokenIdentifierProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)
      (P'.mergeAppend x'12 y'12)
 
instance P'.Default ContainerTokenIdentifierProto where
  defaultValue
   = ContainerTokenIdentifierProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      (Prelude'.Just (-1))
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire ContainerTokenIdentifierProto where
  wireSize ft' self'@(ContainerTokenIdentifierProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 3 x'5
             + P'.wireSizeOpt 1 5 x'6
             + P'.wireSizeOpt 1 3 x'7
             + P'.wireSizeOpt 1 11 x'8
             + P'.wireSizeOpt 1 3 x'9
             + P'.wireSizeOpt 1 11 x'10
             + P'.wireSizeOpt 1 9 x'11
             + P'.wireSizeOpt 1 14 x'12)
  wirePut ft' self'@(ContainerTokenIdentifierProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 11 x'1
             P'.wirePutOpt 18 9 x'2
             P'.wirePutOpt 26 9 x'3
             P'.wirePutOpt 34 11 x'4
             P'.wirePutOpt 40 3 x'5
             P'.wirePutOpt 48 5 x'6
             P'.wirePutOpt 56 3 x'7
             P'.wirePutOpt 66 11 x'8
             P'.wirePutOpt 72 3 x'9
             P'.wirePutOpt 82 11 x'10
             P'.wirePutOpt 90 9 x'11
             P'.wirePutOpt 96 14 x'12
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{containerId = P'.mergeAppend (containerId old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{nmHostAddr = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{appSubmitter = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{resource = P'.mergeAppend (resource old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{expiryTimeStamp = Prelude'.Just new'Field}) (P'.wireGet 3)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{masterKeyId = Prelude'.Just new'Field}) (P'.wireGet 5)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{rmIdentifier = Prelude'.Just new'Field}) (P'.wireGet 3)
             66 -> Prelude'.fmap (\ !new'Field -> old'Self{priority = P'.mergeAppend (priority old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             72 -> Prelude'.fmap (\ !new'Field -> old'Self{creationTime = Prelude'.Just new'Field}) (P'.wireGet 3)
             82 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{logAggregationContext = P'.mergeAppend (logAggregationContext old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             90 -> Prelude'.fmap (\ !new'Field -> old'Self{nodeLabelExpression = Prelude'.Just new'Field}) (P'.wireGet 9)
             96 -> Prelude'.fmap (\ !new'Field -> old'Self{containerType = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ContainerTokenIdentifierProto) ContainerTokenIdentifierProto where
  getVal m' f' = f' m'
 
instance P'.GPB ContainerTokenIdentifierProto
 
instance P'.ReflectDescriptor ContainerTokenIdentifierProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 40, 48, 56, 66, 72, 82, 90, 96])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ContainerTokenIdentifierProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnSecurityTokenProtos\"], baseName = MName \"ContainerTokenIdentifierProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnSecurityTokenProtos\",\"ContainerTokenIdentifierProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerTokenIdentifierProto.containerId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"ContainerTokenIdentifierProto\"], baseName' = FName \"containerId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerTokenIdentifierProto.nmHostAddr\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"ContainerTokenIdentifierProto\"], baseName' = FName \"nmHostAddr\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerTokenIdentifierProto.appSubmitter\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"ContainerTokenIdentifierProto\"], baseName' = FName \"appSubmitter\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerTokenIdentifierProto.resource\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"ContainerTokenIdentifierProto\"], baseName' = FName \"resource\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ResourceProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerTokenIdentifierProto.expiryTimeStamp\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"ContainerTokenIdentifierProto\"], baseName' = FName \"expiryTimeStamp\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerTokenIdentifierProto.masterKeyId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"ContainerTokenIdentifierProto\"], baseName' = FName \"masterKeyId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Just \"-1\", hsDefault = Just (HsDef'Integer (-1))},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerTokenIdentifierProto.rmIdentifier\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"ContainerTokenIdentifierProto\"], baseName' = FName \"rmIdentifier\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerTokenIdentifierProto.priority\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"ContainerTokenIdentifierProto\"], baseName' = FName \"priority\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.PriorityProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"PriorityProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerTokenIdentifierProto.creationTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"ContainerTokenIdentifierProto\"], baseName' = FName \"creationTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 72}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerTokenIdentifierProto.logAggregationContext\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"ContainerTokenIdentifierProto\"], baseName' = FName \"logAggregationContext\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.LogAggregationContextProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"LogAggregationContextProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerTokenIdentifierProto.nodeLabelExpression\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"ContainerTokenIdentifierProto\"], baseName' = FName \"nodeLabelExpression\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerTokenIdentifierProto.containerType\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"ContainerTokenIdentifierProto\"], baseName' = FName \"containerType\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 96}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerTypeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerTypeProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ContainerTokenIdentifierProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ContainerTokenIdentifierProto where
  textPut msg
   = do
       P'.tellT "containerId" (containerId msg)
       P'.tellT "nmHostAddr" (nmHostAddr msg)
       P'.tellT "appSubmitter" (appSubmitter msg)
       P'.tellT "resource" (resource msg)
       P'.tellT "expiryTimeStamp" (expiryTimeStamp msg)
       P'.tellT "masterKeyId" (masterKeyId msg)
       P'.tellT "rmIdentifier" (rmIdentifier msg)
       P'.tellT "priority" (priority msg)
       P'.tellT "creationTime" (creationTime msg)
       P'.tellT "logAggregationContext" (logAggregationContext msg)
       P'.tellT "nodeLabelExpression" (nodeLabelExpression msg)
       P'.tellT "containerType" (containerType msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'containerId, parse'nmHostAddr, parse'appSubmitter, parse'resource, parse'expiryTimeStamp,
                   parse'masterKeyId, parse'rmIdentifier, parse'priority, parse'creationTime, parse'logAggregationContext,
                   parse'nodeLabelExpression, parse'containerType])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'containerId
         = P'.try
            (do
               v <- P'.getT "containerId"
               Prelude'.return (\ o -> o{containerId = v}))
        parse'nmHostAddr
         = P'.try
            (do
               v <- P'.getT "nmHostAddr"
               Prelude'.return (\ o -> o{nmHostAddr = v}))
        parse'appSubmitter
         = P'.try
            (do
               v <- P'.getT "appSubmitter"
               Prelude'.return (\ o -> o{appSubmitter = v}))
        parse'resource
         = P'.try
            (do
               v <- P'.getT "resource"
               Prelude'.return (\ o -> o{resource = v}))
        parse'expiryTimeStamp
         = P'.try
            (do
               v <- P'.getT "expiryTimeStamp"
               Prelude'.return (\ o -> o{expiryTimeStamp = v}))
        parse'masterKeyId
         = P'.try
            (do
               v <- P'.getT "masterKeyId"
               Prelude'.return (\ o -> o{masterKeyId = v}))
        parse'rmIdentifier
         = P'.try
            (do
               v <- P'.getT "rmIdentifier"
               Prelude'.return (\ o -> o{rmIdentifier = v}))
        parse'priority
         = P'.try
            (do
               v <- P'.getT "priority"
               Prelude'.return (\ o -> o{priority = v}))
        parse'creationTime
         = P'.try
            (do
               v <- P'.getT "creationTime"
               Prelude'.return (\ o -> o{creationTime = v}))
        parse'logAggregationContext
         = P'.try
            (do
               v <- P'.getT "logAggregationContext"
               Prelude'.return (\ o -> o{logAggregationContext = v}))
        parse'nodeLabelExpression
         = P'.try
            (do
               v <- P'.getT "nodeLabelExpression"
               Prelude'.return (\ o -> o{nodeLabelExpression = v}))
        parse'containerType
         = P'.try
            (do
               v <- P'.getT "containerType"
               Prelude'.return (\ o -> o{containerType = v}))