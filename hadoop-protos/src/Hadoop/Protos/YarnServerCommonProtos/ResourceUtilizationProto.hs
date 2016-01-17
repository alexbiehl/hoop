{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerCommonProtos.ResourceUtilizationProto (ResourceUtilizationProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ResourceUtilizationProto = ResourceUtilizationProto{pmem :: !(P'.Maybe P'.Int32), vmem :: !(P'.Maybe P'.Int32),
                                                         cpu :: !(P'.Maybe P'.Float)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ResourceUtilizationProto where
  mergeAppend (ResourceUtilizationProto x'1 x'2 x'3) (ResourceUtilizationProto y'1 y'2 y'3)
   = ResourceUtilizationProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default ResourceUtilizationProto where
  defaultValue = ResourceUtilizationProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire ResourceUtilizationProto where
  wireSize ft' self'@(ResourceUtilizationProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 5 x'1 + P'.wireSizeOpt 1 5 x'2 + P'.wireSizeOpt 1 2 x'3)
  wirePut ft' self'@(ResourceUtilizationProto x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 5 x'1
             P'.wirePutOpt 16 5 x'2
             P'.wirePutOpt 29 2 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{pmem = Prelude'.Just new'Field}) (P'.wireGet 5)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{vmem = Prelude'.Just new'Field}) (P'.wireGet 5)
             29 -> Prelude'.fmap (\ !new'Field -> old'Self{cpu = Prelude'.Just new'Field}) (P'.wireGet 2)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ResourceUtilizationProto) ResourceUtilizationProto where
  getVal m' f' = f' m'
 
instance P'.GPB ResourceUtilizationProto
 
instance P'.ReflectDescriptor ResourceUtilizationProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 29])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ResourceUtilizationProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonProtos\"], baseName = MName \"ResourceUtilizationProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerCommonProtos\",\"ResourceUtilizationProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ResourceUtilizationProto.pmem\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonProtos\",MName \"ResourceUtilizationProto\"], baseName' = FName \"pmem\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ResourceUtilizationProto.vmem\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonProtos\",MName \"ResourceUtilizationProto\"], baseName' = FName \"vmem\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ResourceUtilizationProto.cpu\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonProtos\",MName \"ResourceUtilizationProto\"], baseName' = FName \"cpu\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 29}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 2}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ResourceUtilizationProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ResourceUtilizationProto where
  textPut msg
   = do
       P'.tellT "pmem" (pmem msg)
       P'.tellT "vmem" (vmem msg)
       P'.tellT "cpu" (cpu msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'pmem, parse'vmem, parse'cpu]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'pmem
         = P'.try
            (do
               v <- P'.getT "pmem"
               Prelude'.return (\ o -> o{pmem = v}))
        parse'vmem
         = P'.try
            (do
               v <- P'.getT "vmem"
               Prelude'.return (\ o -> o{vmem = v}))
        parse'cpu
         = P'.try
            (do
               v <- P'.getT "cpu"
               Prelude'.return (\ o -> o{cpu = v}))