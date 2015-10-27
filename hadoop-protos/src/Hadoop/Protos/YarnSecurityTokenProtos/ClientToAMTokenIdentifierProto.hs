{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnSecurityTokenProtos.ClientToAMTokenIdentifierProto (ClientToAMTokenIdentifierProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnProtos.ApplicationAttemptIdProto as YarnProtos (ApplicationAttemptIdProto)
 
data ClientToAMTokenIdentifierProto = ClientToAMTokenIdentifierProto{appAttemptId ::
                                                                     !(P'.Maybe YarnProtos.ApplicationAttemptIdProto),
                                                                     clientName :: !(P'.Maybe P'.Utf8)}
                                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ClientToAMTokenIdentifierProto where
  mergeAppend (ClientToAMTokenIdentifierProto x'1 x'2) (ClientToAMTokenIdentifierProto y'1 y'2)
   = ClientToAMTokenIdentifierProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default ClientToAMTokenIdentifierProto where
  defaultValue = ClientToAMTokenIdentifierProto P'.defaultValue P'.defaultValue
 
instance P'.Wire ClientToAMTokenIdentifierProto where
  wireSize ft' self'@(ClientToAMTokenIdentifierProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 9 x'2)
  wirePut ft' self'@(ClientToAMTokenIdentifierProto x'1 x'2)
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
                    (\ !new'Field -> old'Self{appAttemptId = P'.mergeAppend (appAttemptId old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{clientName = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> ClientToAMTokenIdentifierProto) ClientToAMTokenIdentifierProto where
  getVal m' f' = f' m'
 
instance P'.GPB ClientToAMTokenIdentifierProto
 
instance P'.ReflectDescriptor ClientToAMTokenIdentifierProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ClientToAMTokenIdentifierProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnSecurityTokenProtos\"], baseName = MName \"ClientToAMTokenIdentifierProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnSecurityTokenProtos\",\"ClientToAMTokenIdentifierProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ClientToAMTokenIdentifierProto.appAttemptId\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"ClientToAMTokenIdentifierProto\"], baseName' = FName \"appAttemptId\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationAttemptIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationAttemptIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ClientToAMTokenIdentifierProto.clientName\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnSecurityTokenProtos\",MName \"ClientToAMTokenIdentifierProto\"], baseName' = FName \"clientName\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType ClientToAMTokenIdentifierProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg ClientToAMTokenIdentifierProto where
  textPut msg
   = do
       P'.tellT "appAttemptId" (appAttemptId msg)
       P'.tellT "clientName" (clientName msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'appAttemptId, parse'clientName]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'appAttemptId
         = P'.try
            (do
               v <- P'.getT "appAttemptId"
               Prelude'.return (\ o -> o{appAttemptId = v}))
        parse'clientName
         = P'.try
            (do
               v <- P'.getT "clientName"
               Prelude'.return (\ o -> o{clientName = v}))