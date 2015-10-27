{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.GenericRefreshProtocolProtos.GenericRefreshRequestProto (GenericRefreshRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data GenericRefreshRequestProto = GenericRefreshRequestProto{identifier :: !(P'.Maybe P'.Utf8), args :: !(P'.Seq P'.Utf8)}
                                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GenericRefreshRequestProto where
  mergeAppend (GenericRefreshRequestProto x'1 x'2) (GenericRefreshRequestProto y'1 y'2)
   = GenericRefreshRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default GenericRefreshRequestProto where
  defaultValue = GenericRefreshRequestProto P'.defaultValue P'.defaultValue
 
instance P'.Wire GenericRefreshRequestProto where
  wireSize ft' self'@(GenericRefreshRequestProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeRep 1 9 x'2)
  wirePut ft' self'@(GenericRefreshRequestProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 9 x'1
             P'.wirePutRep 18 9 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{identifier = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{args = P'.append (args old'Self) new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GenericRefreshRequestProto) GenericRefreshRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB GenericRefreshRequestProto
 
instance P'.ReflectDescriptor GenericRefreshRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.GenericRefreshRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"GenericRefreshProtocolProtos\"], baseName = MName \"GenericRefreshRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"GenericRefreshProtocolProtos\",\"GenericRefreshRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.GenericRefreshRequestProto.identifier\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"GenericRefreshProtocolProtos\",MName \"GenericRefreshRequestProto\"], baseName' = FName \"identifier\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.GenericRefreshRequestProto.args\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"GenericRefreshProtocolProtos\",MName \"GenericRefreshRequestProto\"], baseName' = FName \"args\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GenericRefreshRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GenericRefreshRequestProto where
  textPut msg
   = do
       P'.tellT "identifier" (identifier msg)
       P'.tellT "args" (args msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'identifier, parse'args]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'identifier
         = P'.try
            (do
               v <- P'.getT "identifier"
               Prelude'.return (\ o -> o{identifier = v}))
        parse'args
         = P'.try
            (do
               v <- P'.getT "args"
               Prelude'.return (\ o -> o{args = P'.append (args o) v}))