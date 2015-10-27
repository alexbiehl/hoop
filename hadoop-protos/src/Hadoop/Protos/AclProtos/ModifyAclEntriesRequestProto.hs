{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.AclProtos.ModifyAclEntriesRequestProto (ModifyAclEntriesRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.AclProtos.AclEntryProto as AclProtos (AclEntryProto)
 
data ModifyAclEntriesRequestProto = ModifyAclEntriesRequestProto{src :: !(P'.Utf8), aclSpec :: !(P'.Seq AclProtos.AclEntryProto)}
                                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ModifyAclEntriesRequestProto where
  mergeAppend (ModifyAclEntriesRequestProto x'1 x'2) (ModifyAclEntriesRequestProto y'1 y'2)
   = ModifyAclEntriesRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ModifyAclEntriesRequestProto where
  defaultValue = ModifyAclEntriesRequestProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ModifyAclEntriesRequestProto where
  wireSize ft' self'@(ModifyAclEntriesRequestProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePut ft' self'@(ModifyAclEntriesRequestProto x'1 x'2)
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
             P'.wirePutRep 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{src = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{aclSpec = P'.append (aclSpec old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ModifyAclEntriesRequestProto) ModifyAclEntriesRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB ModifyAclEntriesRequestProto
 
instance P'.ReflectDescriptor ModifyAclEntriesRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.ModifyAclEntriesRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"AclProtos\"], baseName = MName \"ModifyAclEntriesRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"AclProtos\",\"ModifyAclEntriesRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ModifyAclEntriesRequestProto.src\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"AclProtos\",MName \"ModifyAclEntriesRequestProto\"], baseName' = FName \"src\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ModifyAclEntriesRequestProto.aclSpec\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"AclProtos\",MName \"ModifyAclEntriesRequestProto\"], baseName' = FName \"aclSpec\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.AclEntryProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"AclProtos\"], baseName = MName \"AclEntryProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ModifyAclEntriesRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ModifyAclEntriesRequestProto where
  textPut msg
   = do
       P'.tellT "src" (src msg)
       P'.tellT "aclSpec" (aclSpec msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'src, parse'aclSpec]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'src
         = P'.try
            (do
               v <- P'.getT "src"
               Prelude'.return (\ o -> o{src = v}))
        parse'aclSpec
         = P'.try
            (do
               v <- P'.getT "aclSpec"
               Prelude'.return (\ o -> o{aclSpec = P'.append (aclSpec o) v}))