{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerResourceManagerRecoveryProtos.RMDelegationTokenIdentifierDataProto
       (RMDelegationTokenIdentifierDataProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.YarnSecurityTokenProtos.YARNDelegationTokenIdentifierProto as YarnSecurityTokenProtos
       (YARNDelegationTokenIdentifierProto)
 
data RMDelegationTokenIdentifierDataProto = RMDelegationTokenIdentifierDataProto{token_identifier ::
                                                                                 !(P'.Maybe
                                                                                    YarnSecurityTokenProtos.YARNDelegationTokenIdentifierProto),
                                                                                 renewDate :: !(P'.Maybe P'.Int64)}
                                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RMDelegationTokenIdentifierDataProto where
  mergeAppend (RMDelegationTokenIdentifierDataProto x'1 x'2) (RMDelegationTokenIdentifierDataProto y'1 y'2)
   = RMDelegationTokenIdentifierDataProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default RMDelegationTokenIdentifierDataProto where
  defaultValue = RMDelegationTokenIdentifierDataProto P'.defaultValue P'.defaultValue
 
instance P'.Wire RMDelegationTokenIdentifierDataProto where
  wireSize ft' self'@(RMDelegationTokenIdentifierDataProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 3 x'2)
  wirePut ft' self'@(RMDelegationTokenIdentifierDataProto x'1 x'2)
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
             P'.wirePutOpt 16 3 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{token_identifier = P'.mergeAppend (token_identifier old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{renewDate = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RMDelegationTokenIdentifierDataProto) RMDelegationTokenIdentifierDataProto where
  getVal m' f' = f' m'
 
instance P'.GPB RMDelegationTokenIdentifierDataProto
 
instance P'.ReflectDescriptor RMDelegationTokenIdentifierDataProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.RMDelegationTokenIdentifierDataProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerResourceManagerRecoveryProtos\"], baseName = MName \"RMDelegationTokenIdentifierDataProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerResourceManagerRecoveryProtos\",\"RMDelegationTokenIdentifierDataProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RMDelegationTokenIdentifierDataProto.token_identifier\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"RMDelegationTokenIdentifierDataProto\"], baseName' = FName \"token_identifier\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.YARNDelegationTokenIdentifierProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnSecurityTokenProtos\"], baseName = MName \"YARNDelegationTokenIdentifierProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.RMDelegationTokenIdentifierDataProto.renewDate\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerResourceManagerRecoveryProtos\",MName \"RMDelegationTokenIdentifierDataProto\"], baseName' = FName \"renewDate\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RMDelegationTokenIdentifierDataProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RMDelegationTokenIdentifierDataProto where
  textPut msg
   = do
       P'.tellT "token_identifier" (token_identifier msg)
       P'.tellT "renewDate" (renewDate msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'token_identifier, parse'renewDate]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'token_identifier
         = P'.try
            (do
               v <- P'.getT "token_identifier"
               Prelude'.return (\ o -> o{token_identifier = v}))
        parse'renewDate
         = P'.try
            (do
               v <- P'.getT "renewDate"
               Prelude'.return (\ o -> o{renewDate = v}))