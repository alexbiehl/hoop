{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerResourceManagerRecoveryProtos.AMRMTokenSecretManagerStateProto (AMRMTokenSecretManagerStateProto(..))
       where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnServerCommonProtos.MasterKeyProto as YarnServerCommonProtos (MasterKeyProto)
 
data AMRMTokenSecretManagerStateProto = AMRMTokenSecretManagerStateProto{current_master_key ::
                                                                         !(P'.Maybe YarnServerCommonProtos.MasterKeyProto),
                                                                         next_master_key ::
                                                                         !(P'.Maybe YarnServerCommonProtos.MasterKeyProto)}
                                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AMRMTokenSecretManagerStateProto where
  mergeAppend (AMRMTokenSecretManagerStateProto x'1 x'2) (AMRMTokenSecretManagerStateProto y'1 y'2)
   = AMRMTokenSecretManagerStateProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default AMRMTokenSecretManagerStateProto where
  defaultValue = AMRMTokenSecretManagerStateProto P'.defaultValue P'.defaultValue
 
instance P'.Wire AMRMTokenSecretManagerStateProto where
  wireSize ft' self'@(AMRMTokenSecretManagerStateProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePut ft' self'@(AMRMTokenSecretManagerStateProto x'1 x'2)
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
                    (\ !new'Field ->
                      old'Self{current_master_key = P'.mergeAppend (current_master_key old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{next_master_key = P'.mergeAppend (next_master_key old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> AMRMTokenSecretManagerStateProto) AMRMTokenSecretManagerStateProto where
  getVal m' f' = f' m'
 
instance P'.GPB AMRMTokenSecretManagerStateProto
 
instance P'.ReflectDescriptor AMRMTokenSecretManagerStateProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.AMRMTokenSecretManagerStateProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerResourceManagerRecoveryProtos\"], baseName = MName \"AMRMTokenSecretManagerStateProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerResourceManagerRecoveryProtos\",\"AMRMTokenSecretManagerStateProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AMRMTokenSecretManagerStateProto.current_master_key\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"AMRMTokenSecretManagerStateProto\"], baseName' = FName \"current_master_key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.MasterKeyProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonProtos\"], baseName = MName \"MasterKeyProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AMRMTokenSecretManagerStateProto.next_master_key\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"AMRMTokenSecretManagerStateProto\"], baseName' = FName \"next_master_key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.MasterKeyProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonProtos\"], baseName = MName \"MasterKeyProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType AMRMTokenSecretManagerStateProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg AMRMTokenSecretManagerStateProto where
  textPut msg
   = do
       P'.tellT "current_master_key" (current_master_key msg)
       P'.tellT "next_master_key" (next_master_key msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'current_master_key, parse'next_master_key]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'current_master_key
         = P'.try
            (do
               v <- P'.getT "current_master_key"
               Prelude'.return (\ o -> o{current_master_key = v}))
        parse'next_master_key
         = P'.try
            (do
               v <- P'.getT "next_master_key"
               Prelude'.return (\ o -> o{next_master_key = v}))