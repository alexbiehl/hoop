{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.GenericRefreshProtocolProtos.GenericRefreshResponseCollectionProto (GenericRefreshResponseCollectionProto(..))
       where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.GenericRefreshProtocolProtos.GenericRefreshResponseProto as GenericRefreshProtocolProtos
       (GenericRefreshResponseProto)
 
data GenericRefreshResponseCollectionProto = GenericRefreshResponseCollectionProto{responses ::
                                                                                   !(P'.Seq
                                                                                      GenericRefreshProtocolProtos.GenericRefreshResponseProto)}
                                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GenericRefreshResponseCollectionProto where
  mergeAppend (GenericRefreshResponseCollectionProto x'1) (GenericRefreshResponseCollectionProto y'1)
   = GenericRefreshResponseCollectionProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GenericRefreshResponseCollectionProto where
  defaultValue = GenericRefreshResponseCollectionProto P'.defaultValue
 
instance P'.Wire GenericRefreshResponseCollectionProto where
  wireSize ft' self'@(GenericRefreshResponseCollectionProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(GenericRefreshResponseCollectionProto x'1)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{responses = P'.append (responses old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GenericRefreshResponseCollectionProto) GenericRefreshResponseCollectionProto where
  getVal m' f' = f' m'
 
instance P'.GPB GenericRefreshResponseCollectionProto
 
instance P'.ReflectDescriptor GenericRefreshResponseCollectionProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.GenericRefreshResponseCollectionProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"GenericRefreshProtocolProtos\"], baseName = MName \"GenericRefreshResponseCollectionProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"GenericRefreshProtocolProtos\",\"GenericRefreshResponseCollectionProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.GenericRefreshResponseCollectionProto.responses\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"GenericRefreshProtocolProtos\",MName \"GenericRefreshResponseCollectionProto\"], baseName' = FName \"responses\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.GenericRefreshResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"GenericRefreshProtocolProtos\"], baseName = MName \"GenericRefreshResponseProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GenericRefreshResponseCollectionProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GenericRefreshResponseCollectionProto where
  textPut msg
   = do
       P'.tellT "responses" (responses msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'responses]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'responses
         = P'.try
            (do
               v <- P'.getT "responses"
               Prelude'.return (\ o -> o{responses = P'.append (responses o) v}))