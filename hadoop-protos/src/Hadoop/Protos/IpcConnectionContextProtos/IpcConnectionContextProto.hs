{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.IpcConnectionContextProtos.IpcConnectionContextProto (IpcConnectionContextProto(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Hadoop.Protos.IpcConnectionContextProtos.UserInformationProto as IpcConnectionContextProtos (UserInformationProto)
 
data IpcConnectionContextProto = IpcConnectionContextProto{userInfo :: !(P'.Maybe IpcConnectionContextProtos.UserInformationProto),
                                                           protocol :: !(P'.Maybe P'.Utf8)}
                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable IpcConnectionContextProto where
  mergeAppend (IpcConnectionContextProto x'1 x'2) (IpcConnectionContextProto y'1 y'2)
   = IpcConnectionContextProto (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default IpcConnectionContextProto where
  defaultValue = IpcConnectionContextProto P'.defaultValue P'.defaultValue
 
instance P'.Wire IpcConnectionContextProto where
  wireSize ft' self'@(IpcConnectionContextProto x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 9 x'2)
  wirePut ft' self'@(IpcConnectionContextProto x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 18 11 x'1
             P'.wirePutOpt 26 9 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{userInfo = P'.mergeAppend (userInfo old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{protocol = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> IpcConnectionContextProto) IpcConnectionContextProto where
  getVal m' f' = f' m'
 
instance P'.GPB IpcConnectionContextProto
 
instance P'.ReflectDescriptor IpcConnectionContextProto where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.IpcConnectionContextProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"IpcConnectionContextProtos\"], baseName = MName \"IpcConnectionContextProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"IpcConnectionContextProtos\",\"IpcConnectionContextProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.IpcConnectionContextProto.userInfo\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"IpcConnectionContextProtos\",MName \"IpcConnectionContextProto\"], baseName' = FName \"userInfo\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.UserInformationProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"IpcConnectionContextProtos\"], baseName = MName \"UserInformationProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.IpcConnectionContextProto.protocol\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"IpcConnectionContextProtos\",MName \"IpcConnectionContextProto\"], baseName' = FName \"protocol\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"
 
instance P'.TextType IpcConnectionContextProto where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg IpcConnectionContextProto where
  textPut msg
   = do
       P'.tellT "userInfo" (userInfo msg)
       P'.tellT "protocol" (protocol msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'userInfo, parse'protocol]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'userInfo
         = P'.try
            (do
               v <- P'.getT "userInfo"
               Prelude'.return (\ o -> o{userInfo = v}))
        parse'protocol
         = P'.try
            (do
               v <- P'.getT "protocol"
               Prelude'.return (\ o -> o{protocol = v}))