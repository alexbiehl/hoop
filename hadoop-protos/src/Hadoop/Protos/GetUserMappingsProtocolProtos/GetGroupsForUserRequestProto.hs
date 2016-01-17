{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.GetUserMappingsProtocolProtos.GetGroupsForUserRequestProto (GetGroupsForUserRequestProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data GetGroupsForUserRequestProto = GetGroupsForUserRequestProto{user :: !(P'.Utf8)}
                                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable GetGroupsForUserRequestProto where
  mergeAppend (GetGroupsForUserRequestProto x'1) (GetGroupsForUserRequestProto y'1)
   = GetGroupsForUserRequestProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default GetGroupsForUserRequestProto where
  defaultValue = GetGroupsForUserRequestProto P'.defaultValue
 
instance P'.Wire GetGroupsForUserRequestProto where
  wireSize ft' self'@(GetGroupsForUserRequestProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeReq 1 9 x'1)
  wirePut ft' self'@(GetGroupsForUserRequestProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 10 9 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{user = new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> GetGroupsForUserRequestProto) GetGroupsForUserRequestProto where
  getVal m' f' = f' m'
 
instance P'.GPB GetGroupsForUserRequestProto
 
instance P'.ReflectDescriptor GetGroupsForUserRequestProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [10]) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.GetGroupsForUserRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"GetUserMappingsProtocolProtos\"], baseName = MName \"GetGroupsForUserRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"GetUserMappingsProtocolProtos\",\"GetGroupsForUserRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.GetGroupsForUserRequestProto.user\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"GetUserMappingsProtocolProtos\",MName \"GetGroupsForUserRequestProto\"], baseName' = FName \"user\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType GetGroupsForUserRequestProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg GetGroupsForUserRequestProto where
  textPut msg
   = do
       P'.tellT "user" (user msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'user]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'user
         = P'.try
            (do
               v <- P'.getT "user"
               Prelude'.return (\ o -> o{user = v}))