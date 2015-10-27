{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientNamenodeProtocolProtos.GetPreferredBlockSizeResponseProto (GetPreferredBlockSizeResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data GetPreferredBlockSizeResponseProto = GetPreferredBlockSizeResponseProto{bsize :: !(P'.Word64)}
                                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetPreferredBlockSizeResponseProto where
  mergeAppend (GetPreferredBlockSizeResponseProto x'1) (GetPreferredBlockSizeResponseProto y'1)
   = GetPreferredBlockSizeResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetPreferredBlockSizeResponseProto where
  defaultValue = GetPreferredBlockSizeResponseProto P'.defaultValue
 
instance P'.Wire GetPreferredBlockSizeResponseProto where
  wireSize ft' self'@(GetPreferredBlockSizeResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 4 x'1)
  wirePut ft' self'@(GetPreferredBlockSizeResponseProto x'1)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{bsize = new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetPreferredBlockSizeResponseProto) GetPreferredBlockSizeResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetPreferredBlockSizeResponseProto
 
instance P'.ReflectDescriptor GetPreferredBlockSizeResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.GetPreferredBlockSizeResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientNamenodeProtocolProtos\"], baseName = MName \"GetPreferredBlockSizeResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientNamenodeProtocolProtos\",\"GetPreferredBlockSizeResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetPreferredBlockSizeResponseProto.bsize\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientNamenodeProtocolProtos\",MName \"GetPreferredBlockSizeResponseProto\"], baseName' = FName \"bsize\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetPreferredBlockSizeResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetPreferredBlockSizeResponseProto where
  textPut msg
   = do
       P'.tellT "bsize" (bsize msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'bsize]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'bsize
         = P'.try
            (do
               v <- P'.getT "bsize"
               Prelude'.return (\ o -> o{bsize = v}))