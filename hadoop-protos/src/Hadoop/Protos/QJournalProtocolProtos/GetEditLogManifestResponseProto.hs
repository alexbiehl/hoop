{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.QJournalProtocolProtos.GetEditLogManifestResponseProto (GetEditLogManifestResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.RemoteEditLogManifestProto as HdfsProtos (RemoteEditLogManifestProto)
 
data GetEditLogManifestResponseProto = GetEditLogManifestResponseProto{manifest :: !(HdfsProtos.RemoteEditLogManifestProto),
                                                                       httpPort :: !(P'.Word32), fromURL :: !(P'.Maybe P'.Utf8)}
                                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetEditLogManifestResponseProto where
  mergeAppend (GetEditLogManifestResponseProto x'1 x'2 x'3) (GetEditLogManifestResponseProto y'1 y'2 y'3)
   = GetEditLogManifestResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default GetEditLogManifestResponseProto where
  defaultValue = GetEditLogManifestResponseProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire GetEditLogManifestResponseProto where
  wireSize ft' self'@(GetEditLogManifestResponseProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 13 x'2 + P'.wireSizeOpt 1 9 x'3)
  wirePut ft' self'@(GetEditLogManifestResponseProto x'1 x'2 x'3)
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
             P'.wirePutReq 16 13 x'2
             P'.wirePutOpt 26 9 x'3
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
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{httpPort = new'Field}) (P'.wireGet 13)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{fromURL = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetEditLogManifestResponseProto) GetEditLogManifestResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetEditLogManifestResponseProto
 
instance P'.ReflectDescriptor GetEditLogManifestResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16]) (P'.fromDistinctAscList [10, 16, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.qjournal.GetEditLogManifestResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"QJournalProtocolProtos\"], baseName = MName \"GetEditLogManifestResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"QJournalProtocolProtos\",\"GetEditLogManifestResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.GetEditLogManifestResponseProto.manifest\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"GetEditLogManifestResponseProto\"], baseName' = FName \"manifest\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.RemoteEditLogManifestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"RemoteEditLogManifestProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.GetEditLogManifestResponseProto.httpPort\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"GetEditLogManifestResponseProto\"], baseName' = FName \"httpPort\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.qjournal.GetEditLogManifestResponseProto.fromURL\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"QJournalProtocolProtos\",MName \"GetEditLogManifestResponseProto\"], baseName' = FName \"fromURL\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetEditLogManifestResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetEditLogManifestResponseProto where
  textPut msg
   = do
       P'.tellT "manifest" (manifest msg)
       P'.tellT "httpPort" (httpPort msg)
       P'.tellT "fromURL" (fromURL msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'manifest, parse'httpPort, parse'fromURL]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'manifest
         = P'.try
            (do
               v <- P'.getT "manifest"
               Prelude'.return (\ o -> o{manifest = v}))
        parse'httpPort
         = P'.try
            (do
               v <- P'.getT "httpPort"
               Prelude'.return (\ o -> o{httpPort = v}))
        parse'fromURL
         = P'.try
            (do
               v <- P'.getT "fromURL"
               Prelude'.return (\ o -> o{fromURL = v}))