{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.NamenodeProtocolProtos.GetEditLogManifestResponseProto (GetEditLogManifestResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.RemoteEditLogManifestProto as HdfsProtos (RemoteEditLogManifestProto)
 
data GetEditLogManifestResponseProto = GetEditLogManifestResponseProto{manifest :: !(HdfsProtos.RemoteEditLogManifestProto)}
                                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetEditLogManifestResponseProto where
  mergeAppend (GetEditLogManifestResponseProto x'1) (GetEditLogManifestResponseProto y'1)
   = GetEditLogManifestResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetEditLogManifestResponseProto where
  defaultValue = GetEditLogManifestResponseProto P'.defaultValue
 
instance P'.Wire GetEditLogManifestResponseProto where
  wireSize ft' self'@(GetEditLogManifestResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1)
  wirePut ft' self'@(GetEditLogManifestResponseProto x'1)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{manifest = P'.mergeAppend (manifest old'Self) (new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetEditLogManifestResponseProto) GetEditLogManifestResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetEditLogManifestResponseProto
 
instance P'.ReflectDescriptor GetEditLogManifestResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.namenode.GetEditLogManifestResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"NamenodeProtocolProtos\"], baseName = MName \"GetEditLogManifestResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"NamenodeProtocolProtos\",\"GetEditLogManifestResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.namenode.GetEditLogManifestResponseProto.manifest\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"NamenodeProtocolProtos\",MName \"GetEditLogManifestResponseProto\"], baseName' = FName \"manifest\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.RemoteEditLogManifestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"RemoteEditLogManifestProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetEditLogManifestResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetEditLogManifestResponseProto where
  textPut msg
   = do
       P'.tellT "manifest" (manifest msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'manifest]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'manifest
         = P'.try
            (do
               v <- P'.getT "manifest"
               Prelude'.return (\ o -> o{manifest = v}))