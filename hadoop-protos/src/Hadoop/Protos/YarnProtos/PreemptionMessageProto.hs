{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.PreemptionMessageProto (PreemptionMessageProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.PreemptionContractProto as YarnProtos (PreemptionContractProto)
import qualified Hadoop.Protos.YarnProtos.StrictPreemptionContractProto as YarnProtos (StrictPreemptionContractProto)
 
data PreemptionMessageProto = PreemptionMessageProto{strictContract :: !(P'.Maybe YarnProtos.StrictPreemptionContractProto),
                                                     contract :: !(P'.Maybe YarnProtos.PreemptionContractProto)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable PreemptionMessageProto where
  mergeAppend (PreemptionMessageProto x'1 x'2) (PreemptionMessageProto y'1 y'2)
   = PreemptionMessageProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default PreemptionMessageProto where
  defaultValue = PreemptionMessageProto P'.defaultValue P'.defaultValue
 
instance P'.Wire PreemptionMessageProto where
  wireSize ft' self'@(PreemptionMessageProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePut ft' self'@(PreemptionMessageProto x'1 x'2)
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
             P'.wirePutOpt 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{strictContract = P'.mergeAppend (strictContract old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{contract = P'.mergeAppend (contract old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> PreemptionMessageProto) PreemptionMessageProto where
  getVal m' f' = f' m'
 
instance P'.GPB PreemptionMessageProto
 
instance P'.ReflectDescriptor PreemptionMessageProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.PreemptionMessageProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"PreemptionMessageProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"PreemptionMessageProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.PreemptionMessageProto.strictContract\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"PreemptionMessageProto\"], baseName' = FName \"strictContract\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.StrictPreemptionContractProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"StrictPreemptionContractProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.PreemptionMessageProto.contract\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"PreemptionMessageProto\"], baseName' = FName \"contract\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.PreemptionContractProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"PreemptionContractProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType PreemptionMessageProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg PreemptionMessageProto where
  textPut msg
   = do
       P'.tellT "strictContract" (strictContract msg)
       P'.tellT "contract" (contract msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'strictContract, parse'contract]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'strictContract
         = P'.try
            (do
               v <- P'.getT "strictContract"
               Prelude'.return (\ o -> o{strictContract = v}))
        parse'contract
         = P'.try
            (do
               v <- P'.getT "contract"
               Prelude'.return (\ o -> o{contract = v}))