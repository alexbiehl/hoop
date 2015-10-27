{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.NamenodeProtocolProtos.GetMostRecentCheckpointTxIdResponseProto (GetMostRecentCheckpointTxIdResponseProto(..))
       where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data GetMostRecentCheckpointTxIdResponseProto = GetMostRecentCheckpointTxIdResponseProto{txId :: !(P'.Word64)}
                                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetMostRecentCheckpointTxIdResponseProto where
  mergeAppend (GetMostRecentCheckpointTxIdResponseProto x'1) (GetMostRecentCheckpointTxIdResponseProto y'1)
   = GetMostRecentCheckpointTxIdResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetMostRecentCheckpointTxIdResponseProto where
  defaultValue = GetMostRecentCheckpointTxIdResponseProto P'.defaultValue
 
instance P'.Wire GetMostRecentCheckpointTxIdResponseProto where
  wireSize ft' self'@(GetMostRecentCheckpointTxIdResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 4 x'1)
  wirePut ft' self'@(GetMostRecentCheckpointTxIdResponseProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 4 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{txId = new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetMostRecentCheckpointTxIdResponseProto) GetMostRecentCheckpointTxIdResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetMostRecentCheckpointTxIdResponseProto
 
instance P'.ReflectDescriptor GetMostRecentCheckpointTxIdResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.namenode.GetMostRecentCheckpointTxIdResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"NamenodeProtocolProtos\"], baseName = MName \"GetMostRecentCheckpointTxIdResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"NamenodeProtocolProtos\",\"GetMostRecentCheckpointTxIdResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.namenode.GetMostRecentCheckpointTxIdResponseProto.txId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"NamenodeProtocolProtos\",MName \"GetMostRecentCheckpointTxIdResponseProto\"], baseName' = FName \"txId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetMostRecentCheckpointTxIdResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetMostRecentCheckpointTxIdResponseProto where
  textPut msg
   = do
       P'.tellT "txId" (txId msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'txId]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'txId
         = P'.try
            (do
               v <- P'.getT "txId"
               Prelude'.return (\ o -> o{txId = v}))