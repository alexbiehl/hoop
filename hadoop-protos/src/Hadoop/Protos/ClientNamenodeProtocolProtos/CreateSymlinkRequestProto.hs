{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.CreateSymlinkRequestProto (CreateSymlinkRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.FsPermissionProto as HdfsProtos (FsPermissionProto)
 
data CreateSymlinkRequestProto = CreateSymlinkRequestProto{target :: !(P'.Utf8), link :: !(P'.Utf8),
                                                           dirPerm :: !(HdfsProtos.FsPermissionProto), createParent :: !(P'.Bool)}
                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CreateSymlinkRequestProto where
  mergeAppend (CreateSymlinkRequestProto x'1 x'2 x'3 x'4) (CreateSymlinkRequestProto y'1 y'2 y'3 y'4)
   = CreateSymlinkRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default CreateSymlinkRequestProto where
  defaultValue = CreateSymlinkRequestProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire CreateSymlinkRequestProto where
  wireSize ft' self'@(CreateSymlinkRequestProto x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizeReq 1 11 x'3 + P'.wireSizeReq 1 8 x'4)
  wirePut ft' self'@(CreateSymlinkRequestProto x'1 x'2 x'3 x'4)
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
             P'.wirePutReq 26 11 x'3
             P'.wirePutReq 32 8 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{target = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{link = new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{dirPerm = P'.mergeAppend (dirPerm old'Self) (new'Field)}) (P'.wireGet 11)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{createParent = new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> CreateSymlinkRequestProto) CreateSymlinkRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB CreateSymlinkRequestProto
 
instance P'.ReflectDescriptor CreateSymlinkRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18, 26, 32]) (P'.fromDistinctAscList [10, 18, 26, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.CreateSymlinkRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"CreateSymlinkRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"CreateSymlinkRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CreateSymlinkRequestProto.target\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CreateSymlinkRequestProto\"], baseName' = FName \"target\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CreateSymlinkRequestProto.link\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CreateSymlinkRequestProto\"], baseName' = FName \"link\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CreateSymlinkRequestProto.dirPerm\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CreateSymlinkRequestProto\"], baseName' = FName \"dirPerm\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.FsPermissionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"FsPermissionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.CreateSymlinkRequestProto.createParent\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"CreateSymlinkRequestProto\"], baseName' = FName \"createParent\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType CreateSymlinkRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg CreateSymlinkRequestProto where
  textPut msg
   = do
       P'.tellT "target" (target msg)
       P'.tellT "link" (link msg)
       P'.tellT "dirPerm" (dirPerm msg)
       P'.tellT "createParent" (createParent msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'target, parse'link, parse'dirPerm, parse'createParent]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'target
         = P'.try
            (do
               v <- P'.getT "target"
               Prelude'.return (\ o -> o{target = v}))
        parse'link
         = P'.try
            (do
               v <- P'.getT "link"
               Prelude'.return (\ o -> o{link = v}))
        parse'dirPerm
         = P'.try
            (do
               v <- P'.getT "dirPerm"
               Prelude'.return (\ o -> o{dirPerm = v}))
        parse'createParent
         = P'.try
            (do
               v <- P'.getT "createParent"
               Prelude'.return (\ o -> o{createParent = v}))