{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ProtocolInfoProtos.GetProtocolSignatureRequestProto (GetProtocolSignatureRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data GetProtocolSignatureRequestProto = GetProtocolSignatureRequestProto{protocol :: !(P'.Utf8), rpcKind :: !(P'.Utf8)}
                                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetProtocolSignatureRequestProto where
  mergeAppend (GetProtocolSignatureRequestProto x'1 x'2) (GetProtocolSignatureRequestProto y'1 y'2)
   = GetProtocolSignatureRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default GetProtocolSignatureRequestProto where
  defaultValue = GetProtocolSignatureRequestProto P'.defaultValue P'.defaultValue
 
instance P'.Wire GetProtocolSignatureRequestProto where
  wireSize ft' self'@(GetProtocolSignatureRequestProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1 + P'.wireSizeReq 1 9 x'2)
  wirePut ft' self'@(GetProtocolSignatureRequestProto x'1 x'2)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{protocol = new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{rpcKind = new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetProtocolSignatureRequestProto) GetProtocolSignatureRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetProtocolSignatureRequestProto
 
instance P'.ReflectDescriptor GetProtocolSignatureRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10, 18]) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.GetProtocolSignatureRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ProtocolInfoProtos\"], baseName = MName \"GetProtocolSignatureRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ProtocolInfoProtos\",\"GetProtocolSignatureRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.GetProtocolSignatureRequestProto.protocol\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ProtocolInfoProtos\",MName \"GetProtocolSignatureRequestProto\"], baseName' = FName \"protocol\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.GetProtocolSignatureRequestProto.rpcKind\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ProtocolInfoProtos\",MName \"GetProtocolSignatureRequestProto\"], baseName' = FName \"rpcKind\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetProtocolSignatureRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetProtocolSignatureRequestProto where
  textPut msg
   = do
       P'.tellT "protocol" (protocol msg)
       P'.tellT "rpcKind" (rpcKind msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'protocol, parse'rpcKind]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'protocol
         = P'.try
            (do
               v <- P'.getT "protocol"
               Prelude'.return (\ o -> o{protocol = v}))
        parse'rpcKind
         = P'.try
            (do
               v <- P'.getT "rpcKind"
               Prelude'.return (\ o -> o{rpcKind = v}))