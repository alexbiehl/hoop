{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.FsImageProto.INodeSection.AclFeatureProto (AclFeatureProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data AclFeatureProto = AclFeatureProto{entries :: !(P'.Seq P'.Word32)}
                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AclFeatureProto where
  mergeAppend (AclFeatureProto x'1) (AclFeatureProto y'1) = AclFeatureProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default AclFeatureProto where
  defaultValue = AclFeatureProto P'.defaultValue
 
instance P'.Wire AclFeatureProto where
  wireSize ft' self'@(AclFeatureProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizePacked 1 7 x'1)
  wirePut ft' self'@(AclFeatureProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutPacked 18 7 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             21 -> Prelude'.fmap (\ !new'Field -> old'Self{entries = P'.append (entries old'Self) new'Field}) (P'.wireGet 7)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{entries = P'.mergeAppend (entries old'Self) new'Field})
                    (P'.wireGetPacked 7)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> AclFeatureProto) AclFeatureProto where
  getVal m' f' = f' m'
 
instance P'.GPB AclFeatureProto
 
instance P'.ReflectDescriptor AclFeatureProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [18, 21])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.fsimage.INodeSection.AclFeatureProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"FsImageProto\",MName \"INodeSection\"], baseName = MName \"AclFeatureProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"FsImageProto\",\"INodeSection\",\"AclFeatureProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.fsimage.INodeSection.AclFeatureProto.entries\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"FsImageProto\",MName \"INodeSection\",MName \"AclFeatureProto\"], baseName' = FName \"entries\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Just (WireTag {getWireTag = 21},WireTag {getWireTag = 18}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 7}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType AclFeatureProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg AclFeatureProto where
  textPut msg
   = do
       P'.tellT "entries" (entries msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'entries]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'entries
         = P'.try
            (do
               v <- P'.getT "entries"
               Prelude'.return (\ o -> o{entries = P'.append (entries o) v}))