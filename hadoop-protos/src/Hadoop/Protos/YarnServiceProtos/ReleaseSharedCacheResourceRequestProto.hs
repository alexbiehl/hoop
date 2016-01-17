{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.ReleaseSharedCacheResourceRequestProto (ReleaseSharedCacheResourceRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationIdProto as YarnProtos (ApplicationIdProto)
 
data ReleaseSharedCacheResourceRequestProto = ReleaseSharedCacheResourceRequestProto{applicationId ::
                                                                                     !(P'.Maybe YarnProtos.ApplicationIdProto),
                                                                                     resourceKey :: !(P'.Maybe P'.Utf8)}
                                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ReleaseSharedCacheResourceRequestProto where
  mergeAppend (ReleaseSharedCacheResourceRequestProto x'1 x'2) (ReleaseSharedCacheResourceRequestProto y'1 y'2)
   = ReleaseSharedCacheResourceRequestProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ReleaseSharedCacheResourceRequestProto where
  defaultValue = ReleaseSharedCacheResourceRequestProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ReleaseSharedCacheResourceRequestProto where
  wireSize ft' self'@(ReleaseSharedCacheResourceRequestProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 9 x'2)
  wirePut ft' self'@(ReleaseSharedCacheResourceRequestProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 11 x'1
             P'.wirePutOpt 18 9 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{applicationId = P'.mergeAppend (applicationId old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{resourceKey = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ReleaseSharedCacheResourceRequestProto) ReleaseSharedCacheResourceRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB ReleaseSharedCacheResourceRequestProto
 
instance P'.ReflectDescriptor ReleaseSharedCacheResourceRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ReleaseSharedCacheResourceRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"ReleaseSharedCacheResourceRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"ReleaseSharedCacheResourceRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReleaseSharedCacheResourceRequestProto.applicationId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"ReleaseSharedCacheResourceRequestProto\"], baseName' = FName \"applicationId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ReleaseSharedCacheResourceRequestProto.resourceKey\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"ReleaseSharedCacheResourceRequestProto\"], baseName' = FName \"resourceKey\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ReleaseSharedCacheResourceRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ReleaseSharedCacheResourceRequestProto where
  textPut msg
   = do
       P'.tellT "applicationId" (applicationId msg)
       P'.tellT "resourceKey" (resourceKey msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'applicationId, parse'resourceKey]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'applicationId
         = P'.try
            (do
               v <- P'.getT "applicationId"
               Prelude'.return (\ o -> o{applicationId = v}))
        parse'resourceKey
         = P'.try
            (do
               v <- P'.getT "resourceKey"
               Prelude'.return (\ o -> o{resourceKey = v}))