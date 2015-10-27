{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.AclProtos.AclEntryProto (AclEntryProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.AclProtos.AclEntryProto.AclEntryScopeProto as AclProtos.AclEntryProto (AclEntryScopeProto)
import qualified Hadoop.Protos.AclProtos.AclEntryProto.AclEntryTypeProto as AclProtos.AclEntryProto (AclEntryTypeProto)
import qualified Hadoop.Protos.AclProtos.AclEntryProto.FsActionProto as AclProtos.AclEntryProto (FsActionProto)
 
data AclEntryProto = AclEntryProto{type' :: !(AclProtos.AclEntryProto.AclEntryTypeProto),
                                   scope :: !(AclProtos.AclEntryProto.AclEntryScopeProto),
                                   permissions :: !(AclProtos.AclEntryProto.FsActionProto), name :: !(P'.Maybe P'.Utf8)}
                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AclEntryProto where
  mergeAppend (AclEntryProto x'1 x'2 x'3 x'4) (AclEntryProto y'1 y'2 y'3 y'4)
   = AclEntryProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default AclEntryProto where
  defaultValue = AclEntryProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire AclEntryProto where
  wireSize ft' self'@(AclEntryProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 14 x'1 + P'.wireSizeReq 1 14 x'2 + P'.wireSizeReq 1 14 x'3 + P'.wireSizeOpt 1 9 x'4)
  wirePut ft' self'@(AclEntryProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 14 x'1
             P'.wirePutReq 16 14 x'2
             P'.wirePutReq 24 14 x'3
             P'.wirePutOpt 34 9 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{type' = new'Field}) (P'.wireGet 14)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{scope = new'Field}) (P'.wireGet 14)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{permissions = new'Field}) (P'.wireGet 14)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{name = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> AclEntryProto) AclEntryProto where
  getVal m' f' = f' m'
 
instance P'.GPB AclEntryProto
 
instance P'.ReflectDescriptor AclEntryProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 16, 24]) (P'.fromDistinctAscList [8, 16, 24, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.AclEntryProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"AclProtos\"], baseName = MName \"AclEntryProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"AclProtos\",\"AclEntryProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AclEntryProto.type\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"AclProtos\",MName \"AclEntryProto\"], baseName' = FName \"type'\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.AclEntryProto.AclEntryTypeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"AclProtos\",MName \"AclEntryProto\"], baseName = MName \"AclEntryTypeProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AclEntryProto.scope\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"AclProtos\",MName \"AclEntryProto\"], baseName' = FName \"scope\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.AclEntryProto.AclEntryScopeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"AclProtos\",MName \"AclEntryProto\"], baseName = MName \"AclEntryScopeProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AclEntryProto.permissions\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"AclProtos\",MName \"AclEntryProto\"], baseName' = FName \"permissions\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.AclEntryProto.FsActionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"AclProtos\",MName \"AclEntryProto\"], baseName = MName \"FsActionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.AclEntryProto.name\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"AclProtos\",MName \"AclEntryProto\"], baseName' = FName \"name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType AclEntryProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg AclEntryProto where
  textPut msg
   = do
       P'.tellT "type" (type' msg)
       P'.tellT "scope" (scope msg)
       P'.tellT "permissions" (permissions msg)
       P'.tellT "name" (name msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'type', parse'scope, parse'permissions, parse'name]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'type'
         = P'.try
            (do
               v <- P'.getT "type"
               Prelude'.return (\ o -> o{type' = v}))
        parse'scope
         = P'.try
            (do
               v <- P'.getT "scope"
               Prelude'.return (\ o -> o{scope = v}))
        parse'permissions
         = P'.try
            (do
               v <- P'.getT "permissions"
               Prelude'.return (\ o -> o{permissions = v}))
        parse'name
         = P'.try
            (do
               v <- P'.getT "name"
               Prelude'.return (\ o -> o{name = v}))