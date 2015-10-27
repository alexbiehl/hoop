{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.DataTransferProtos.ClientOperationHeaderProto (ClientOperationHeaderProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.DataTransferProtos.BaseHeaderProto as DataTransferProtos (BaseHeaderProto)
 
data ClientOperationHeaderProto = ClientOperationHeaderProto{baseHeader :: !(DataTransferProtos.BaseHeaderProto),
                                                             clientName :: !(P'.Utf8)}
                                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ClientOperationHeaderProto where
  mergeAppend (ClientOperationHeaderProto x'1 x'2) (ClientOperationHeaderProto y'1 y'2)
   = ClientOperationHeaderProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ClientOperationHeaderProto where
  defaultValue = ClientOperationHeaderProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ClientOperationHeaderProto where
  wireSize ft' self'@(ClientOperationHeaderProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 9 x'2)
  wirePut ft' self'@(ClientOperationHeaderProto x'1 x'2)
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
             P'.wirePutReq 18 9 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{baseHeader = P'.mergeAppend (baseHeader old'Self) (new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{clientName = new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ClientOperationHeaderProto) ClientOperationHeaderProto where
  getVal m' f' = f' m'
 
instance P'.GPB ClientOperationHeaderProto
 
instance P'.ReflectDescriptor ClientOperationHeaderProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18]) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.ClientOperationHeaderProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"ClientOperationHeaderProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"DataTransferProtos\",\"ClientOperationHeaderProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ClientOperationHeaderProto.baseHeader\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"ClientOperationHeaderProto\"], baseName' = FName \"baseHeader\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.BaseHeaderProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"DataTransferProtos\"], baseName = MName \"BaseHeaderProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ClientOperationHeaderProto.clientName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"DataTransferProtos\",MName \"ClientOperationHeaderProto\"], baseName' = FName \"clientName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ClientOperationHeaderProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ClientOperationHeaderProto where
  textPut msg
   = do
       P'.tellT "baseHeader" (baseHeader msg)
       P'.tellT "clientName" (clientName msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'baseHeader, parse'clientName]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'baseHeader
         = P'.try
            (do
               v <- P'.getT "baseHeader"
               Prelude'.return (\ o -> o{baseHeader = v}))
        parse'clientName
         = P'.try
            (do
               v <- P'.getT "clientName"
               Prelude'.return (\ o -> o{clientName = v}))