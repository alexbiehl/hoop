{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.ApplicationReportProto (ApplicationReportProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.SecurityProtos.TokenProto as SecurityProtos (TokenProto)
import qualified Hadoop.Protos.YarnProtos.ApplicationAttemptIdProto as YarnProtos (ApplicationAttemptIdProto)
import qualified Hadoop.Protos.YarnProtos.ApplicationIdProto as YarnProtos (ApplicationIdProto)
import qualified Hadoop.Protos.YarnProtos.ApplicationResourceUsageReportProto as YarnProtos (ApplicationResourceUsageReportProto)
import qualified Hadoop.Protos.YarnProtos.FinalApplicationStatusProto as YarnProtos (FinalApplicationStatusProto)
import qualified Hadoop.Protos.YarnProtos.LogAggregationStatusProto as YarnProtos (LogAggregationStatusProto)
import qualified Hadoop.Protos.YarnProtos.PriorityProto as YarnProtos (PriorityProto)
import qualified Hadoop.Protos.YarnProtos.YarnApplicationStateProto as YarnProtos (YarnApplicationStateProto)
 
data ApplicationReportProto = ApplicationReportProto{applicationId :: !(P'.Maybe YarnProtos.ApplicationIdProto),
                                                     user :: !(P'.Maybe P'.Utf8), queue :: !(P'.Maybe P'.Utf8),
                                                     name :: !(P'.Maybe P'.Utf8), host :: !(P'.Maybe P'.Utf8),
                                                     rpc_port :: !(P'.Maybe P'.Int32),
                                                     client_to_am_token :: !(P'.Maybe SecurityProtos.TokenProto),
                                                     yarn_application_state :: !(P'.Maybe YarnProtos.YarnApplicationStateProto),
                                                     trackingUrl :: !(P'.Maybe P'.Utf8), diagnostics :: !(P'.Maybe P'.Utf8),
                                                     startTime :: !(P'.Maybe P'.Int64), finishTime :: !(P'.Maybe P'.Int64),
                                                     final_application_status :: !(P'.Maybe YarnProtos.FinalApplicationStatusProto),
                                                     app_resource_Usage ::
                                                     !(P'.Maybe YarnProtos.ApplicationResourceUsageReportProto),
                                                     originalTrackingUrl :: !(P'.Maybe P'.Utf8),
                                                     currentApplicationAttemptId ::
                                                     !(P'.Maybe YarnProtos.ApplicationAttemptIdProto),
                                                     progress :: !(P'.Maybe P'.Float), applicationType :: !(P'.Maybe P'.Utf8),
                                                     am_rm_token :: !(P'.Maybe SecurityProtos.TokenProto),
                                                     applicationTags :: !(P'.Seq P'.Utf8),
                                                     log_aggregation_status :: !(P'.Maybe YarnProtos.LogAggregationStatusProto),
                                                     unmanaged_application :: !(P'.Maybe P'.Bool),
                                                     priority :: !(P'.Maybe YarnProtos.PriorityProto)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ApplicationReportProto where
  mergeAppend
   (ApplicationReportProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22
     x'23)
   (ApplicationReportProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16 y'17 y'18 y'19 y'20 y'21 y'22
     y'23)
   = ApplicationReportProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
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
      (P'.mergeAppend x'19 y'19)
      (P'.mergeAppend x'20 y'20)
      (P'.mergeAppend x'21 y'21)
      (P'.mergeAppend x'22 y'22)
      (P'.mergeAppend x'23 y'23)
 
instance P'.Default ApplicationReportProto where
  defaultValue
   = ApplicationReportProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just (P'.Utf8 (P'.pack "N/A")))
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
      (Prelude'.Just Prelude'.False)
      P'.defaultValue
 
instance P'.Wire ApplicationReportProto where
  wireSize ft'
   self'@(ApplicationReportProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21
           x'22 x'23)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeOpt 1 5 x'6
             + P'.wireSizeOpt 1 11 x'7
             + P'.wireSizeOpt 1 14 x'8
             + P'.wireSizeOpt 1 9 x'9
             + P'.wireSizeOpt 1 9 x'10
             + P'.wireSizeOpt 1 3 x'11
             + P'.wireSizeOpt 1 3 x'12
             + P'.wireSizeOpt 1 14 x'13
             + P'.wireSizeOpt 1 11 x'14
             + P'.wireSizeOpt 1 9 x'15
             + P'.wireSizeOpt 2 11 x'16
             + P'.wireSizeOpt 2 2 x'17
             + P'.wireSizeOpt 2 9 x'18
             + P'.wireSizeOpt 2 11 x'19
             + P'.wireSizeRep 2 9 x'20
             + P'.wireSizeOpt 2 14 x'21
             + P'.wireSizeOpt 2 8 x'22
             + P'.wireSizeOpt 2 11 x'23)
  wirePut ft'
   self'@(ApplicationReportProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21
           x'22 x'23)
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
             P'.wirePutOpt 34 9 x'4
             P'.wirePutOpt 42 9 x'5
             P'.wirePutOpt 48 5 x'6
             P'.wirePutOpt 58 11 x'7
             P'.wirePutOpt 64 14 x'8
             P'.wirePutOpt 74 9 x'9
             P'.wirePutOpt 82 9 x'10
             P'.wirePutOpt 88 3 x'11
             P'.wirePutOpt 96 3 x'12
             P'.wirePutOpt 104 14 x'13
             P'.wirePutOpt 114 11 x'14
             P'.wirePutOpt 122 9 x'15
             P'.wirePutOpt 130 11 x'16
             P'.wirePutOpt 141 2 x'17
             P'.wirePutOpt 146 9 x'18
             P'.wirePutOpt 154 11 x'19
             P'.wirePutRep 162 9 x'20
             P'.wirePutOpt 168 14 x'21
             P'.wirePutOpt 176 8 x'22
             P'.wirePutOpt 186 11 x'23
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{applicationId = P'.mergeAppend (applicationId old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{user = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{queue = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{name = Prelude'.Just new'Field}) (P'.wireGet 9)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{host = Prelude'.Just new'Field}) (P'.wireGet 9)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{rpc_port = Prelude'.Just new'Field}) (P'.wireGet 5)
             58 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{client_to_am_token = P'.mergeAppend (client_to_am_token old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{yarn_application_state = Prelude'.Just new'Field}) (P'.wireGet 14)
             74 -> Prelude'.fmap (\ !new'Field -> old'Self{trackingUrl = Prelude'.Just new'Field}) (P'.wireGet 9)
             82 -> Prelude'.fmap (\ !new'Field -> old'Self{diagnostics = Prelude'.Just new'Field}) (P'.wireGet 9)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{startTime = Prelude'.Just new'Field}) (P'.wireGet 3)
             96 -> Prelude'.fmap (\ !new'Field -> old'Self{finishTime = Prelude'.Just new'Field}) (P'.wireGet 3)
             104 -> Prelude'.fmap (\ !new'Field -> old'Self{final_application_status = Prelude'.Just new'Field}) (P'.wireGet 14)
             114 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{app_resource_Usage = P'.mergeAppend (app_resource_Usage old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             122 -> Prelude'.fmap (\ !new'Field -> old'Self{originalTrackingUrl = Prelude'.Just new'Field}) (P'.wireGet 9)
             130 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{currentApplicationAttemptId =
                                 P'.mergeAppend (currentApplicationAttemptId old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             141 -> Prelude'.fmap (\ !new'Field -> old'Self{progress = Prelude'.Just new'Field}) (P'.wireGet 2)
             146 -> Prelude'.fmap (\ !new'Field -> old'Self{applicationType = Prelude'.Just new'Field}) (P'.wireGet 9)
             154 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{am_rm_token = P'.mergeAppend (am_rm_token old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             162 -> Prelude'.fmap (\ !new'Field -> old'Self{applicationTags = P'.append (applicationTags old'Self) new'Field})
                     (P'.wireGet 9)
             168 -> Prelude'.fmap (\ !new'Field -> old'Self{log_aggregation_status = Prelude'.Just new'Field}) (P'.wireGet 14)
             176 -> Prelude'.fmap (\ !new'Field -> old'Self{unmanaged_application = Prelude'.Just new'Field}) (P'.wireGet 8)
             186 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{priority = P'.mergeAppend (priority old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ApplicationReportProto) ApplicationReportProto where
  getVal m' f' = f' m'
 
instance P'.GPB ApplicationReportProto
 
instance P'.ReflectDescriptor ApplicationReportProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [])
      (P'.fromDistinctAscList
        [10, 18, 26, 34, 42, 48, 58, 64, 74, 82, 88, 96, 104, 114, 122, 130, 141, 146, 154, 162, 168, 176, 186])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationReportProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationReportProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"ApplicationReportProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.applicationId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"applicationId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.user\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"user\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.queue\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"queue\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.name\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.host\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"host\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.rpc_port\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"rpc_port\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.client_to_am_token\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"client_to_am_token\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.TokenProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"SecurityProtos\"], baseName = MName \"TokenProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.yarn_application_state\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"yarn_application_state\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.YarnApplicationStateProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"YarnApplicationStateProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.trackingUrl\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"trackingUrl\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.diagnostics\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"diagnostics\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Just \"N/A\", hsDefault = Just (HsDef'ByteString \"N/A\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.startTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"startTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.finishTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"finishTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 96}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.final_application_status\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"final_application_status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 104}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.FinalApplicationStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"FinalApplicationStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.app_resource_Usage\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"app_resource_Usage\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 114}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationResourceUsageReportProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationResourceUsageReportProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.originalTrackingUrl\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"originalTrackingUrl\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 122}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.currentApplicationAttemptId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"currentApplicationAttemptId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 130}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationAttemptIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationAttemptIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.progress\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"progress\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 17}, wireTag = WireTag {getWireTag = 141}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 2}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.applicationType\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"applicationType\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 18}, wireTag = WireTag {getWireTag = 146}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.am_rm_token\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"am_rm_token\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 19}, wireTag = WireTag {getWireTag = 154}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.TokenProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"SecurityProtos\"], baseName = MName \"TokenProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.applicationTags\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"applicationTags\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 20}, wireTag = WireTag {getWireTag = 162}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.log_aggregation_status\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"log_aggregation_status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 21}, wireTag = WireTag {getWireTag = 168}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.LogAggregationStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"LogAggregationStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.unmanaged_application\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"unmanaged_application\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 22}, wireTag = WireTag {getWireTag = 176}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ApplicationReportProto.priority\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"ApplicationReportProto\"], baseName' = FName \"priority\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 23}, wireTag = WireTag {getWireTag = 186}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.PriorityProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"PriorityProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ApplicationReportProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ApplicationReportProto where
  textPut msg
   = do
       P'.tellT "applicationId" (applicationId msg)
       P'.tellT "user" (user msg)
       P'.tellT "queue" (queue msg)
       P'.tellT "name" (name msg)
       P'.tellT "host" (host msg)
       P'.tellT "rpc_port" (rpc_port msg)
       P'.tellT "client_to_am_token" (client_to_am_token msg)
       P'.tellT "yarn_application_state" (yarn_application_state msg)
       P'.tellT "trackingUrl" (trackingUrl msg)
       P'.tellT "diagnostics" (diagnostics msg)
       P'.tellT "startTime" (startTime msg)
       P'.tellT "finishTime" (finishTime msg)
       P'.tellT "final_application_status" (final_application_status msg)
       P'.tellT "app_resource_Usage" (app_resource_Usage msg)
       P'.tellT "originalTrackingUrl" (originalTrackingUrl msg)
       P'.tellT "currentApplicationAttemptId" (currentApplicationAttemptId msg)
       P'.tellT "progress" (progress msg)
       P'.tellT "applicationType" (applicationType msg)
       P'.tellT "am_rm_token" (am_rm_token msg)
       P'.tellT "applicationTags" (applicationTags msg)
       P'.tellT "log_aggregation_status" (log_aggregation_status msg)
       P'.tellT "unmanaged_application" (unmanaged_application msg)
       P'.tellT "priority" (priority msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'applicationId, parse'user, parse'queue, parse'name, parse'host, parse'rpc_port, parse'client_to_am_token,
                   parse'yarn_application_state, parse'trackingUrl, parse'diagnostics, parse'startTime, parse'finishTime,
                   parse'final_application_status, parse'app_resource_Usage, parse'originalTrackingUrl,
                   parse'currentApplicationAttemptId, parse'progress, parse'applicationType, parse'am_rm_token,
                   parse'applicationTags, parse'log_aggregation_status, parse'unmanaged_application, parse'priority])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'applicationId
         = P'.try
            (do
               v <- P'.getT "applicationId"
               Prelude'.return (\ o -> o{applicationId = v}))
        parse'user
         = P'.try
            (do
               v <- P'.getT "user"
               Prelude'.return (\ o -> o{user = v}))
        parse'queue
         = P'.try
            (do
               v <- P'.getT "queue"
               Prelude'.return (\ o -> o{queue = v}))
        parse'name
         = P'.try
            (do
               v <- P'.getT "name"
               Prelude'.return (\ o -> o{name = v}))
        parse'host
         = P'.try
            (do
               v <- P'.getT "host"
               Prelude'.return (\ o -> o{host = v}))
        parse'rpc_port
         = P'.try
            (do
               v <- P'.getT "rpc_port"
               Prelude'.return (\ o -> o{rpc_port = v}))
        parse'client_to_am_token
         = P'.try
            (do
               v <- P'.getT "client_to_am_token"
               Prelude'.return (\ o -> o{client_to_am_token = v}))
        parse'yarn_application_state
         = P'.try
            (do
               v <- P'.getT "yarn_application_state"
               Prelude'.return (\ o -> o{yarn_application_state = v}))
        parse'trackingUrl
         = P'.try
            (do
               v <- P'.getT "trackingUrl"
               Prelude'.return (\ o -> o{trackingUrl = v}))
        parse'diagnostics
         = P'.try
            (do
               v <- P'.getT "diagnostics"
               Prelude'.return (\ o -> o{diagnostics = v}))
        parse'startTime
         = P'.try
            (do
               v <- P'.getT "startTime"
               Prelude'.return (\ o -> o{startTime = v}))
        parse'finishTime
         = P'.try
            (do
               v <- P'.getT "finishTime"
               Prelude'.return (\ o -> o{finishTime = v}))
        parse'final_application_status
         = P'.try
            (do
               v <- P'.getT "final_application_status"
               Prelude'.return (\ o -> o{final_application_status = v}))
        parse'app_resource_Usage
         = P'.try
            (do
               v <- P'.getT "app_resource_Usage"
               Prelude'.return (\ o -> o{app_resource_Usage = v}))
        parse'originalTrackingUrl
         = P'.try
            (do
               v <- P'.getT "originalTrackingUrl"
               Prelude'.return (\ o -> o{originalTrackingUrl = v}))
        parse'currentApplicationAttemptId
         = P'.try
            (do
               v <- P'.getT "currentApplicationAttemptId"
               Prelude'.return (\ o -> o{currentApplicationAttemptId = v}))
        parse'progress
         = P'.try
            (do
               v <- P'.getT "progress"
               Prelude'.return (\ o -> o{progress = v}))
        parse'applicationType
         = P'.try
            (do
               v <- P'.getT "applicationType"
               Prelude'.return (\ o -> o{applicationType = v}))
        parse'am_rm_token
         = P'.try
            (do
               v <- P'.getT "am_rm_token"
               Prelude'.return (\ o -> o{am_rm_token = v}))
        parse'applicationTags
         = P'.try
            (do
               v <- P'.getT "applicationTags"
               Prelude'.return (\ o -> o{applicationTags = P'.append (applicationTags o) v}))
        parse'log_aggregation_status
         = P'.try
            (do
               v <- P'.getT "log_aggregation_status"
               Prelude'.return (\ o -> o{log_aggregation_status = v}))
        parse'unmanaged_application
         = P'.try
            (do
               v <- P'.getT "unmanaged_application"
               Prelude'.return (\ o -> o{unmanaged_application = v}))
        parse'priority
         = P'.try
            (do
               v <- P'.getT "priority"
               Prelude'.return (\ o -> o{priority = v}))