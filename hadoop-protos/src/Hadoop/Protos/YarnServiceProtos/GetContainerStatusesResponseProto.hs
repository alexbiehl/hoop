{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.GetContainerStatusesResponseProto (GetContainerStatusesResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ContainerStatusProto as YarnProtos (ContainerStatusProto)
import qualified Hadoop.Protos.YarnServiceProtos.ContainerExceptionMapProto as YarnServiceProtos (ContainerExceptionMapProto)
 
data GetContainerStatusesResponseProto = GetContainerStatusesResponseProto{status :: !(P'.Seq YarnProtos.ContainerStatusProto),
                                                                           failed_requests ::
                                                                           !(P'.Seq YarnServiceProtos.ContainerExceptionMapProto)}
                                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetContainerStatusesResponseProto where
  mergeAppend (GetContainerStatusesResponseProto x'1 x'2) (GetContainerStatusesResponseProto y'1 y'2)
   = GetContainerStatusesResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default GetContainerStatusesResponseProto where
  defaultValue = GetContainerStatusesResponseProto P'.defaultValue P'.defaultValue
 
instance P'.Wire GetContainerStatusesResponseProto where
  wireSize ft' self'@(GetContainerStatusesResponseProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePut ft' self'@(GetContainerStatusesResponseProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 11 x'1
             P'.wirePutRep 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{status = P'.append (status old'Self) new'Field}) (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{failed_requests = P'.append (failed_requests old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetContainerStatusesResponseProto) GetContainerStatusesResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetContainerStatusesResponseProto
 
instance P'.ReflectDescriptor GetContainerStatusesResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.GetContainerStatusesResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"GetContainerStatusesResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"GetContainerStatusesResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetContainerStatusesResponseProto.status\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetContainerStatusesResponseProto\"], baseName' = FName \"status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ContainerStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetContainerStatusesResponseProto.failed_requests\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetContainerStatusesResponseProto\"], baseName' = FName \"failed_requests\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ContainerExceptionMapProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"ContainerExceptionMapProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetContainerStatusesResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetContainerStatusesResponseProto where
  textPut msg
   = do
       P'.tellT "status" (status msg)
       P'.tellT "failed_requests" (failed_requests msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'status, parse'failed_requests]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'status
         = P'.try
            (do
               v <- P'.getT "status"
               Prelude'.return (\ o -> o{status = P'.append (status o) v}))
        parse'failed_requests
         = P'.try
            (do
               v <- P'.getT "failed_requests"
               Prelude'.return (\ o -> o{failed_requests = P'.append (failed_requests o) v}))