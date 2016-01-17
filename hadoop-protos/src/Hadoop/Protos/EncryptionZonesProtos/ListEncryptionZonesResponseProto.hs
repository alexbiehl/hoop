{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.EncryptionZonesProtos.ListEncryptionZonesResponseProto (ListEncryptionZonesResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.EncryptionZonesProtos.EncryptionZoneProto as EncryptionZonesProtos (EncryptionZoneProto)
 
data ListEncryptionZonesResponseProto = ListEncryptionZonesResponseProto{zones ::
                                                                         !(P'.Seq EncryptionZonesProtos.EncryptionZoneProto),
                                                                         hasMore :: !(P'.Bool)}
                                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ListEncryptionZonesResponseProto where
  mergeAppend (ListEncryptionZonesResponseProto x'1 x'2) (ListEncryptionZonesResponseProto y'1 y'2)
   = ListEncryptionZonesResponseProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ListEncryptionZonesResponseProto where
  defaultValue = ListEncryptionZonesResponseProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ListEncryptionZonesResponseProto where
  wireSize ft' self'@(ListEncryptionZonesResponseProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeReq 1 8 x'2)
  wirePut ft' self'@(ListEncryptionZonesResponseProto x'1 x'2)
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
             P'.wirePutReq 16 8 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{zones = P'.append (zones old'Self) new'Field}) (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{hasMore = new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ListEncryptionZonesResponseProto) ListEncryptionZonesResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB ListEncryptionZonesResponseProto
 
instance P'.ReflectDescriptor ListEncryptionZonesResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [16]) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.ListEncryptionZonesResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"EncryptionZonesProtos\"], baseName = MName \"ListEncryptionZonesResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"EncryptionZonesProtos\",\"ListEncryptionZonesResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ListEncryptionZonesResponseProto.zones\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"EncryptionZonesProtos\",MName \"ListEncryptionZonesResponseProto\"], baseName' = FName \"zones\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.EncryptionZoneProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"EncryptionZonesProtos\"], baseName = MName \"EncryptionZoneProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ListEncryptionZonesResponseProto.hasMore\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"EncryptionZonesProtos\",MName \"ListEncryptionZonesResponseProto\"], baseName' = FName \"hasMore\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ListEncryptionZonesResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ListEncryptionZonesResponseProto where
  textPut msg
   = do
       P'.tellT "zones" (zones msg)
       P'.tellT "hasMore" (hasMore msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'zones, parse'hasMore]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'zones
         = P'.try
            (do
               v <- P'.getT "zones"
               Prelude'.return (\ o -> o{zones = P'.append (zones o) v}))
        parse'hasMore
         = P'.try
            (do
               v <- P'.getT "hasMore"
               Prelude'.return (\ o -> o{hasMore = v}))