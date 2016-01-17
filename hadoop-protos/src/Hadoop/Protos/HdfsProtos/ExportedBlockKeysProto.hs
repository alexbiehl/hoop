{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.ExportedBlockKeysProto (ExportedBlockKeysProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.BlockKeyProto as HdfsProtos (BlockKeyProto)
 
data ExportedBlockKeysProto = ExportedBlockKeysProto{isBlockTokenEnabled :: !(P'.Bool), keyUpdateInterval :: !(P'.Word64),
                                                     tokenLifeTime :: !(P'.Word64), currentKey :: !(HdfsProtos.BlockKeyProto),
                                                     allKeys :: !(P'.Seq HdfsProtos.BlockKeyProto)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ExportedBlockKeysProto where
  mergeAppend (ExportedBlockKeysProto x'1 x'2 x'3 x'4 x'5) (ExportedBlockKeysProto y'1 y'2 y'3 y'4 y'5)
   = ExportedBlockKeysProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
 
instance P'.Default ExportedBlockKeysProto where
  defaultValue = ExportedBlockKeysProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire ExportedBlockKeysProto where
  wireSize ft' self'@(ExportedBlockKeysProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 8 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeReq 1 4 x'3 + P'.wireSizeReq 1 11 x'4 +
             P'.wireSizeRep 1 11 x'5)
  wirePut ft' self'@(ExportedBlockKeysProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 8 x'1
             P'.wirePutReq 16 4 x'2
             P'.wirePutReq 24 4 x'3
             P'.wirePutReq 34 11 x'4
             P'.wirePutRep 42 11 x'5
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{isBlockTokenEnabled = new'Field}) (P'.wireGet 8)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{keyUpdateInterval = new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{tokenLifeTime = new'Field}) (P'.wireGet 4)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{currentKey = P'.mergeAppend (currentKey old'Self) (new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{allKeys = P'.append (allKeys old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ExportedBlockKeysProto) ExportedBlockKeysProto where
  getVal m' f' = f' m'
 
instance P'.GPB ExportedBlockKeysProto
 
instance P'.ReflectDescriptor ExportedBlockKeysProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 16, 24, 34]) (P'.fromDistinctAscList [8, 16, 24, 34, 42])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.ExportedBlockKeysProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"ExportedBlockKeysProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"ExportedBlockKeysProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ExportedBlockKeysProto.isBlockTokenEnabled\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ExportedBlockKeysProto\"], baseName' = FName \"isBlockTokenEnabled\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ExportedBlockKeysProto.keyUpdateInterval\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ExportedBlockKeysProto\"], baseName' = FName \"keyUpdateInterval\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ExportedBlockKeysProto.tokenLifeTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ExportedBlockKeysProto\"], baseName' = FName \"tokenLifeTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ExportedBlockKeysProto.currentKey\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ExportedBlockKeysProto\"], baseName' = FName \"currentKey\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.BlockKeyProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"BlockKeyProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ExportedBlockKeysProto.allKeys\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"ExportedBlockKeysProto\"], baseName' = FName \"allKeys\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.BlockKeyProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"BlockKeyProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ExportedBlockKeysProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ExportedBlockKeysProto where
  textPut msg
   = do
       P'.tellT "isBlockTokenEnabled" (isBlockTokenEnabled msg)
       P'.tellT "keyUpdateInterval" (keyUpdateInterval msg)
       P'.tellT "tokenLifeTime" (tokenLifeTime msg)
       P'.tellT "currentKey" (currentKey msg)
       P'.tellT "allKeys" (allKeys msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'isBlockTokenEnabled, parse'keyUpdateInterval, parse'tokenLifeTime, parse'currentKey, parse'allKeys])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'isBlockTokenEnabled
         = P'.try
            (do
               v <- P'.getT "isBlockTokenEnabled"
               Prelude'.return (\ o -> o{isBlockTokenEnabled = v}))
        parse'keyUpdateInterval
         = P'.try
            (do
               v <- P'.getT "keyUpdateInterval"
               Prelude'.return (\ o -> o{keyUpdateInterval = v}))
        parse'tokenLifeTime
         = P'.try
            (do
               v <- P'.getT "tokenLifeTime"
               Prelude'.return (\ o -> o{tokenLifeTime = v}))
        parse'currentKey
         = P'.try
            (do
               v <- P'.getT "currentKey"
               Prelude'.return (\ o -> o{currentKey = v}))
        parse'allKeys
         = P'.try
            (do
               v <- P'.getT "allKeys"
               Prelude'.return (\ o -> o{allKeys = P'.append (allKeys o) v}))