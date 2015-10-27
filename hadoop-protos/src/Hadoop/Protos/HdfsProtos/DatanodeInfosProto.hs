{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.DatanodeInfosProto (DatanodeInfosProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.DatanodeInfoProto as HdfsProtos (DatanodeInfoProto)
 
data DatanodeInfosProto = DatanodeInfosProto{datanodes :: !(P'.Seq HdfsProtos.DatanodeInfoProto)}
                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable DatanodeInfosProto where
  mergeAppend (DatanodeInfosProto x'1) (DatanodeInfosProto y'1) = DatanodeInfosProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default DatanodeInfosProto where
  defaultValue = DatanodeInfosProto P'.defaultValue
 
instance P'.Wire DatanodeInfosProto where
  wireSize ft' self'@(DatanodeInfosProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(DatanodeInfosProto x'1)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{datanodes = P'.append (datanodes old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> DatanodeInfosProto) DatanodeInfosProto where
  getVal m' f' = f' m'
 
instance P'.GPB DatanodeInfosProto
 
instance P'.ReflectDescriptor DatanodeInfosProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeInfosProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeInfosProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"DatanodeInfosProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DatanodeInfosProto.datanodes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DatanodeInfosProto\"], baseName' = FName \"datanodes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType DatanodeInfosProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg DatanodeInfosProto where
  textPut msg
   = do
       P'.tellT "datanodes" (datanodes msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'datanodes]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'datanodes
         = P'.try
            (do
               v <- P'.getT "datanodes"
               Prelude'.return (\ o -> o{datanodes = P'.append (datanodes o) v}))