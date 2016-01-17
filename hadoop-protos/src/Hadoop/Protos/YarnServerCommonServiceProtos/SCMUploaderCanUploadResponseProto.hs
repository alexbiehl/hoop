{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerCommonServiceProtos.SCMUploaderCanUploadResponseProto (SCMUploaderCanUploadResponseProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data SCMUploaderCanUploadResponseProto = SCMUploaderCanUploadResponseProto{uploadable :: !(P'.Maybe P'.Bool)}
                                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SCMUploaderCanUploadResponseProto where
  mergeAppend (SCMUploaderCanUploadResponseProto x'1) (SCMUploaderCanUploadResponseProto y'1)
   = SCMUploaderCanUploadResponseProto (P'.mergeAppend x'1 y'1)
 
instance P'.Default SCMUploaderCanUploadResponseProto where
  defaultValue = SCMUploaderCanUploadResponseProto P'.defaultValue
 
instance P'.Wire SCMUploaderCanUploadResponseProto where
  wireSize ft' self'@(SCMUploaderCanUploadResponseProto x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 8 x'1)
  wirePut ft' self'@(SCMUploaderCanUploadResponseProto x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 8 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{uploadable = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> SCMUploaderCanUploadResponseProto) SCMUploaderCanUploadResponseProto where
  getVal m' f' = f' m'
 
instance P'.GPB SCMUploaderCanUploadResponseProto
 
instance P'.ReflectDescriptor SCMUploaderCanUploadResponseProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.SCMUploaderCanUploadResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerCommonServiceProtos\"], baseName = MName \"SCMUploaderCanUploadResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerCommonServiceProtos\",\"SCMUploaderCanUploadResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.SCMUploaderCanUploadResponseProto.uploadable\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerCommonServiceProtos\",MName \"SCMUploaderCanUploadResponseProto\"], baseName' = FName \"uploadable\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType SCMUploaderCanUploadResponseProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg SCMUploaderCanUploadResponseProto where
  textPut msg
   = do
       P'.tellT "uploadable" (uploadable msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'uploadable]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'uploadable
         = P'.try
            (do
               v <- P'.getT "uploadable"
               Prelude'.return (\ o -> o{uploadable = v}))