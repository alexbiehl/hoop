{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.HAServiceProtocolProtos.HAStateChangeRequestInfoProto (HAStateChangeRequestInfoProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.HAServiceProtocolProtos.HARequestSource as HAServiceProtocolProtos (HARequestSource)
 
data HAStateChangeRequestInfoProto = HAStateChangeRequestInfoProto{reqSource :: !(HAServiceProtocolProtos.HARequestSource)}
                                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable HAStateChangeRequestInfoProto where
  mergeAppend (HAStateChangeRequestInfoProto x'1) (HAStateChangeRequestInfoProto y'1)
   = HAStateChangeRequestInfoProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default HAStateChangeRequestInfoProto where
  defaultValue = HAStateChangeRequestInfoProto P'.defaultValue
 
instance P'.Wire HAStateChangeRequestInfoProto where
  wireSize ft' self'@(HAStateChangeRequestInfoProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 14 x'1)
  wirePut ft' self'@(HAStateChangeRequestInfoProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 14 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{reqSource = new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> HAStateChangeRequestInfoProto) HAStateChangeRequestInfoProto where
  getVal m' f' = f' m'
 
instance P'.GPB HAStateChangeRequestInfoProto
 
instance P'.ReflectDescriptor HAStateChangeRequestInfoProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.HAStateChangeRequestInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HAServiceProtocolProtos\"], baseName = MName \"HAStateChangeRequestInfoProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"HAServiceProtocolProtos\",\"HAStateChangeRequestInfoProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.HAStateChangeRequestInfoProto.reqSource\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"HAServiceProtocolProtos\",MName \"HAStateChangeRequestInfoProto\"], baseName' = FName \"reqSource\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.HARequestSource\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"HAServiceProtocolProtos\"], baseName = MName \"HARequestSource\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType HAStateChangeRequestInfoProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg HAStateChangeRequestInfoProto where
  textPut msg
   = do
       P'.tellT "reqSource" (reqSource msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'reqSource]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'reqSource
         = P'.try
            (do
               v <- P'.getT "reqSource"
               Prelude'.return (\ o -> o{reqSource = v}))