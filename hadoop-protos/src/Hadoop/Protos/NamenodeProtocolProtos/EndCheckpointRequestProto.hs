{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.NamenodeProtocolProtos.EndCheckpointRequestProto (EndCheckpointRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.CheckpointSignatureProto as HdfsProtos (CheckpointSignatureProto)
import qualified Hadoop.Protos.HdfsProtos.NamenodeRegistrationProto as HdfsProtos (NamenodeRegistrationProto)
 
data EndCheckpointRequestProto = EndCheckpointRequestProto{registration :: !(HdfsProtos.NamenodeRegistrationProto),
                                                           signature :: !(HdfsProtos.CheckpointSignatureProto)}
                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable EndCheckpointRequestProto where
  mergeAppend (EndCheckpointRequestProto x'1 x'2) (EndCheckpointRequestProto y'1 y'2)
   = EndCheckpointRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default EndCheckpointRequestProto where
  defaultValue = EndCheckpointRequestProto P'.defaultValue P'.defaultValue
 
instance P'.Wire EndCheckpointRequestProto where
  wireSize ft' self'@(EndCheckpointRequestProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 11 x'2)
  wirePut ft' self'@(EndCheckpointRequestProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 11 x'1
             P'.wirePutReq 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{registration = P'.mergeAppend (registration old'Self) (new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{signature = P'.mergeAppend (signature old'Self) (new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> EndCheckpointRequestProto) EndCheckpointRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB EndCheckpointRequestProto
 
instance P'.ReflectDescriptor EndCheckpointRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18]) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.namenode.EndCheckpointRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"NamenodeProtocolProtos\"], baseName = MName \"EndCheckpointRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"NamenodeProtocolProtos\",\"EndCheckpointRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.namenode.EndCheckpointRequestProto.registration\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"NamenodeProtocolProtos\",MName \"EndCheckpointRequestProto\"], baseName' = FName \"registration\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.NamenodeRegistrationProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"NamenodeRegistrationProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.namenode.EndCheckpointRequestProto.signature\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"NamenodeProtocolProtos\",MName \"EndCheckpointRequestProto\"], baseName' = FName \"signature\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.CheckpointSignatureProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"CheckpointSignatureProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType EndCheckpointRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg EndCheckpointRequestProto where
  textPut msg
   = do
       P'.tellT "registration" (registration msg)
       P'.tellT "signature" (signature msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'registration, parse'signature]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'registration
         = P'.try
            (do
               v <- P'.getT "registration"
               Prelude'.return (\ o -> o{registration = v}))
        parse'signature
         = P'.try
            (do
               v <- P'.getT "signature"
               Prelude'.return (\ o -> o{signature = v}))