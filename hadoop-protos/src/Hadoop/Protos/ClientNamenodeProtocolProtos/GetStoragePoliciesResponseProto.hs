{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.GetStoragePoliciesResponseProto (GetStoragePoliciesResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.BlockStoragePolicyProto as HdfsProtos (BlockStoragePolicyProto)
 
data GetStoragePoliciesResponseProto = GetStoragePoliciesResponseProto{policies :: !(P'.Seq HdfsProtos.BlockStoragePolicyProto)}
                                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetStoragePoliciesResponseProto where
  mergeAppend (GetStoragePoliciesResponseProto x'1) (GetStoragePoliciesResponseProto y'1)
   = GetStoragePoliciesResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetStoragePoliciesResponseProto where
  defaultValue = GetStoragePoliciesResponseProto P'.defaultValue
 
instance P'.Wire GetStoragePoliciesResponseProto where
  wireSize ft' self'@(GetStoragePoliciesResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(GetStoragePoliciesResponseProto x'1)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{policies = P'.append (policies old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetStoragePoliciesResponseProto) GetStoragePoliciesResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetStoragePoliciesResponseProto
 
instance P'.ReflectDescriptor GetStoragePoliciesResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.GetStoragePoliciesResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"GetStoragePoliciesResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"GetStoragePoliciesResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetStoragePoliciesResponseProto.policies\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetStoragePoliciesResponseProto\"], baseName' = FName \"policies\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.BlockStoragePolicyProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"BlockStoragePolicyProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetStoragePoliciesResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetStoragePoliciesResponseProto where
  textPut msg
   = do
       P'.tellT "policies" (policies msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'policies]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'policies
         = P'.try
            (do
               v <- P'.getT "policies"
               Prelude'.return (\ o -> o{policies = P'.append (policies o) v}))