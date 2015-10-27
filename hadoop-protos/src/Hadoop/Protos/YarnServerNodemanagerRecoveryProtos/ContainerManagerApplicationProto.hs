{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerNodemanagerRecoveryProtos.ContainerManagerApplicationProto (ContainerManagerApplicationProto(..))
       where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationACLMapProto as YarnProtos (ApplicationACLMapProto)
import qualified Hadoop.Protos.YarnProtos.ApplicationIdProto as YarnProtos (ApplicationIdProto)
import qualified Hadoop.Protos.YarnProtos.LogAggregationContextProto as YarnProtos (LogAggregationContextProto)
 
data ContainerManagerApplicationProto = ContainerManagerApplicationProto{id :: !(P'.Maybe YarnProtos.ApplicationIdProto),
                                                                         user :: !(P'.Maybe P'.Utf8),
                                                                         credentials :: !(P'.Maybe P'.ByteString),
                                                                         acls :: !(P'.Seq YarnProtos.ApplicationACLMapProto),
                                                                         log_aggregation_context ::
                                                                         !(P'.Maybe YarnProtos.LogAggregationContextProto)}
                                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ContainerManagerApplicationProto where
  mergeAppend (ContainerManagerApplicationProto x'1 x'2 x'3 x'4 x'5) (ContainerManagerApplicationProto y'1 y'2 y'3 y'4 y'5)
   = ContainerManagerApplicationProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
 
instance P'.Default ContainerManagerApplicationProto where
  defaultValue = ContainerManagerApplicationProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire ContainerManagerApplicationProto where
  wireSize ft' self'@(ContainerManagerApplicationProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 12 x'3 + P'.wireSizeRep 1 11 x'4 +
             P'.wireSizeOpt 1 11 x'5)
  wirePut ft' self'@(ContainerManagerApplicationProto x'1 x'2 x'3 x'4 x'5)
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
             P'.wirePutOpt 26 12 x'3
             P'.wirePutRep 34 11 x'4
             P'.wirePutOpt 42 11 x'5
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{id = P'.mergeAppend (id old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{user = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{credentials = Prelude'.Just new'Field}) (P'.wireGet 12)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{acls = P'.append (acls old'Self) new'Field}) (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{log_aggregation_context =
                                P'.mergeAppend (log_aggregation_context old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ContainerManagerApplicationProto) ContainerManagerApplicationProto where
  getVal m' f' = f' m'
 
instance P'.GPB ContainerManagerApplicationProto
 
instance P'.ReflectDescriptor ContainerManagerApplicationProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 42])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ContainerManagerApplicationProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerNodemanagerRecoveryProtos\"], baseName = MName \"ContainerManagerApplicationProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerNodemanagerRecoveryProtos\",\"ContainerManagerApplicationProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerManagerApplicationProto.id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"ContainerManagerApplicationProto\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerManagerApplicationProto.user\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"ContainerManagerApplicationProto\"], baseName' = FName \"user\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerManagerApplicationProto.credentials\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"ContainerManagerApplicationProto\"], baseName' = FName \"credentials\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerManagerApplicationProto.acls\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"ContainerManagerApplicationProto\"], baseName' = FName \"acls\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationACLMapProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationACLMapProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerManagerApplicationProto.log_aggregation_context\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"ContainerManagerApplicationProto\"], baseName' = FName \"log_aggregation_context\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.LogAggregationContextProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"LogAggregationContextProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ContainerManagerApplicationProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ContainerManagerApplicationProto where
  textPut msg
   = do
       P'.tellT "id" (id msg)
       P'.tellT "user" (user msg)
       P'.tellT "credentials" (credentials msg)
       P'.tellT "acls" (acls msg)
       P'.tellT "log_aggregation_context" (log_aggregation_context msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'id, parse'user, parse'credentials, parse'acls, parse'log_aggregation_context])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'id
         = P'.try
            (do
               v <- P'.getT "id"
               Prelude'.return (\ o -> o{id = v}))
        parse'user
         = P'.try
            (do
               v <- P'.getT "user"
               Prelude'.return (\ o -> o{user = v}))
        parse'credentials
         = P'.try
            (do
               v <- P'.getT "credentials"
               Prelude'.return (\ o -> o{credentials = v}))
        parse'acls
         = P'.try
            (do
               v <- P'.getT "acls"
               Prelude'.return (\ o -> o{acls = P'.append (acls o) v}))
        parse'log_aggregation_context
         = P'.try
            (do
               v <- P'.getT "log_aggregation_context"
               Prelude'.return (\ o -> o{log_aggregation_context = v}))