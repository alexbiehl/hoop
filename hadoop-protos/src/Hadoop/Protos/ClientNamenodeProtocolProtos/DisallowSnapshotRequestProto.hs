{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.DisallowSnapshotRequestProto (DisallowSnapshotRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data DisallowSnapshotRequestProto = DisallowSnapshotRequestProto{snapshotRoot :: !(P'.Utf8)}
                                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable DisallowSnapshotRequestProto where
  mergeAppend (DisallowSnapshotRequestProto x'1) (DisallowSnapshotRequestProto y'1)
   = DisallowSnapshotRequestProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default DisallowSnapshotRequestProto where
  defaultValue = DisallowSnapshotRequestProto P'.defaultValue
 
instance P'.Wire DisallowSnapshotRequestProto where
  wireSize ft' self'@(DisallowSnapshotRequestProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1)
  wirePut ft' self'@(DisallowSnapshotRequestProto x'1)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{snapshotRoot = new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> DisallowSnapshotRequestProto) DisallowSnapshotRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB DisallowSnapshotRequestProto
 
instance P'.ReflectDescriptor DisallowSnapshotRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.DisallowSnapshotRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"DisallowSnapshotRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"DisallowSnapshotRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.DisallowSnapshotRequestProto.snapshotRoot\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"DisallowSnapshotRequestProto\"], baseName' = FName \"snapshotRoot\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType DisallowSnapshotRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg DisallowSnapshotRequestProto where
  textPut msg
   = do
       P'.tellT "snapshotRoot" (snapshotRoot msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'snapshotRoot]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'snapshotRoot
         = P'.try
            (do
               v <- P'.getT "snapshotRoot"
               Prelude'.return (\ o -> o{snapshotRoot = v}))