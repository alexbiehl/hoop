{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.CorruptFileBlocksProto (CorruptFileBlocksProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data CorruptFileBlocksProto = CorruptFileBlocksProto{files :: !(P'.Seq P'.Utf8), cookie :: !(P'.Utf8)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CorruptFileBlocksProto where
  mergeAppend (CorruptFileBlocksProto x'1 x'2) (CorruptFileBlocksProto y'1 y'2)
   = CorruptFileBlocksProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default CorruptFileBlocksProto where
  defaultValue = CorruptFileBlocksProto P'.defaultValue P'.defaultValue
 
instance P'.Wire CorruptFileBlocksProto where
  wireSize ft' self'@(CorruptFileBlocksProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 9 x'1 + P'.wireSizeReq 1 9 x'2)
  wirePut ft' self'@(CorruptFileBlocksProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 9 x'1
             P'.wirePutReq 18 9 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{files = P'.append (files old'Self) new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{cookie = new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> CorruptFileBlocksProto) CorruptFileBlocksProto where
  getVal m' f' = f' m'
 
instance P'.GPB CorruptFileBlocksProto
 
instance P'.ReflectDescriptor CorruptFileBlocksProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [18]) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.CorruptFileBlocksProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"CorruptFileBlocksProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"CorruptFileBlocksProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CorruptFileBlocksProto.files\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"CorruptFileBlocksProto\"], baseName' = FName \"files\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CorruptFileBlocksProto.cookie\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"CorruptFileBlocksProto\"], baseName' = FName \"cookie\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType CorruptFileBlocksProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg CorruptFileBlocksProto where
  textPut msg
   = do
       P'.tellT "files" (files msg)
       P'.tellT "cookie" (cookie msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'files, parse'cookie]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'files
         = P'.try
            (do
               v <- P'.getT "files"
               Prelude'.return (\ o -> o{files = P'.append (files o) v}))
        parse'cookie
         = P'.try
            (do
               v <- P'.getT "cookie"
               Prelude'.return (\ o -> o{cookie = v}))