{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.AclProtos.AclStatusProto (AclStatusProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.AclProtos.AclEntryProto as AclProtos (AclEntryProto)
import qualified Hadoop.Protos.HdfsProtos.FsPermissionProto as HdfsProtos (FsPermissionProto)
 
data AclStatusProto = AclStatusProto{owner :: !(P'.Utf8), group :: !(P'.Utf8), sticky :: !(P'.Bool),
                                     entries :: !(P'.Seq AclProtos.AclEntryProto),
                                     permission :: !(P'.Maybe HdfsProtos.FsPermissionProto)}
                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AclStatusProto where
  mergeAppend (AclStatusProto x'1 x'2 x'3 x'4 x'5) (AclStatusProto y'1 y'2 y'3 y'4 y'5)
   = AclStatusProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
 
instance P'.Default AclStatusProto where
  defaultValue = AclStatusProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire AclStatusProto where
  wireSize ft' self'@(AclStatusProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeReq 1 8 x'3 + P'.wireSizeRep 1 11 x'4 +
             P'.wireSizeOpt 1 11 x'5)
  wirePut ft' self'@(AclStatusProto x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 9 x'1
             P'.wirePutReq 18 9 x'2
             P'.wirePutReq 24 8 x'3
             P'.wirePutRep 34 11 x'4
             P'.wirePutOpt 42 11 x'5
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{owner = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{group = new'Field}) (P'.wireGet 9)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{sticky = new'Field}) (P'.wireGet 8)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{entries = P'.append (entries old'Self) new'Field}) (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{permission = P'.mergeAppend (permission old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> AclStatusProto) AclStatusProto where
  getVal m' f' = f' m'
 
instance P'.GPB AclStatusProto
 
instance P'.ReflectDescriptor AclStatusProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18, 24]) (P'.fromDistinctAscList [10, 18, 24, 34, 42])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.AclStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"AclProtos\"], baseName = MName \"AclStatusProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"AclProtos\",\"AclStatusProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AclStatusProto.owner\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"AclProtos\",MName \"AclStatusProto\"], baseName' = FName \"owner\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AclStatusProto.group\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"AclProtos\",MName \"AclStatusProto\"], baseName' = FName \"group\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AclStatusProto.sticky\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"AclProtos\",MName \"AclStatusProto\"], baseName' = FName \"sticky\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AclStatusProto.entries\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"AclProtos\",MName \"AclStatusProto\"], baseName' = FName \"entries\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.AclEntryProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"AclProtos\"], baseName = MName \"AclEntryProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AclStatusProto.permission\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"AclProtos\",MName \"AclStatusProto\"], baseName' = FName \"permission\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.FsPermissionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"FsPermissionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType AclStatusProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg AclStatusProto where
  textPut msg
   = do
       P'.tellT "owner" (owner msg)
       P'.tellT "group" (group msg)
       P'.tellT "sticky" (sticky msg)
       P'.tellT "entries" (entries msg)
       P'.tellT "permission" (permission msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'owner, parse'group, parse'sticky, parse'entries, parse'permission]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'owner
         = P'.try
            (do
               v <- P'.getT "owner"
               Prelude'.return (\ o -> o{owner = v}))
        parse'group
         = P'.try
            (do
               v <- P'.getT "group"
               Prelude'.return (\ o -> o{group = v}))
        parse'sticky
         = P'.try
            (do
               v <- P'.getT "sticky"
               Prelude'.return (\ o -> o{sticky = v}))
        parse'entries
         = P'.try
            (do
               v <- P'.getT "entries"
               Prelude'.return (\ o -> o{entries = P'.append (entries o) v}))
        parse'permission
         = P'.try
            (do
               v <- P'.getT "permission"
               Prelude'.return (\ o -> o{permission = v}))