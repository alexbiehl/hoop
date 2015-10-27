{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.AclProtos.GetAclStatusResponseProto (GetAclStatusResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.AclProtos.AclStatusProto as AclProtos (AclStatusProto)
 
data GetAclStatusResponseProto = GetAclStatusResponseProto{result :: !(AclProtos.AclStatusProto)}
                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetAclStatusResponseProto where
  mergeAppend (GetAclStatusResponseProto x'1) (GetAclStatusResponseProto y'1) = GetAclStatusResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetAclStatusResponseProto where
  defaultValue = GetAclStatusResponseProto P'.defaultValue
 
instance P'.Wire GetAclStatusResponseProto where
  wireSize ft' self'@(GetAclStatusResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 11 x'1)
  wirePut ft' self'@(GetAclStatusResponseProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 11 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{result = P'.mergeAppend (result old'Self) (new'Field)}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetAclStatusResponseProto) GetAclStatusResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetAclStatusResponseProto
 
instance P'.ReflectDescriptor GetAclStatusResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.hdfs.GetAclStatusResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"AclProtos\"], baseName = MName \"GetAclStatusResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"AclProtos\",\"GetAclStatusResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.hdfs.GetAclStatusResponseProto.result\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"AclProtos\",MName \"GetAclStatusResponseProto\"], baseName' = FName \"result\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.hdfs.AclStatusProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"AclProtos\"], baseName = MName \"AclStatusProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetAclStatusResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetAclStatusResponseProto where
  textPut msg
   = do
       P'.tellT "result" (result msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'result]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'result
         = P'.try
            (do
               v <- P'.getT "result"
               Prelude'.return (\ o -> o{result = v}))