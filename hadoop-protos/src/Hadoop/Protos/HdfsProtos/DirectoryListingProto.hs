{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.DirectoryListingProto (DirectoryListingProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.HdfsFileStatusProto as HdfsProtos (HdfsFileStatusProto)
 
data DirectoryListingProto = DirectoryListingProto{partialListing :: !(P'.Seq HdfsProtos.HdfsFileStatusProto),
                                                   remainingEntries :: !(P'.Word32)}
                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable DirectoryListingProto where
  mergeAppend (DirectoryListingProto x'1 x'2) (DirectoryListingProto y'1 y'2)
   = DirectoryListingProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default DirectoryListingProto where
  defaultValue = DirectoryListingProto P'.defaultValue P'.defaultValue
 
instance P'.Wire DirectoryListingProto where
  wireSize ft' self'@(DirectoryListingProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeReq 1 13 x'2)
  wirePut ft' self'@(DirectoryListingProto x'1 x'2)
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
             P'.wirePutReq 16 13 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{partialListing = P'.append (partialListing old'Self) new'Field})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{remainingEntries = new'Field}) (P'.wireGet 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> DirectoryListingProto) DirectoryListingProto where
  getVal m' f' = f' m'
 
instance P'.GPB DirectoryListingProto
 
instance P'.ReflectDescriptor DirectoryListingProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [16]) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.DirectoryListingProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DirectoryListingProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"DirectoryListingProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DirectoryListingProto.partialListing\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DirectoryListingProto\"], baseName' = FName \"partialListing\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.HdfsFileStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"HdfsFileStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DirectoryListingProto.remainingEntries\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"DirectoryListingProto\"], baseName' = FName \"remainingEntries\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType DirectoryListingProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg DirectoryListingProto where
  textPut msg
   = do
       P'.tellT "partialListing" (partialListing msg)
       P'.tellT "remainingEntries" (remainingEntries msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'partialListing, parse'remainingEntries]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'partialListing
         = P'.try
            (do
               v <- P'.getT "partialListing"
               Prelude'.return (\ o -> o{partialListing = P'.append (partialListing o) v}))
        parse'remainingEntries
         = P'.try
            (do
               v <- P'.getT "remainingEntries"
               Prelude'.return (\ o -> o{remainingEntries = v}))