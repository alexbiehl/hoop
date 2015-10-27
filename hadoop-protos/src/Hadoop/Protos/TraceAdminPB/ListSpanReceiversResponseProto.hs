{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.TraceAdminPB.ListSpanReceiversResponseProto (ListSpanReceiversResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.TraceAdminPB.SpanReceiverListInfo as TraceAdminPB (SpanReceiverListInfo)
 
data ListSpanReceiversResponseProto = ListSpanReceiversResponseProto{descriptions :: !(P'.Seq TraceAdminPB.SpanReceiverListInfo)}
                                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ListSpanReceiversResponseProto where
  mergeAppend (ListSpanReceiversResponseProto x'1) (ListSpanReceiversResponseProto y'1)
   = ListSpanReceiversResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default ListSpanReceiversResponseProto where
  defaultValue = ListSpanReceiversResponseProto P'.defaultValue
 
instance P'.Wire ListSpanReceiversResponseProto where
  wireSize ft' self'@(ListSpanReceiversResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(ListSpanReceiversResponseProto x'1)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{descriptions = P'.append (descriptions old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ListSpanReceiversResponseProto) ListSpanReceiversResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB ListSpanReceiversResponseProto
 
instance P'.ReflectDescriptor ListSpanReceiversResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.ListSpanReceiversResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"TraceAdminPB\"], baseName = MName \"ListSpanReceiversResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"TraceAdminPB\",\"ListSpanReceiversResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.ListSpanReceiversResponseProto.descriptions\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"TraceAdminPB\",MName \"ListSpanReceiversResponseProto\"], baseName' = FName \"descriptions\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.SpanReceiverListInfo\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"TraceAdminPB\"], baseName = MName \"SpanReceiverListInfo\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ListSpanReceiversResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ListSpanReceiversResponseProto where
  textPut msg
   = do
       P'.tellT "descriptions" (descriptions msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'descriptions]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'descriptions
         = P'.try
            (do
               v <- P'.getT "descriptions"
               Prelude'.return (\ o -> o{descriptions = P'.append (descriptions o) v}))