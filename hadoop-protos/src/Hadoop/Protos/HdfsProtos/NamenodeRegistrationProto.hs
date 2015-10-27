{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.NamenodeRegistrationProto (NamenodeRegistrationProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.NamenodeRegistrationProto.NamenodeRoleProto as HdfsProtos.NamenodeRegistrationProto
       (NamenodeRoleProto)
import qualified Hadoop.Protos.HdfsProtos.StorageInfoProto as HdfsProtos (StorageInfoProto)
 
data NamenodeRegistrationProto = NamenodeRegistrationProto{rpcAddress :: !(P'.Utf8), httpAddress :: !(P'.Utf8),
                                                           storageInfo :: !(HdfsProtos.StorageInfoProto),
                                                           role ::
                                                           !(P'.Maybe HdfsProtos.NamenodeRegistrationProto.NamenodeRoleProto)}
                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable NamenodeRegistrationProto where
  mergeAppend (NamenodeRegistrationProto x'1 x'2 x'3 x'4) (NamenodeRegistrationProto y'1 y'2 y'3 y'4)
   = NamenodeRegistrationProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default NamenodeRegistrationProto where
  defaultValue
   = NamenodeRegistrationProto P'.defaultValue P'.defaultValue P'.defaultValue (Prelude'.Just (Prelude'.read "NAMENODE"))
 
instance P'.Wire NamenodeRegistrationProto where
  wireSize ft' self'@(NamenodeRegistrationProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeReq 1 11 x'3 + P'.wireSizeOpt 1 14 x'4)
  wirePut ft' self'@(NamenodeRegistrationProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 9 x'1
             P'.wirePutReq 18 9 x'2
             P'.wirePutReq 26 11 x'3
             P'.wirePutOpt 32 14 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{rpcAddress = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{httpAddress = new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{storageInfo = P'.mergeAppend (storageInfo old'Self) (new'Field)})
                    (P'.wireGet 11)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{role = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> NamenodeRegistrationProto) NamenodeRegistrationProto where
  getVal m' f' = f' m'
 
instance P'.GPB NamenodeRegistrationProto
 
instance P'.ReflectDescriptor NamenodeRegistrationProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18, 26]) (P'.fromDistinctAscList [10, 18, 26, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.NamenodeRegistrationProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"NamenodeRegistrationProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"NamenodeRegistrationProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.NamenodeRegistrationProto.rpcAddress\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"NamenodeRegistrationProto\"], baseName' = FName \"rpcAddress\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.NamenodeRegistrationProto.httpAddress\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"NamenodeRegistrationProto\"], baseName' = FName \"httpAddress\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.NamenodeRegistrationProto.storageInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"NamenodeRegistrationProto\"], baseName' = FName \"storageInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.NamenodeRegistrationProto.role\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"NamenodeRegistrationProto\"], baseName' = FName \"role\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.NamenodeRegistrationProto.NamenodeRoleProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\",MName \"NamenodeRegistrationProto\"], baseName = MName \"NamenodeRoleProto\"}), hsRawDefault = Just \"NAMENODE\", hsDefault = Just (HsDef'Enum \"NAMENODE\")}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType NamenodeRegistrationProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg NamenodeRegistrationProto where
  textPut msg
   = do
       P'.tellT "rpcAddress" (rpcAddress msg)
       P'.tellT "httpAddress" (httpAddress msg)
       P'.tellT "storageInfo" (storageInfo msg)
       P'.tellT "role" (role msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'rpcAddress, parse'httpAddress, parse'storageInfo, parse'role]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'rpcAddress
         = P'.try
            (do
               v <- P'.getT "rpcAddress"
               Prelude'.return (\ o -> o{rpcAddress = v}))
        parse'httpAddress
         = P'.try
            (do
               v <- P'.getT "httpAddress"
               Prelude'.return (\ o -> o{httpAddress = v}))
        parse'storageInfo
         = P'.try
            (do
               v <- P'.getT "storageInfo"
               Prelude'.return (\ o -> o{storageInfo = v}))
        parse'role
         = P'.try
            (do
               v <- P'.getT "role"
               Prelude'.return (\ o -> o{role = v}))