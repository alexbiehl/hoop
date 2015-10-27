{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.SecurityProtos.GetDelegationTokenResponseProto (GetDelegationTokenResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.SecurityProtos.TokenProto as SecurityProtos (TokenProto)
 
data GetDelegationTokenResponseProto = GetDelegationTokenResponseProto{token :: !(P'.Maybe SecurityProtos.TokenProto)}
                                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetDelegationTokenResponseProto where
  mergeAppend (GetDelegationTokenResponseProto x'1) (GetDelegationTokenResponseProto y'1)
   = GetDelegationTokenResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetDelegationTokenResponseProto where
  defaultValue = GetDelegationTokenResponseProto P'.defaultValue
 
instance P'.Wire GetDelegationTokenResponseProto where
  wireSize ft' self'@(GetDelegationTokenResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1)
  wirePut ft' self'@(GetDelegationTokenResponseProto x'1)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{token = P'.mergeAppend (token old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetDelegationTokenResponseProto) GetDelegationTokenResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetDelegationTokenResponseProto
 
instance P'.ReflectDescriptor GetDelegationTokenResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.GetDelegationTokenResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"SecurityProtos\"], baseName = MName \"GetDelegationTokenResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"SecurityProtos\",\"GetDelegationTokenResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.GetDelegationTokenResponseProto.token\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"SecurityProtos\",MName \"GetDelegationTokenResponseProto\"], baseName' = FName \"token\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.TokenProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"SecurityProtos\"], baseName = MName \"TokenProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetDelegationTokenResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetDelegationTokenResponseProto where
  textPut msg
   = do
       P'.tellT "token" (token msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'token]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'token
         = P'.try
            (do
               v <- P'.getT "token"
               Prelude'.return (\ o -> o{token = v}))