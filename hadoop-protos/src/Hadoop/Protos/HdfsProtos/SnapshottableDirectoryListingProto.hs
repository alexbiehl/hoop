{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.SnapshottableDirectoryListingProto (SnapshottableDirectoryListingProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.SnapshottableDirectoryStatusProto as HdfsProtos (SnapshottableDirectoryStatusProto)
 
data SnapshottableDirectoryListingProto = SnapshottableDirectoryListingProto{snapshottableDirListing ::
                                                                             !(P'.Seq HdfsProtos.SnapshottableDirectoryStatusProto)}
                                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SnapshottableDirectoryListingProto where
  mergeAppend (SnapshottableDirectoryListingProto x'1) (SnapshottableDirectoryListingProto y'1)
   = SnapshottableDirectoryListingProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default SnapshottableDirectoryListingProto where
  defaultValue = SnapshottableDirectoryListingProto P'.defaultValue
 
instance P'.Wire SnapshottableDirectoryListingProto where
  wireSize ft' self'@(SnapshottableDirectoryListingProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(SnapshottableDirectoryListingProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 11 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{snapshottableDirListing = P'.append (snapshottableDirListing old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> SnapshottableDirectoryListingProto) SnapshottableDirectoryListingProto where
  getVal m' f' = f' m'
 
instance P'.GPB SnapshottableDirectoryListingProto
 
instance P'.ReflectDescriptor SnapshottableDirectoryListingProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.SnapshottableDirectoryListingProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"SnapshottableDirectoryListingProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"SnapshottableDirectoryListingProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.SnapshottableDirectoryListingProto.snapshottableDirListing\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"SnapshottableDirectoryListingProto\"], baseName' = FName \"snapshottableDirListing\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.SnapshottableDirectoryStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"SnapshottableDirectoryStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType SnapshottableDirectoryListingProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg SnapshottableDirectoryListingProto where
  textPut msg
   = do
       P'.tellT "snapshottableDirListing" (snapshottableDirListing msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'snapshottableDirListing]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'snapshottableDirListing
         = P'.try
            (do
               v <- P'.getT "snapshottableDirListing"
               Prelude'.return (\ o -> o{snapshottableDirListing = P'.append (snapshottableDirListing o) v}))