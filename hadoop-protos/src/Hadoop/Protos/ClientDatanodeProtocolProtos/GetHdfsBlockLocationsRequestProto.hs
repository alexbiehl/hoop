{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientDatanodeProtocolProtos.GetHdfsBlockLocationsRequestProto (GetHdfsBlockLocationsRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.SecurityProtos.TokenProto as SecurityProtos (TokenProto)
 
data GetHdfsBlockLocationsRequestProto = GetHdfsBlockLocationsRequestProto{tokens :: !(P'.Seq SecurityProtos.TokenProto),
                                                                           blockPoolId :: !(P'.Utf8),
                                                                           blockIds :: !(P'.Seq P'.Int64)}
                                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetHdfsBlockLocationsRequestProto where
  mergeAppend (GetHdfsBlockLocationsRequestProto x'1 x'2 x'3) (GetHdfsBlockLocationsRequestProto y'1 y'2 y'3)
   = GetHdfsBlockLocationsRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default GetHdfsBlockLocationsRequestProto where
  defaultValue = GetHdfsBlockLocationsRequestProto P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire GetHdfsBlockLocationsRequestProto where
  wireSize ft' self'@(GetHdfsBlockLocationsRequestProto x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeReq 1 9 x'2 + P'.wireSizePacked 1 16 x'3)
  wirePut ft' self'@(GetHdfsBlockLocationsRequestProto x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 18 11 x'1
             P'.wirePutReq 26 9 x'2
             P'.wirePutPacked 34 16 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{tokens = P'.append (tokens old'Self) new'Field}) (P'.wireGet 11)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{blockPoolId = new'Field}) (P'.wireGet 9)
             33 -> Prelude'.fmap (\ !new'Field -> old'Self{blockIds = P'.append (blockIds old'Self) new'Field}) (P'.wireGet 16)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{blockIds = P'.mergeAppend (blockIds old'Self) new'Field})
                    (P'.wireGetPacked 16)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetHdfsBlockLocationsRequestProto) GetHdfsBlockLocationsRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetHdfsBlockLocationsRequestProto
 
instance P'.ReflectDescriptor GetHdfsBlockLocationsRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [26]) (P'.fromDistinctAscList [18, 26, 33, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.GetHdfsBlockLocationsRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientDatanodeProtocolProtos\"], baseName = MName \"GetHdfsBlockLocationsRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientDatanodeProtocolProtos\",\"GetHdfsBlockLocationsRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetHdfsBlockLocationsRequestProto.tokens\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientDatanodeProtocolProtos\",MName \"GetHdfsBlockLocationsRequestProto\"], baseName' = FName \"tokens\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.TokenProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"SecurityProtos\"], baseName = MName \"TokenProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetHdfsBlockLocationsRequestProto.blockPoolId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientDatanodeProtocolProtos\",MName \"GetHdfsBlockLocationsRequestProto\"], baseName' = FName \"blockPoolId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetHdfsBlockLocationsRequestProto.blockIds\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientDatanodeProtocolProtos\",MName \"GetHdfsBlockLocationsRequestProto\"], baseName' = FName \"blockIds\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Just (WireTag {getWireTag = 33},WireTag {getWireTag = 34}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 16}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetHdfsBlockLocationsRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetHdfsBlockLocationsRequestProto where
  textPut msg
   = do
       P'.tellT "tokens" (tokens msg)
       P'.tellT "blockPoolId" (blockPoolId msg)
       P'.tellT "blockIds" (blockIds msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'tokens, parse'blockPoolId, parse'blockIds]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'tokens
         = P'.try
            (do
               v <- P'.getT "tokens"
               Prelude'.return (\ o -> o{tokens = P'.append (tokens o) v}))
        parse'blockPoolId
         = P'.try
            (do
               v <- P'.getT "blockPoolId"
               Prelude'.return (\ o -> o{blockPoolId = v}))
        parse'blockIds
         = P'.try
            (do
               v <- P'.getT "blockIds"
               Prelude'.return (\ o -> o{blockIds = P'.append (blockIds o) v}))