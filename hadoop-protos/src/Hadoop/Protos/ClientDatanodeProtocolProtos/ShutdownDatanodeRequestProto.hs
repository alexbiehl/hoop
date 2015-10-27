{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ClientDatanodeProtocolProtos.ShutdownDatanodeRequestProto (ShutdownDatanodeRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ShutdownDatanodeRequestProto = ShutdownDatanodeRequestProto{forUpgrade :: !(P'.Bool)}
                                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ShutdownDatanodeRequestProto where
  mergeAppend (ShutdownDatanodeRequestProto x'1) (ShutdownDatanodeRequestProto y'1)
   = ShutdownDatanodeRequestProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default ShutdownDatanodeRequestProto where
  defaultValue = ShutdownDatanodeRequestProto P'.defaultValue
 
instance P'.Wire ShutdownDatanodeRequestProto where
  wireSize ft' self'@(ShutdownDatanodeRequestProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 8 x'1)
  wirePut ft' self'@(ShutdownDatanodeRequestProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 8 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{forUpgrade = new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ShutdownDatanodeRequestProto) ShutdownDatanodeRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB ShutdownDatanodeRequestProto
 
instance P'.ReflectDescriptor ShutdownDatanodeRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.ShutdownDatanodeRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ClientDatanodeProtocolProtos\"], baseName = MName \"ShutdownDatanodeRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"ClientDatanodeProtocolProtos\",\"ShutdownDatanodeRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ShutdownDatanodeRequestProto.forUpgrade\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"ClientDatanodeProtocolProtos\",MName \"ShutdownDatanodeRequestProto\"], baseName' = FName \"forUpgrade\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ShutdownDatanodeRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ShutdownDatanodeRequestProto where
  textPut msg
   = do
       P'.tellT "forUpgrade" (forUpgrade msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'forUpgrade]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'forUpgrade
         = P'.try
            (do
               v <- P'.getT "forUpgrade"
               Prelude'.return (\ o -> o{forUpgrade = v}))