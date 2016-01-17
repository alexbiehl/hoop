{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.GetApplicationsRequestProto (GetApplicationsRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.YarnApplicationStateProto as YarnProtos (YarnApplicationStateProto)
import qualified Hadoop.Protos.YarnServiceProtos.ApplicationsRequestScopeProto as YarnServiceProtos (ApplicationsRequestScopeProto)
 
data GetApplicationsRequestProto = GetApplicationsRequestProto{application_types :: !(P'.Seq P'.Utf8),
                                                               application_states :: !(P'.Seq YarnProtos.YarnApplicationStateProto),
                                                               users :: !(P'.Seq P'.Utf8), queues :: !(P'.Seq P'.Utf8),
                                                               limit :: !(P'.Maybe P'.Int64), start_begin :: !(P'.Maybe P'.Int64),
                                                               start_end :: !(P'.Maybe P'.Int64),
                                                               finish_begin :: !(P'.Maybe P'.Int64),
                                                               finish_end :: !(P'.Maybe P'.Int64),
                                                               applicationTags :: !(P'.Seq P'.Utf8),
                                                               scope :: !(P'.Maybe YarnServiceProtos.ApplicationsRequestScopeProto)}
                                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetApplicationsRequestProto where
  mergeAppend (GetApplicationsRequestProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11)
   (GetApplicationsRequestProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11)
   = GetApplicationsRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)
 
instance P'.Default GetApplicationsRequestProto where
  defaultValue
   = GetApplicationsRequestProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just (Prelude'.read "ALL"))
 
instance P'.Wire GetApplicationsRequestProto where
  wireSize ft' self'@(GetApplicationsRequestProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeRep 1 9 x'1 + P'.wireSizeRep 1 14 x'2 + P'.wireSizeRep 1 9 x'3 + P'.wireSizeRep 1 9 x'4 +
             P'.wireSizeOpt 1 3 x'5
             + P'.wireSizeOpt 1 3 x'6
             + P'.wireSizeOpt 1 3 x'7
             + P'.wireSizeOpt 1 3 x'8
             + P'.wireSizeOpt 1 3 x'9
             + P'.wireSizeRep 1 9 x'10
             + P'.wireSizeOpt 1 14 x'11)
  wirePut ft' self'@(GetApplicationsRequestProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11)
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
             P'.wirePutRep 16 14 x'2
             P'.wirePutRep 26 9 x'3
             P'.wirePutRep 34 9 x'4
             P'.wirePutOpt 40 3 x'5
             P'.wirePutOpt 48 3 x'6
             P'.wirePutOpt 56 3 x'7
             P'.wirePutOpt 64 3 x'8
             P'.wirePutOpt 72 3 x'9
             P'.wirePutRep 82 9 x'10
             P'.wirePutOpt 88 14 x'11
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{application_types = P'.append (application_types old'Self) new'Field})
                    (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{application_states = P'.append (application_states old'Self) new'Field})
                    (P'.wireGet 14)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{application_states = P'.mergeAppend (application_states old'Self) new'Field})
                    (P'.wireGetPacked 14)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{users = P'.append (users old'Self) new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{queues = P'.append (queues old'Self) new'Field}) (P'.wireGet 9)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{limit = Prelude'.Just new'Field}) (P'.wireGet 3)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{start_begin = Prelude'.Just new'Field}) (P'.wireGet 3)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{start_end = Prelude'.Just new'Field}) (P'.wireGet 3)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{finish_begin = Prelude'.Just new'Field}) (P'.wireGet 3)
             72 -> Prelude'.fmap (\ !new'Field -> old'Self{finish_end = Prelude'.Just new'Field}) (P'.wireGet 3)
             82 -> Prelude'.fmap (\ !new'Field -> old'Self{applicationTags = P'.append (applicationTags old'Self) new'Field})
                    (P'.wireGet 9)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{scope = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetApplicationsRequestProto) GetApplicationsRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetApplicationsRequestProto
 
instance P'.ReflectDescriptor GetApplicationsRequestProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16, 18, 26, 34, 40, 48, 56, 64, 72, 82, 88])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.GetApplicationsRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"GetApplicationsRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"GetApplicationsRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetApplicationsRequestProto.application_types\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetApplicationsRequestProto\"], baseName' = FName \"application_types\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetApplicationsRequestProto.application_states\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetApplicationsRequestProto\"], baseName' = FName \"application_states\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Just (WireTag {getWireTag = 16},WireTag {getWireTag = 18}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.YarnApplicationStateProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"YarnApplicationStateProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetApplicationsRequestProto.users\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetApplicationsRequestProto\"], baseName' = FName \"users\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetApplicationsRequestProto.queues\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetApplicationsRequestProto\"], baseName' = FName \"queues\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetApplicationsRequestProto.limit\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetApplicationsRequestProto\"], baseName' = FName \"limit\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetApplicationsRequestProto.start_begin\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetApplicationsRequestProto\"], baseName' = FName \"start_begin\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetApplicationsRequestProto.start_end\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetApplicationsRequestProto\"], baseName' = FName \"start_end\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetApplicationsRequestProto.finish_begin\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetApplicationsRequestProto\"], baseName' = FName \"finish_begin\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetApplicationsRequestProto.finish_end\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetApplicationsRequestProto\"], baseName' = FName \"finish_end\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 72}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetApplicationsRequestProto.applicationTags\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetApplicationsRequestProto\"], baseName' = FName \"applicationTags\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetApplicationsRequestProto.scope\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetApplicationsRequestProto\"], baseName' = FName \"scope\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationsRequestScopeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"ApplicationsRequestScopeProto\"}), hsRawDefault = Just \"ALL\", hsDefault = Just (HsDef'Enum \"ALL\")}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetApplicationsRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetApplicationsRequestProto where
  textPut msg
   = do
       P'.tellT "application_types" (application_types msg)
       P'.tellT "application_states" (application_states msg)
       P'.tellT "users" (users msg)
       P'.tellT "queues" (queues msg)
       P'.tellT "limit" (limit msg)
       P'.tellT "start_begin" (start_begin msg)
       P'.tellT "start_end" (start_end msg)
       P'.tellT "finish_begin" (finish_begin msg)
       P'.tellT "finish_end" (finish_end msg)
       P'.tellT "applicationTags" (applicationTags msg)
       P'.tellT "scope" (scope msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'application_types, parse'application_states, parse'users, parse'queues, parse'limit, parse'start_begin,
                   parse'start_end, parse'finish_begin, parse'finish_end, parse'applicationTags, parse'scope])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'application_types
         = P'.try
            (do
               v <- P'.getT "application_types"
               Prelude'.return (\ o -> o{application_types = P'.append (application_types o) v}))
        parse'application_states
         = P'.try
            (do
               v <- P'.getT "application_states"
               Prelude'.return (\ o -> o{application_states = P'.append (application_states o) v}))
        parse'users
         = P'.try
            (do
               v <- P'.getT "users"
               Prelude'.return (\ o -> o{users = P'.append (users o) v}))
        parse'queues
         = P'.try
            (do
               v <- P'.getT "queues"
               Prelude'.return (\ o -> o{queues = P'.append (queues o) v}))
        parse'limit
         = P'.try
            (do
               v <- P'.getT "limit"
               Prelude'.return (\ o -> o{limit = v}))
        parse'start_begin
         = P'.try
            (do
               v <- P'.getT "start_begin"
               Prelude'.return (\ o -> o{start_begin = v}))
        parse'start_end
         = P'.try
            (do
               v <- P'.getT "start_end"
               Prelude'.return (\ o -> o{start_end = v}))
        parse'finish_begin
         = P'.try
            (do
               v <- P'.getT "finish_begin"
               Prelude'.return (\ o -> o{finish_begin = v}))
        parse'finish_end
         = P'.try
            (do
               v <- P'.getT "finish_end"
               Prelude'.return (\ o -> o{finish_end = v}))
        parse'applicationTags
         = P'.try
            (do
               v <- P'.getT "applicationTags"
               Prelude'.return (\ o -> o{applicationTags = P'.append (applicationTags o) v}))
        parse'scope
         = P'.try
            (do
               v <- P'.getT "scope"
               Prelude'.return (\ o -> o{scope = v}))