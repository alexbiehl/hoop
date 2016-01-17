{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.RemoteEditLogManifestProto (RemoteEditLogManifestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.RemoteEditLogProto as HdfsProtos (RemoteEditLogProto)
 
data RemoteEditLogManifestProto = RemoteEditLogManifestProto{logs :: !(P'.Seq HdfsProtos.RemoteEditLogProto)}
                                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RemoteEditLogManifestProto where
  mergeAppend (RemoteEditLogManifestProto x'1) (RemoteEditLogManifestProto y'1)
   = RemoteEditLogManifestProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default RemoteEditLogManifestProto where
  defaultValue = RemoteEditLogManifestProto P'.defaultValue
 
instance P'.Wire RemoteEditLogManifestProto where
  wireSize ft' self'@(RemoteEditLogManifestProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(RemoteEditLogManifestProto x'1)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{logs = P'.append (logs old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RemoteEditLogManifestProto) RemoteEditLogManifestProto where
  getVal m' f' = f' m'
 
instance P'.GPB RemoteEditLogManifestProto
 
instance P'.ReflectDescriptor RemoteEditLogManifestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.RemoteEditLogManifestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"RemoteEditLogManifestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"RemoteEditLogManifestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.RemoteEditLogManifestProto.logs\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"RemoteEditLogManifestProto\"], baseName' = FName \"logs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.RemoteEditLogProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"RemoteEditLogProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RemoteEditLogManifestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RemoteEditLogManifestProto where
  textPut msg
   = do
       P'.tellT "logs" (logs msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'logs]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'logs
         = P'.try
            (do
               v <- P'.getT "logs"
               Prelude'.return (\ o -> o{logs = P'.append (logs o) v}))