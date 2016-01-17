{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.GetDataEncryptionKeyResponseProto (GetDataEncryptionKeyResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.DataEncryptionKeyProto as HdfsProtos (DataEncryptionKeyProto)
 
data GetDataEncryptionKeyResponseProto = GetDataEncryptionKeyResponseProto{dataEncryptionKey ::
                                                                           !(P'.Maybe HdfsProtos.DataEncryptionKeyProto)}
                                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetDataEncryptionKeyResponseProto where
  mergeAppend (GetDataEncryptionKeyResponseProto x'1) (GetDataEncryptionKeyResponseProto y'1)
   = GetDataEncryptionKeyResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetDataEncryptionKeyResponseProto where
  defaultValue = GetDataEncryptionKeyResponseProto P'.defaultValue
 
instance P'.Wire GetDataEncryptionKeyResponseProto where
  wireSize ft' self'@(GetDataEncryptionKeyResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1)
  wirePut ft' self'@(GetDataEncryptionKeyResponseProto x'1)
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
                      old'Self{dataEncryptionKey = P'.mergeAppend (dataEncryptionKey old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetDataEncryptionKeyResponseProto) GetDataEncryptionKeyResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetDataEncryptionKeyResponseProto
 
instance P'.ReflectDescriptor GetDataEncryptionKeyResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.GetDataEncryptionKeyResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"GetDataEncryptionKeyResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"GetDataEncryptionKeyResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetDataEncryptionKeyResponseProto.dataEncryptionKey\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetDataEncryptionKeyResponseProto\"], baseName' = FName \"dataEncryptionKey\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DataEncryptionKeyProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DataEncryptionKeyProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetDataEncryptionKeyResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetDataEncryptionKeyResponseProto where
  textPut msg
   = do
       P'.tellT "dataEncryptionKey" (dataEncryptionKey msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'dataEncryptionKey]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'dataEncryptionKey
         = P'.try
            (do
               v <- P'.getT "dataEncryptionKey"
               Prelude'.return (\ o -> o{dataEncryptionKey = v}))