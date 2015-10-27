{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.DataTransferEncryptorMessageProto (DataTransferEncryptorMessageProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DataTransferProtos.DataTransferEncryptorMessageProto.DataTransferEncryptorStatus
       as DataTransferProtos.DataTransferEncryptorMessageProto (DataTransferEncryptorStatus)
import qualified Hadoop.Protos.HdfsProtos.CipherOptionProto as HdfsProtos (CipherOptionProto)
 
data DataTransferEncryptorMessageProto = DataTransferEncryptorMessageProto{status ::
                                                                           !(DataTransferProtos.DataTransferEncryptorMessageProto.DataTransferEncryptorStatus),
                                                                           payload :: !(P'.Maybe P'.ByteString),
                                                                           message :: !(P'.Maybe P'.Utf8),
                                                                           cipherOption :: !(P'.Seq HdfsProtos.CipherOptionProto)}
                                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable DataTransferEncryptorMessageProto where
  mergeAppend (DataTransferEncryptorMessageProto x'1 x'2 x'3 x'4) (DataTransferEncryptorMessageProto y'1 y'2 y'3 y'4)
   = DataTransferEncryptorMessageProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)
 
instance P'.Default DataTransferEncryptorMessageProto where
  defaultValue = DataTransferEncryptorMessageProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire DataTransferEncryptorMessageProto where
  wireSize ft' self'@(DataTransferEncryptorMessageProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 14 x'1 + P'.wireSizeOpt 1 12 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeRep 1 11 x'4)
  wirePut ft' self'@(DataTransferEncryptorMessageProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 14 x'1
             P'.wirePutOpt 18 12 x'2
             P'.wirePutOpt 26 9 x'3
             P'.wirePutRep 34 11 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{status = new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{payload = Prelude'.Just new'Field}) (P'.wireGet 12)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{message = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{cipherOption = P'.append (cipherOption old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> DataTransferEncryptorMessageProto) DataTransferEncryptorMessageProto where
  getVal m' f' = f' m'
 
instance P'.GPB DataTransferEncryptorMessageProto
 
instance P'.ReflectDescriptor DataTransferEncryptorMessageProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8, 18, 26, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.DataTransferEncryptorMessageProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"DataTransferEncryptorMessageProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DataTransferProtos\",\"DataTransferEncryptorMessageProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DataTransferEncryptorMessageProto.status\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"DataTransferEncryptorMessageProto\"], baseName' = FName \"status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DataTransferEncryptorMessageProto.DataTransferEncryptorStatus\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\",MName \"DataTransferEncryptorMessageProto\"], baseName = MName \"DataTransferEncryptorStatus\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DataTransferEncryptorMessageProto.payload\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"DataTransferEncryptorMessageProto\"], baseName' = FName \"payload\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DataTransferEncryptorMessageProto.message\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"DataTransferEncryptorMessageProto\"], baseName' = FName \"message\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DataTransferEncryptorMessageProto.cipherOption\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"DataTransferEncryptorMessageProto\"], baseName' = FName \"cipherOption\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.CipherOptionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"CipherOptionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType DataTransferEncryptorMessageProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg DataTransferEncryptorMessageProto where
  textPut msg
   = do
       P'.tellT "status" (status msg)
       P'.tellT "payload" (payload msg)
       P'.tellT "message" (message msg)
       P'.tellT "cipherOption" (cipherOption msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'status, parse'payload, parse'message, parse'cipherOption]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'status
         = P'.try
            (do
               v <- P'.getT "status"
               Prelude'.return (\ o -> o{status = v}))
        parse'payload
         = P'.try
            (do
               v <- P'.getT "payload"
               Prelude'.return (\ o -> o{payload = v}))
        parse'message
         = P'.try
            (do
               v <- P'.getT "message"
               Prelude'.return (\ o -> o{message = v}))
        parse'cipherOption
         = P'.try
            (do
               v <- P'.getT "cipherOption"
               Prelude'.return (\ o -> o{cipherOption = P'.append (cipherOption o) v}))