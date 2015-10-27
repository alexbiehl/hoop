{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ProtocolInfoProtos.GetProtocolVersionsResponseProto (GetProtocolVersionsResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.ProtocolInfoProtos.ProtocolVersionProto as ProtocolInfoProtos (ProtocolVersionProto)
 
data GetProtocolVersionsResponseProto = GetProtocolVersionsResponseProto{protocolVersions ::
                                                                         !(P'.Seq ProtocolInfoProtos.ProtocolVersionProto)}
                                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetProtocolVersionsResponseProto where
  mergeAppend (GetProtocolVersionsResponseProto x'1) (GetProtocolVersionsResponseProto y'1)
   = GetProtocolVersionsResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetProtocolVersionsResponseProto where
  defaultValue = GetProtocolVersionsResponseProto P'.defaultValue
 
instance P'.Wire GetProtocolVersionsResponseProto where
  wireSize ft' self'@(GetProtocolVersionsResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(GetProtocolVersionsResponseProto x'1)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{protocolVersions = P'.append (protocolVersions old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetProtocolVersionsResponseProto) GetProtocolVersionsResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetProtocolVersionsResponseProto
 
instance P'.ReflectDescriptor GetProtocolVersionsResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.GetProtocolVersionsResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ProtocolInfoProtos\"], baseName = MName \"GetProtocolVersionsResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ProtocolInfoProtos\",\"GetProtocolVersionsResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.GetProtocolVersionsResponseProto.protocolVersions\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ProtocolInfoProtos\",MName \"GetProtocolVersionsResponseProto\"], baseName' = FName \"protocolVersions\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.ProtocolVersionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ProtocolInfoProtos\"], baseName = MName \"ProtocolVersionProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetProtocolVersionsResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetProtocolVersionsResponseProto where
  textPut msg
   = do
       P'.tellT "protocolVersions" (protocolVersions msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'protocolVersions]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'protocolVersions
         = P'.try
            (do
               v <- P'.getT "protocolVersions"
               Prelude'.return (\ o -> o{protocolVersions = P'.append (protocolVersions o) v}))