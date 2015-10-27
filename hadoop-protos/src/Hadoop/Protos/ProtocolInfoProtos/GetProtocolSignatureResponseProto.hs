{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ProtocolInfoProtos.GetProtocolSignatureResponseProto (GetProtocolSignatureResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.ProtocolInfoProtos.ProtocolSignatureProto as ProtocolInfoProtos (ProtocolSignatureProto)
 
data GetProtocolSignatureResponseProto = GetProtocolSignatureResponseProto{protocolSignature ::
                                                                           !(P'.Seq ProtocolInfoProtos.ProtocolSignatureProto)}
                                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetProtocolSignatureResponseProto where
  mergeAppend (GetProtocolSignatureResponseProto x'1) (GetProtocolSignatureResponseProto y'1)
   = GetProtocolSignatureResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetProtocolSignatureResponseProto where
  defaultValue = GetProtocolSignatureResponseProto P'.defaultValue
 
instance P'.Wire GetProtocolSignatureResponseProto where
  wireSize ft' self'@(GetProtocolSignatureResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(GetProtocolSignatureResponseProto x'1)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{protocolSignature = P'.append (protocolSignature old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetProtocolSignatureResponseProto) GetProtocolSignatureResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetProtocolSignatureResponseProto
 
instance P'.ReflectDescriptor GetProtocolSignatureResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.GetProtocolSignatureResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ProtocolInfoProtos\"], baseName = MName \"GetProtocolSignatureResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ProtocolInfoProtos\",\"GetProtocolSignatureResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.GetProtocolSignatureResponseProto.protocolSignature\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ProtocolInfoProtos\",MName \"GetProtocolSignatureResponseProto\"], baseName' = FName \"protocolSignature\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.ProtocolSignatureProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ProtocolInfoProtos\"], baseName = MName \"ProtocolSignatureProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetProtocolSignatureResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetProtocolSignatureResponseProto where
  textPut msg
   = do
       P'.tellT "protocolSignature" (protocolSignature msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'protocolSignature]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'protocolSignature
         = P'.try
            (do
               v <- P'.getT "protocolSignature"
               Prelude'.return (\ o -> o{protocolSignature = P'.append (protocolSignature o) v}))