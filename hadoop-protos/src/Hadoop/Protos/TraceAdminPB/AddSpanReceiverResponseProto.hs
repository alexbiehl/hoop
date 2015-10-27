{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.TraceAdminPB.AddSpanReceiverResponseProto (AddSpanReceiverResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data AddSpanReceiverResponseProto = AddSpanReceiverResponseProto{id :: !(P'.Int64)}
                                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AddSpanReceiverResponseProto where
  mergeAppend (AddSpanReceiverResponseProto x'1) (AddSpanReceiverResponseProto y'1)
   = AddSpanReceiverResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default AddSpanReceiverResponseProto where
  defaultValue = AddSpanReceiverResponseProto P'.defaultValue
 
instance P'.Wire AddSpanReceiverResponseProto where
  wireSize ft' self'@(AddSpanReceiverResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 3 x'1)
  wirePut ft' self'@(AddSpanReceiverResponseProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 3 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{id = new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> AddSpanReceiverResponseProto) AddSpanReceiverResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB AddSpanReceiverResponseProto
 
instance P'.ReflectDescriptor AddSpanReceiverResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.AddSpanReceiverResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"TraceAdminPB\"], baseName = MName \"AddSpanReceiverResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"TraceAdminPB\",\"AddSpanReceiverResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.AddSpanReceiverResponseProto.id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"TraceAdminPB\",MName \"AddSpanReceiverResponseProto\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType AddSpanReceiverResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg AddSpanReceiverResponseProto where
  textPut msg
   = do
       P'.tellT "id" (id msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'id]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'id
         = P'.try
            (do
               v <- P'.getT "id"
               Prelude'.return (\ o -> o{id = v}))