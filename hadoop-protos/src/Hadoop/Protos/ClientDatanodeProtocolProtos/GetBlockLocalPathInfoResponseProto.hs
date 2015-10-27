{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientDatanodeProtocolProtos.GetBlockLocalPathInfoResponseProto (GetBlockLocalPathInfoResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.ExtendedBlockProto as HdfsProtos (ExtendedBlockProto)
 
data GetBlockLocalPathInfoResponseProto = GetBlockLocalPathInfoResponseProto{block :: !(HdfsProtos.ExtendedBlockProto),
                                                                             localPath :: !(P'.Utf8), localMetaPath :: !(P'.Utf8)}
                                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetBlockLocalPathInfoResponseProto where
  mergeAppend (GetBlockLocalPathInfoResponseProto x'1 x'2 x'3) (GetBlockLocalPathInfoResponseProto y'1 y'2 y'3)
   = GetBlockLocalPathInfoResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default GetBlockLocalPathInfoResponseProto where
  defaultValue = GetBlockLocalPathInfoResponseProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire GetBlockLocalPathInfoResponseProto where
  wireSize ft' self'@(GetBlockLocalPathInfoResponseProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeReq 1 9 x'3)
  wirePut ft' self'@(GetBlockLocalPathInfoResponseProto x'1 x'2 x'3)
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
             P'.wirePutReq 26 9 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{block = P'.mergeAppend (block old'Self) (new'Field)}) (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{localPath = new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{localMetaPath = new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetBlockLocalPathInfoResponseProto) GetBlockLocalPathInfoResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetBlockLocalPathInfoResponseProto
 
instance P'.ReflectDescriptor GetBlockLocalPathInfoResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18, 26]) (P'.fromDistinctAscList [10, 18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.GetBlockLocalPathInfoResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientDatanodeProtocolProtos\"], baseName = MName \"GetBlockLocalPathInfoResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientDatanodeProtocolProtos\",\"GetBlockLocalPathInfoResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetBlockLocalPathInfoResponseProto.block\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientDatanodeProtocolProtos\",MName \"GetBlockLocalPathInfoResponseProto\"], baseName' = FName \"block\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ExtendedBlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"ExtendedBlockProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetBlockLocalPathInfoResponseProto.localPath\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientDatanodeProtocolProtos\",MName \"GetBlockLocalPathInfoResponseProto\"], baseName' = FName \"localPath\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetBlockLocalPathInfoResponseProto.localMetaPath\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientDatanodeProtocolProtos\",MName \"GetBlockLocalPathInfoResponseProto\"], baseName' = FName \"localMetaPath\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetBlockLocalPathInfoResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetBlockLocalPathInfoResponseProto where
  textPut msg
   = do
       P'.tellT "block" (block msg)
       P'.tellT "localPath" (localPath msg)
       P'.tellT "localMetaPath" (localMetaPath msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'block, parse'localPath, parse'localMetaPath]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'block
         = P'.try
            (do
               v <- P'.getT "block"
               Prelude'.return (\ o -> o{block = v}))
        parse'localPath
         = P'.try
            (do
               v <- P'.getT "localPath"
               Prelude'.return (\ o -> o{localPath = v}))
        parse'localMetaPath
         = P'.try
            (do
               v <- P'.getT "localMetaPath"
               Prelude'.return (\ o -> o{localMetaPath = v}))