{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.GetAdditionalDatanodeResponseProto (GetAdditionalDatanodeResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.LocatedBlockProto as HdfsProtos (LocatedBlockProto)
 
data GetAdditionalDatanodeResponseProto = GetAdditionalDatanodeResponseProto{block :: !(HdfsProtos.LocatedBlockProto)}
                                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetAdditionalDatanodeResponseProto where
  mergeAppend (GetAdditionalDatanodeResponseProto x'1) (GetAdditionalDatanodeResponseProto y'1)
   = GetAdditionalDatanodeResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetAdditionalDatanodeResponseProto where
  defaultValue = GetAdditionalDatanodeResponseProto P'.defaultValue
 
instance P'.Wire GetAdditionalDatanodeResponseProto where
  wireSize ft' self'@(GetAdditionalDatanodeResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1)
  wirePut ft' self'@(GetAdditionalDatanodeResponseProto x'1)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{block = P'.mergeAppend (block old'Self) (new'Field)}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetAdditionalDatanodeResponseProto) GetAdditionalDatanodeResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetAdditionalDatanodeResponseProto
 
instance P'.ReflectDescriptor GetAdditionalDatanodeResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.GetAdditionalDatanodeResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"GetAdditionalDatanodeResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"GetAdditionalDatanodeResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetAdditionalDatanodeResponseProto.block\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetAdditionalDatanodeResponseProto\"], baseName' = FName \"block\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.LocatedBlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"LocatedBlockProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetAdditionalDatanodeResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetAdditionalDatanodeResponseProto where
  textPut msg
   = do
       P'.tellT "block" (block msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'block]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'block
         = P'.try
            (do
               v <- P'.getT "block"
               Prelude'.return (\ o -> o{block = v}))