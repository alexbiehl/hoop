{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.SecurityProtos.RenewDelegationTokenResponseProto (RenewDelegationTokenResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data RenewDelegationTokenResponseProto = RenewDelegationTokenResponseProto{newExpiryTime :: !(P'.Word64)}
                                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable RenewDelegationTokenResponseProto where
  mergeAppend (RenewDelegationTokenResponseProto x'1) (RenewDelegationTokenResponseProto y'1)
   = RenewDelegationTokenResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default RenewDelegationTokenResponseProto where
  defaultValue = RenewDelegationTokenResponseProto P'.defaultValue
 
instance P'.Wire RenewDelegationTokenResponseProto where
  wireSize ft' self'@(RenewDelegationTokenResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 4 x'1)
  wirePut ft' self'@(RenewDelegationTokenResponseProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 4 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{newExpiryTime = new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> RenewDelegationTokenResponseProto) RenewDelegationTokenResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB RenewDelegationTokenResponseProto
 
instance P'.ReflectDescriptor RenewDelegationTokenResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8]) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.RenewDelegationTokenResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"SecurityProtos\"], baseName = MName \"RenewDelegationTokenResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"SecurityProtos\",\"RenewDelegationTokenResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RenewDelegationTokenResponseProto.newExpiryTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"SecurityProtos\",MName \"RenewDelegationTokenResponseProto\"], baseName' = FName \"newExpiryTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType RenewDelegationTokenResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg RenewDelegationTokenResponseProto where
  textPut msg
   = do
       P'.tellT "newExpiryTime" (newExpiryTime msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'newExpiryTime]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'newExpiryTime
         = P'.try
            (do
               v <- P'.getT "newExpiryTime"
               Prelude'.return (\ o -> o{newExpiryTime = v}))