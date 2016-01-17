{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.FinishApplicationMasterResponseProto (FinishApplicationMasterResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data FinishApplicationMasterResponseProto = FinishApplicationMasterResponseProto{isUnregistered :: !(P'.Maybe P'.Bool)}
                                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable FinishApplicationMasterResponseProto where
  mergeAppend (FinishApplicationMasterResponseProto x'1) (FinishApplicationMasterResponseProto y'1)
   = FinishApplicationMasterResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default FinishApplicationMasterResponseProto where
  defaultValue = FinishApplicationMasterResponseProto (Prelude'.Just Prelude'.False)
 
instance P'.Wire FinishApplicationMasterResponseProto where
  wireSize ft' self'@(FinishApplicationMasterResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 8 x'1)
  wirePut ft' self'@(FinishApplicationMasterResponseProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 8 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{isUnregistered = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> FinishApplicationMasterResponseProto) FinishApplicationMasterResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB FinishApplicationMasterResponseProto
 
instance P'.ReflectDescriptor FinishApplicationMasterResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.FinishApplicationMasterResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"FinishApplicationMasterResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"FinishApplicationMasterResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.FinishApplicationMasterResponseProto.isUnregistered\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"FinishApplicationMasterResponseProto\"], baseName' = FName \"isUnregistered\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType FinishApplicationMasterResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg FinishApplicationMasterResponseProto where
  textPut msg
   = do
       P'.tellT "isUnregistered" (isUnregistered msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'isUnregistered]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'isUnregistered
         = P'.try
            (do
               v <- P'.getT "isUnregistered"
               Prelude'.return (\ o -> o{isUnregistered = v}))