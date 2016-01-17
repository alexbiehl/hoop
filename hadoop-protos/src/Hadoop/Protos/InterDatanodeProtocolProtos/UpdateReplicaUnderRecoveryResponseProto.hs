{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.InterDatanodeProtocolProtos.UpdateReplicaUnderRecoveryResponseProto
       (UpdateReplicaUnderRecoveryResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data UpdateReplicaUnderRecoveryResponseProto = UpdateReplicaUnderRecoveryResponseProto{storageUuid :: !(P'.Maybe P'.Utf8)}
                                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable UpdateReplicaUnderRecoveryResponseProto where
  mergeAppend (UpdateReplicaUnderRecoveryResponseProto x'1) (UpdateReplicaUnderRecoveryResponseProto y'1)
   = UpdateReplicaUnderRecoveryResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default UpdateReplicaUnderRecoveryResponseProto where
  defaultValue = UpdateReplicaUnderRecoveryResponseProto P'.defaultValue
 
instance P'.Wire UpdateReplicaUnderRecoveryResponseProto where
  wireSize ft' self'@(UpdateReplicaUnderRecoveryResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1)
  wirePut ft' self'@(UpdateReplicaUnderRecoveryResponseProto x'1)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{storageUuid = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> UpdateReplicaUnderRecoveryResponseProto) UpdateReplicaUnderRecoveryResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB UpdateReplicaUnderRecoveryResponseProto
 
instance P'.ReflectDescriptor UpdateReplicaUnderRecoveryResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.UpdateReplicaUnderRecoveryResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"InterDatanodeProtocolProtos\"], baseName = MName \"UpdateReplicaUnderRecoveryResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"InterDatanodeProtocolProtos\",\"UpdateReplicaUnderRecoveryResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.UpdateReplicaUnderRecoveryResponseProto.storageUuid\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"InterDatanodeProtocolProtos\",MName \"UpdateReplicaUnderRecoveryResponseProto\"], baseName' = FName \"storageUuid\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType UpdateReplicaUnderRecoveryResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg UpdateReplicaUnderRecoveryResponseProto where
  textPut msg
   = do
       P'.tellT "storageUuid" (storageUuid msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'storageUuid]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'storageUuid
         = P'.try
            (do
               v <- P'.getT "storageUuid"
               Prelude'.return (\ o -> o{storageUuid = v}))