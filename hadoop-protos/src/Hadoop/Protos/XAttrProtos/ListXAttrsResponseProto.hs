{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.XAttrProtos.ListXAttrsResponseProto (ListXAttrsResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.XAttrProtos.XAttrProto as XAttrProtos (XAttrProto)
 
data ListXAttrsResponseProto = ListXAttrsResponseProto{xAttrs :: !(P'.Seq XAttrProtos.XAttrProto)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ListXAttrsResponseProto where
  mergeAppend (ListXAttrsResponseProto x'1) (ListXAttrsResponseProto y'1) = ListXAttrsResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default ListXAttrsResponseProto where
  defaultValue = ListXAttrsResponseProto P'.defaultValue
 
instance P'.Wire ListXAttrsResponseProto where
  wireSize ft' self'@(ListXAttrsResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(ListXAttrsResponseProto x'1)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{xAttrs = P'.append (xAttrs old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ListXAttrsResponseProto) ListXAttrsResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB ListXAttrsResponseProto
 
instance P'.ReflectDescriptor ListXAttrsResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.ListXAttrsResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"XAttrProtos\"], baseName = MName \"ListXAttrsResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"XAttrProtos\",\"ListXAttrsResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.ListXAttrsResponseProto.xAttrs\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"XAttrProtos\",MName \"ListXAttrsResponseProto\"], baseName' = FName \"xAttrs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.XAttrProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"XAttrProtos\"], baseName = MName \"XAttrProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ListXAttrsResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ListXAttrsResponseProto where
  textPut msg
   = do
       P'.tellT "xAttrs" (xAttrs msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'xAttrs]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'xAttrs
         = P'.try
            (do
               v <- P'.getT "xAttrs"
               Prelude'.return (\ o -> o{xAttrs = P'.append (xAttrs o) v}))