{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.GetSnapshottableDirListingResponseProto
       (GetSnapshottableDirListingResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.SnapshottableDirectoryListingProto as HdfsProtos (SnapshottableDirectoryListingProto)
 
data GetSnapshottableDirListingResponseProto = GetSnapshottableDirListingResponseProto{snapshottableDirList ::
                                                                                       !(P'.Maybe
                                                                                          HdfsProtos.SnapshottableDirectoryListingProto)}
                                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetSnapshottableDirListingResponseProto where
  mergeAppend (GetSnapshottableDirListingResponseProto x'1) (GetSnapshottableDirListingResponseProto y'1)
   = GetSnapshottableDirListingResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetSnapshottableDirListingResponseProto where
  defaultValue = GetSnapshottableDirListingResponseProto P'.defaultValue
 
instance P'.Wire GetSnapshottableDirListingResponseProto where
  wireSize ft' self'@(GetSnapshottableDirListingResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1)
  wirePut ft' self'@(GetSnapshottableDirListingResponseProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 11 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{snapshottableDirList = P'.mergeAppend (snapshottableDirList old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetSnapshottableDirListingResponseProto) GetSnapshottableDirListingResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetSnapshottableDirListingResponseProto
 
instance P'.ReflectDescriptor GetSnapshottableDirListingResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.GetSnapshottableDirListingResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"GetSnapshottableDirListingResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"GetSnapshottableDirListingResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetSnapshottableDirListingResponseProto.snapshottableDirList\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetSnapshottableDirListingResponseProto\"], baseName' = FName \"snapshottableDirList\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.SnapshottableDirectoryListingProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"SnapshottableDirectoryListingProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetSnapshottableDirListingResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetSnapshottableDirListingResponseProto where
  textPut msg
   = do
       P'.tellT "snapshottableDirList" (snapshottableDirList msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'snapshottableDirList]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'snapshottableDirList
         = P'.try
            (do
               v <- P'.getT "snapshottableDirList"
               Prelude'.return (\ o -> o{snapshottableDirList = v}))