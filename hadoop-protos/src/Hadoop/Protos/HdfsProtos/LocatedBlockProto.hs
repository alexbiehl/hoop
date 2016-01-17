{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HdfsProtos.LocatedBlockProto (LocatedBlockProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HdfsProtos.DatanodeInfoProto as HdfsProtos (DatanodeInfoProto)
import qualified Hadoop.Protos.HdfsProtos.ExtendedBlockProto as HdfsProtos (ExtendedBlockProto)
import qualified Hadoop.Protos.HdfsProtos.StorageTypeProto as HdfsProtos (StorageTypeProto)
import qualified Hadoop.Protos.SecurityProtos.TokenProto as SecurityProtos (TokenProto)
 
data LocatedBlockProto = LocatedBlockProto{b :: !(HdfsProtos.ExtendedBlockProto), offset :: !(P'.Word64),
                                           locs :: !(P'.Seq HdfsProtos.DatanodeInfoProto), corrupt :: !(P'.Bool),
                                           blockToken :: !(SecurityProtos.TokenProto), isCached :: !(P'.Seq P'.Bool),
                                           storageTypes :: !(P'.Seq HdfsProtos.StorageTypeProto), storageIDs :: !(P'.Seq P'.Utf8)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable LocatedBlockProto where
  mergeAppend (LocatedBlockProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8) (LocatedBlockProto y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8)
   = LocatedBlockProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
 
instance P'.Default LocatedBlockProto where
  defaultValue
   = LocatedBlockProto P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire LocatedBlockProto where
  wireSize ft' self'@(LocatedBlockProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 11 x'1 + P'.wireSizeReq 1 4 x'2 + P'.wireSizeRep 1 11 x'3 + P'.wireSizeReq 1 8 x'4 +
             P'.wireSizeReq 1 11 x'5
             + P'.wireSizePacked 1 8 x'6
             + P'.wireSizeRep 1 14 x'7
             + P'.wireSizeRep 1 9 x'8)
  wirePut ft' self'@(LocatedBlockProto x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 11 x'1
             P'.wirePutReq 16 4 x'2
             P'.wirePutRep 26 11 x'3
             P'.wirePutReq 32 8 x'4
             P'.wirePutReq 42 11 x'5
             P'.wirePutPacked 50 8 x'6
             P'.wirePutRep 56 14 x'7
             P'.wirePutRep 66 9 x'8
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{b = P'.mergeAppend (b old'Self) (new'Field)}) (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{offset = new'Field}) (P'.wireGet 4)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{locs = P'.append (locs old'Self) new'Field}) (P'.wireGet 11)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{corrupt = new'Field}) (P'.wireGet 8)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{blockToken = P'.mergeAppend (blockToken old'Self) (new'Field)})
                    (P'.wireGet 11)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{isCached = P'.append (isCached old'Self) new'Field}) (P'.wireGet 8)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{isCached = P'.mergeAppend (isCached old'Self) new'Field})
                    (P'.wireGetPacked 8)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{storageTypes = P'.append (storageTypes old'Self) new'Field})
                    (P'.wireGet 14)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{storageTypes = P'.mergeAppend (storageTypes old'Self) new'Field})
                    (P'.wireGetPacked 14)
             66 -> Prelude'.fmap (\ !new'Field -> old'Self{storageIDs = P'.append (storageIDs old'Self) new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> LocatedBlockProto) LocatedBlockProto where
  getVal m' f' = f' m'
 
instance P'.GPB LocatedBlockProto
 
instance P'.ReflectDescriptor LocatedBlockProto where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [10, 16, 32, 42]) (P'.fromDistinctAscList [10, 16, 26, 32, 42, 48, 50, 56, 58, 66])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.LocatedBlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"LocatedBlockProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HdfsProtos\",\"LocatedBlockProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.LocatedBlockProto.b\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"LocatedBlockProto\"], baseName' = FName \"b\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.ExtendedBlockProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"ExtendedBlockProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.LocatedBlockProto.offset\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"LocatedBlockProto\"], baseName' = FName \"offset\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.LocatedBlockProto.locs\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"LocatedBlockProto\"], baseName' = FName \"locs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.DatanodeInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"DatanodeInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.LocatedBlockProto.corrupt\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"LocatedBlockProto\"], baseName' = FName \"corrupt\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.LocatedBlockProto.blockToken\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"LocatedBlockProto\"], baseName' = FName \"blockToken\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.TokenProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"SecurityProtos\"], baseName = MName \"TokenProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.LocatedBlockProto.isCached\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"LocatedBlockProto\"], baseName' = FName \"isCached\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Just (WireTag {getWireTag = 48},WireTag {getWireTag = 50}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.LocatedBlockProto.storageTypes\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"LocatedBlockProto\"], baseName' = FName \"storageTypes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Just (WireTag {getWireTag = 56},WireTag {getWireTag = 58}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.StorageTypeProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HdfsProtos\"], baseName = MName \"StorageTypeProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.LocatedBlockProto.storageIDs\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HdfsProtos\",MName \"LocatedBlockProto\"], baseName' = FName \"storageIDs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType LocatedBlockProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg LocatedBlockProto where
  textPut msg
   = do
       P'.tellT "b" (b msg)
       P'.tellT "offset" (offset msg)
       P'.tellT "locs" (locs msg)
       P'.tellT "corrupt" (corrupt msg)
       P'.tellT "blockToken" (blockToken msg)
       P'.tellT "isCached" (isCached msg)
       P'.tellT "storageTypes" (storageTypes msg)
       P'.tellT "storageIDs" (storageIDs msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'b, parse'offset, parse'locs, parse'corrupt, parse'blockToken, parse'isCached, parse'storageTypes,
                   parse'storageIDs])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'b
         = P'.try
            (do
               v <- P'.getT "b"
               Prelude'.return (\ o -> o{b = v}))
        parse'offset
         = P'.try
            (do
               v <- P'.getT "offset"
               Prelude'.return (\ o -> o{offset = v}))
        parse'locs
         = P'.try
            (do
               v <- P'.getT "locs"
               Prelude'.return (\ o -> o{locs = P'.append (locs o) v}))
        parse'corrupt
         = P'.try
            (do
               v <- P'.getT "corrupt"
               Prelude'.return (\ o -> o{corrupt = v}))
        parse'blockToken
         = P'.try
            (do
               v <- P'.getT "blockToken"
               Prelude'.return (\ o -> o{blockToken = v}))
        parse'isCached
         = P'.try
            (do
               v <- P'.getT "isCached"
               Prelude'.return (\ o -> o{isCached = P'.append (isCached o) v}))
        parse'storageTypes
         = P'.try
            (do
               v <- P'.getT "storageTypes"
               Prelude'.return (\ o -> o{storageTypes = P'.append (storageTypes o) v}))
        parse'storageIDs
         = P'.try
            (do
               v <- P'.getT "storageIDs"
               Prelude'.return (\ o -> o{storageIDs = P'.append (storageIDs o) v}))