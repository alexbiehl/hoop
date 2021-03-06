{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServiceProtos.GetQueueUserAclsInfoResponseProto (GetQueueUserAclsInfoResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.QueueUserACLInfoProto as YarnProtos (QueueUserACLInfoProto)
 
data GetQueueUserAclsInfoResponseProto = GetQueueUserAclsInfoResponseProto{queueUserAcls ::
                                                                           !(P'.Seq YarnProtos.QueueUserACLInfoProto)}
                                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetQueueUserAclsInfoResponseProto where
  mergeAppend (GetQueueUserAclsInfoResponseProto x'1) (GetQueueUserAclsInfoResponseProto y'1)
   = GetQueueUserAclsInfoResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetQueueUserAclsInfoResponseProto where
  defaultValue = GetQueueUserAclsInfoResponseProto P'.defaultValue
 
instance P'.Wire GetQueueUserAclsInfoResponseProto where
  wireSize ft' self'@(GetQueueUserAclsInfoResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(GetQueueUserAclsInfoResponseProto x'1)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{queueUserAcls = P'.append (queueUserAcls old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetQueueUserAclsInfoResponseProto) GetQueueUserAclsInfoResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetQueueUserAclsInfoResponseProto
 
instance P'.ReflectDescriptor GetQueueUserAclsInfoResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.GetQueueUserAclsInfoResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"GetQueueUserAclsInfoResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServiceProtos\",\"GetQueueUserAclsInfoResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.GetQueueUserAclsInfoResponseProto.queueUserAcls\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServiceProtos\",MName \"GetQueueUserAclsInfoResponseProto\"], baseName' = FName \"queueUserAcls\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.QueueUserACLInfoProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"QueueUserACLInfoProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetQueueUserAclsInfoResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetQueueUserAclsInfoResponseProto where
  textPut msg
   = do
       P'.tellT "queueUserAcls" (queueUserAcls msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'queueUserAcls]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'queueUserAcls
         = P'.try
            (do
               v <- P'.getT "queueUserAcls"
               Prelude'.return (\ o -> o{queueUserAcls = P'.append (queueUserAcls o) v}))