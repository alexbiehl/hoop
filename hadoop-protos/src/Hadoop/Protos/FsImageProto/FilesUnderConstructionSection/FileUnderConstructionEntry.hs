{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.FsImageProto.FilesUnderConstructionSection.FileUnderConstructionEntry (FileUnderConstructionEntry(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data FileUnderConstructionEntry = FileUnderConstructionEntry{inodeId :: !(P'.Maybe P'.Word64), fullPath :: !(P'.Maybe P'.Utf8)}
                                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable FileUnderConstructionEntry where
  mergeAppend (FileUnderConstructionEntry x'1 x'2) (FileUnderConstructionEntry y'1 y'2)
   = FileUnderConstructionEntry (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default FileUnderConstructionEntry where
  defaultValue = FileUnderConstructionEntry P'.defaultValue P'.defaultValue
 
instance P'.Wire FileUnderConstructionEntry where
  wireSize ft' self'@(FileUnderConstructionEntry x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 4 x'1 + P'.wireSizeOpt 1 9 x'2)
  wirePut ft' self'@(FileUnderConstructionEntry x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 4 x'1
             P'.wirePutOpt 18 9 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{inodeId = Prelude'.Just new'Field}) (P'.wireGet 4)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{fullPath = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> FileUnderConstructionEntry) FileUnderConstructionEntry where
  getVal m' f' = f' m'
 
instance P'.GPB FileUnderConstructionEntry
 
instance P'.ReflectDescriptor FileUnderConstructionEntry where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.FilesUnderConstructionSection.FileUnderConstructionEntry\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"FilesUnderConstructionSection\"], baseName = MName \"FileUnderConstructionEntry\"}, descFilePath = [\"Hadoop\",\"Protos\",\"FsImageProto\",\"FilesUnderConstructionSection\",\"FileUnderConstructionEntry.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.FilesUnderConstructionSection.FileUnderConstructionEntry.inodeId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"FilesUnderConstructionSection\",MName \"FileUnderConstructionEntry\"], baseName' = FName \"inodeId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.FilesUnderConstructionSection.FileUnderConstructionEntry.fullPath\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"FilesUnderConstructionSection\",MName \"FileUnderConstructionEntry\"], baseName' = FName \"fullPath\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType FileUnderConstructionEntry where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg FileUnderConstructionEntry where
  textPut msg
   = do
       P'.tellT "inodeId" (inodeId msg)
       P'.tellT "fullPath" (fullPath msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'inodeId, parse'fullPath]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'inodeId
         = P'.try
            (do
               v <- P'.getT "inodeId"
               Prelude'.return (\ o -> o{inodeId = v}))
        parse'fullPath
         = P'.try
            (do
               v <- P'.getT "fullPath"
               Prelude'.return (\ o -> o{fullPath = v}))