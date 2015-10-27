{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ProtocolInfoProtos.ProtocolSignatureProto (ProtocolSignatureProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ProtocolSignatureProto = ProtocolSignatureProto{version :: !(P'.Word64), methods :: !(P'.Seq P'.Word32)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ProtocolSignatureProto where
  mergeAppend (ProtocolSignatureProto x'1 x'2) (ProtocolSignatureProto y'1 y'2)
   = ProtocolSignatureProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ProtocolSignatureProto where
  defaultValue = ProtocolSignatureProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ProtocolSignatureProto where
  wireSize ft' self'@(ProtocolSignatureProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 4 x'1 + P'.wireSizeRep 1 13 x'2)
  wirePut ft' self'@(ProtocolSignatureProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 4 x'1
             P'.wirePutRep 16 13 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{version = new'Field}) (P'.wireGet 4)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{methods = P'.append (methods old'Self) new'Field}) (P'.wireGet 13)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{methods = P'.mergeAppend (methods old'Self) new'Field})
                    (P'.wireGetPacked 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ProtocolSignatureProto) ProtocolSignatureProto where
  getVal m' f' = f' m'
 
instance P'.GPB ProtocolSignatureProto
 
instance P'.ReflectDescriptor ProtocolSignatureProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8, 16, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.ProtocolSignatureProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ProtocolInfoProtos\"], baseName = MName \"ProtocolSignatureProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ProtocolInfoProtos\",\"ProtocolSignatureProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.ProtocolSignatureProto.version\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ProtocolInfoProtos\",MName \"ProtocolSignatureProto\"], baseName' = FName \"version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.ProtocolSignatureProto.methods\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ProtocolInfoProtos\",MName \"ProtocolSignatureProto\"], baseName' = FName \"methods\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Just (WireTag {getWireTag = 16},WireTag {getWireTag = 18}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ProtocolSignatureProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ProtocolSignatureProto where
  textPut msg
   = do
       P'.tellT "version" (version msg)
       P'.tellT "methods" (methods msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'version, parse'methods]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'version
         = P'.try
            (do
               v <- P'.getT "version"
               Prelude'.return (\ o -> o{version = v}))
        parse'methods
         = P'.try
            (do
               v <- P'.getT "methods"
               Prelude'.return (\ o -> o{methods = P'.append (methods o) v}))