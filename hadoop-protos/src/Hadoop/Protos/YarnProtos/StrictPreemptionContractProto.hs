{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnProtos.StrictPreemptionContractProto (StrictPreemptionContractProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.PreemptionContainerProto as YarnProtos (PreemptionContainerProto)
 
data StrictPreemptionContractProto = StrictPreemptionContractProto{container :: !(P'.Seq YarnProtos.PreemptionContainerProto)}
                                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable StrictPreemptionContractProto where
  mergeAppend (StrictPreemptionContractProto x'1) (StrictPreemptionContractProto y'1)
   = StrictPreemptionContractProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default StrictPreemptionContractProto where
  defaultValue = StrictPreemptionContractProto P'.defaultValue
 
instance P'.Wire StrictPreemptionContractProto where
  wireSize ft' self'@(StrictPreemptionContractProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(StrictPreemptionContractProto x'1)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{container = P'.append (container old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> StrictPreemptionContractProto) StrictPreemptionContractProto where
  getVal m' f' = f' m'
 
instance P'.GPB StrictPreemptionContractProto
 
instance P'.ReflectDescriptor StrictPreemptionContractProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.StrictPreemptionContractProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"StrictPreemptionContractProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnProtos\",\"StrictPreemptionContractProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.StrictPreemptionContractProto.container\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnProtos\",MName \"StrictPreemptionContractProto\"], baseName' = FName \"container\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.PreemptionContainerProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"PreemptionContainerProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType StrictPreemptionContractProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg StrictPreemptionContractProto where
  textPut msg
   = do
       P'.tellT "container" (container msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'container]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'container
         = P'.try
            (do
               v <- P'.getT "container"
               Prelude'.return (\ o -> o{container = P'.append (container o) v}))