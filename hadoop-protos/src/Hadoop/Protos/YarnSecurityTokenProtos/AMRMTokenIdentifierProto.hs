{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnSecurityTokenProtos.AMRMTokenIdentifierProto (AMRMTokenIdentifierProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationAttemptIdProto as YarnProtos (ApplicationAttemptIdProto)
 
data AMRMTokenIdentifierProto = AMRMTokenIdentifierProto{appAttemptId :: !(P'.Maybe YarnProtos.ApplicationAttemptIdProto),
                                                         keyId :: !(P'.Maybe P'.Int32)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AMRMTokenIdentifierProto where
  mergeAppend (AMRMTokenIdentifierProto x'1 x'2) (AMRMTokenIdentifierProto y'1 y'2)
   = AMRMTokenIdentifierProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default AMRMTokenIdentifierProto where
  defaultValue = AMRMTokenIdentifierProto P'.defaultValue (Prelude'.Just (-1))
 
instance P'.Wire AMRMTokenIdentifierProto where
  wireSize ft' self'@(AMRMTokenIdentifierProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 5 x'2)
  wirePut ft' self'@(AMRMTokenIdentifierProto x'1 x'2)
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
             P'.wirePutOpt 16 5 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{appAttemptId = P'.mergeAppend (appAttemptId old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{keyId = Prelude'.Just new'Field}) (P'.wireGet 5)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> AMRMTokenIdentifierProto) AMRMTokenIdentifierProto where
  getVal m' f' = f' m'
 
instance P'.GPB AMRMTokenIdentifierProto
 
instance P'.ReflectDescriptor AMRMTokenIdentifierProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.AMRMTokenIdentifierProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnSecurityTokenProtos\"], baseName = MName \"AMRMTokenIdentifierProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnSecurityTokenProtos\",\"AMRMTokenIdentifierProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AMRMTokenIdentifierProto.appAttemptId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"AMRMTokenIdentifierProto\"], baseName' = FName \"appAttemptId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationAttemptIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationAttemptIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.AMRMTokenIdentifierProto.keyId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"AMRMTokenIdentifierProto\"], baseName' = FName \"keyId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Just \"-1\", hsDefault = Just (HsDef'Integer (-1))}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType AMRMTokenIdentifierProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg AMRMTokenIdentifierProto where
  textPut msg
   = do
       P'.tellT "appAttemptId" (appAttemptId msg)
       P'.tellT "keyId" (keyId msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'appAttemptId, parse'keyId]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'appAttemptId
         = P'.try
            (do
               v <- P'.getT "appAttemptId"
               Prelude'.return (\ o -> o{appAttemptId = v}))
        parse'keyId
         = P'.try
            (do
               v <- P'.getT "keyId"
               Prelude'.return (\ o -> o{keyId = v}))