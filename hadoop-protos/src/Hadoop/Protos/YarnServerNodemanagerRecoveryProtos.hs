{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.YarnServerNodemanagerRecoveryProtos (protoInfo, fileDescriptorProto) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import Text.DescriptorProtos.FileDescriptorProto (FileDescriptorProto)
import Text.ProtocolBuffers.Reflections (ProtoInfo)
import qualified Text.ProtocolBuffers.WireMessage as P' (wireGet,getFromBS)
 
protoInfo :: ProtoInfo
protoInfo
 = Prelude'.read
    "ProtoInfo {protoMod = ProtoName {protobufName = FIName \".hadoop.yarn\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [], baseName = MName \"YarnServerNodemanagerRecoveryProtos\"}, protoFilePath = [\"Hadoop\",\"Protos\",\"YarnServerNodemanagerRecoveryProtos.hs\"], protoSource = \"yarn_server_nodemanager_recovery.proto\", extensionKeys = fromList [], messages = [DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.ContainerManagerApplicationProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerNodemanagerRecoveryProtos\"], baseName = MName \"ContainerManagerApplicationProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerNodemanagerRecoveryProtos\",\"ContainerManagerApplicationProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerManagerApplicationProto.id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"ContainerManagerApplicationProto\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationIdProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationIdProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerManagerApplicationProto.user\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"ContainerManagerApplicationProto\"], baseName' = FName \"user\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerManagerApplicationProto.credentials\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"ContainerManagerApplicationProto\"], baseName' = FName \"credentials\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerManagerApplicationProto.acls\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"ContainerManagerApplicationProto\"], baseName' = FName \"acls\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationACLMapProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"ApplicationACLMapProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.ContainerManagerApplicationProto.log_aggregation_context\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"ContainerManagerApplicationProto\"], baseName' = FName \"log_aggregation_context\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.LogAggregationContextProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"LogAggregationContextProto\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.DeletionServiceDeleteTaskProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerNodemanagerRecoveryProtos\"], baseName = MName \"DeletionServiceDeleteTaskProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerNodemanagerRecoveryProtos\",\"DeletionServiceDeleteTaskProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.DeletionServiceDeleteTaskProto.id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"DeletionServiceDeleteTaskProto\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.DeletionServiceDeleteTaskProto.user\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"DeletionServiceDeleteTaskProto\"], baseName' = FName \"user\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.DeletionServiceDeleteTaskProto.subdir\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"DeletionServiceDeleteTaskProto\"], baseName' = FName \"subdir\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.DeletionServiceDeleteTaskProto.deletionTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"DeletionServiceDeleteTaskProto\"], baseName' = FName \"deletionTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.DeletionServiceDeleteTaskProto.basedirs\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"DeletionServiceDeleteTaskProto\"], baseName' = FName \"basedirs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.DeletionServiceDeleteTaskProto.successorIds\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"DeletionServiceDeleteTaskProto\"], baseName' = FName \"successorIds\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Just (WireTag {getWireTag = 48},WireTag {getWireTag = 50}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.LocalizedResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerNodemanagerRecoveryProtos\"], baseName = MName \"LocalizedResourceProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerNodemanagerRecoveryProtos\",\"LocalizedResourceProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LocalizedResourceProto.resource\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"LocalizedResourceProto\"], baseName' = FName \"resource\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.yarn.LocalResourceProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnProtos\"], baseName = MName \"LocalResourceProto\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LocalizedResourceProto.localPath\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"LocalizedResourceProto\"], baseName' = FName \"localPath\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LocalizedResourceProto.size\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"LocalizedResourceProto\"], baseName' = FName \"size\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.yarn.LogDeleterProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServerNodemanagerRecoveryProtos\"], baseName = MName \"LogDeleterProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"YarnServerNodemanagerRecoveryProtos\",\"LogDeleterProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LogDeleterProto.user\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"LogDeleterProto\"], baseName' = FName \"user\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.yarn.LogDeleterProto.deletionTime\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"YarnServerNodemanagerRecoveryProtos\",MName \"LogDeleterProto\"], baseName' = FName \"deletionTime\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}], enums = [], knownKeyMap = fromList []}"
 
fileDescriptorProto :: FileDescriptorProto
fileDescriptorProto
 = P'.getFromBS (P'.wireGet 11)
    (P'.pack
      "\224\ETB\n&yarn_server_nodemanager_recovery.proto\DC2\vhadoop.yarn\SUB\DC1yarn_protos.proto\"\239\SOH\n ContainerManagerApplicationProto\DC2+\n\STXid\CAN\SOH \SOH(\v2\US.hadoop.yarn.ApplicationIdProto\DC2\f\n\EOTuser\CAN\STX \SOH(\t\DC2\DC3\n\vcredentials\CAN\ETX \SOH(\f\DC21\n\EOTacls\CAN\EOT \ETX(\v2#.hadoop.yarn.ApplicationACLMapProto\DC2H\n\ETBlog_aggregation_context\CAN\ENQ \SOH(\v2'.hadoop.yarn.LogAggregationContextProto\"\136\SOH\n\RSDeletionServiceDeleteTaskProto\DC2\n\n\STXid\CAN\SOH \SOH(\ENQ\DC2\f\n\EOTuser\CAN\STX \SOH(\t\DC2\SO\n\ACKsubdir\CAN\ETX \SOH(\t\DC2\DC4\n\fdeletionTime\CAN\EOT \SOH(\ETX\DC2\DLE\n\bbasedirs\CAN\ENQ \ETX(\t\DC2\DC4\n\fsuccessorIds\CAN\ACK \ETX(\ENQ\"l\n\SYNLocalizedResourceProto\DC21\n\bresource\CAN\SOH \SOH(\v2\US.hadoop.yarn.LocalResourceProto\DC2\DC1\n\tlocalPath\CAN\STX \SOH(\t\DC2\f\n\EOTsize\CAN\ETX \SOH(\ETX\"5\n\SILogDeleterProto\DC2\f\n\EOTuser\CAN\SOH \SOH(\t\DC2\DC4\n\fdeletionTime\CAN\STX \SOH(\ETXBS\n\FSorg.apache.hadoop.yarn.protoB#YarnServerNodemanagerRecoveryProtosH\SOHP\NUL\128\SOH\NUL\136\SOH\SOH\144\SOH\NUL\160\SOH\SOHJ\158\DC2\n\b\n\NUL\DC2\EOT\DC2\NUL4\SOH\n\b\n\SOH\b\DC2\ETX\DC2\NUL5\n\145\ACK\n\EOT\b\231\a\NUL\DC2\ETX\DC2\NUL52\131\ACK*\n Licensed to the Apache Software Foundation (ASF) under one\n or more contributor license agreements.  See the NOTICE file\n distributed with this work for additional information\n regarding copyright ownership.  The ASF licenses this file\n to you under the Apache License, Version 2.0 (the\n \"License\"); you may not use this file except in compliance\n with the License.  You may obtain a copy of the License at\n\n     http://www.apache.org/licenses/LICENSE-2.0\n\n Unless required by applicable law or agreed to in writing, software\n distributed under the License is distributed on an \"AS IS\" BASIS,\n WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n See the License for the specific language governing permissions and\n limitations under the License.\n\n\f\n\ENQ\b\231\a\NUL\STX\DC2\ETX\DC2\a\DC3\n\r\n\ACK\b\231\a\NUL\STX\NUL\DC2\ETX\DC2\a\DC3\n\SO\n\a\b\231\a\NUL\STX\NUL\SOH\DC2\ETX\DC2\a\DC3\n\f\n\ENQ\b\231\a\NUL\a\DC2\ETX\DC2\SYN4\n\b\n\SOH\b\DC2\ETX\DC3\NULD\n\v\n\EOT\b\231\a\SOH\DC2\ETX\DC3\NULD\n\f\n\ENQ\b\231\a\SOH\STX\DC2\ETX\DC3\a\ESC\n\r\n\ACK\b\231\a\SOH\STX\NUL\DC2\ETX\DC3\a\ESC\n\SO\n\a\b\231\a\SOH\STX\NUL\SOH\DC2\ETX\DC3\a\ESC\n\f\n\ENQ\b\231\a\SOH\a\DC2\ETX\DC3\RSC\n\b\n\SOH\b\DC2\ETX\DC4\NUL$\n\v\n\EOT\b\231\a\STX\DC2\ETX\DC4\NUL$\n\f\n\ENQ\b\231\a\STX\STX\DC2\ETX\DC4\a\FS\n\r\n\ACK\b\231\a\STX\STX\NUL\DC2\ETX\DC4\a\FS\n\SO\n\a\b\231\a\STX\STX\NUL\SOH\DC2\ETX\DC4\a\FS\n\f\n\ENQ\b\231\a\STX\ETX\DC2\ETX\DC4\US#\n\b\n\SOH\b\DC2\ETX\NAK\NUL,\n\v\n\EOT\b\231\a\ETX\DC2\ETX\NAK\NUL,\n\f\n\ENQ\b\231\a\ETX\STX\DC2\ETX\NAK\a$\n\r\n\ACK\b\231\a\ETX\STX\NUL\DC2\ETX\NAK\a$\n\SO\n\a\b\231\a\ETX\STX\NUL\SOH\DC2\ETX\NAK\a$\n\f\n\ENQ\b\231\a\ETX\ETX\DC2\ETX\NAK'+\n\b\n\SOH\STX\DC2\ETX\SYN\b\DC3\n\t\n\STX\ETX\NUL\DC2\ETX\CAN\a\SUB\n\n\n\STX\EOT\NUL\DC2\EOT\SUB\NUL \SOH\n\n\n\ETX\EOT\NUL\SOH\DC2\ETX\SUB\b(\n\v\n\EOT\EOT\NUL\STX\NUL\DC2\ETX\ESC\STX%\n\f\n\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\ESC\STX\n\n\f\n\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ESC\v\GS\n\f\n\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC\RS \n\f\n\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESC#$\n\v\n\EOT\EOT\NUL\STX\SOH\DC2\ETX\FS\STX\ESC\n\f\n\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\FS\STX\n\n\f\n\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\FS\v\DC1\n\f\n\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\FS\DC2\SYN\n\f\n\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\FS\EM\SUB\n\v\n\EOT\EOT\NUL\STX\STX\DC2\ETX\GS\STX!\n\f\n\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\GS\STX\n\n\f\n\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\GS\v\DLE\n\f\n\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\GS\DC1\FS\n\f\n\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\GS\US \n\v\n\EOT\EOT\NUL\STX\ETX\DC2\ETX\RS\STX+\n\f\n\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\RS\STX\n\n\f\n\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\RS\v!\n\f\n\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\RS\"&\n\f\n\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\RS)*\n\v\n\EOT\EOT\NUL\STX\EOT\DC2\ETX\US\STXB\n\f\n\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\US\STX\n\n\f\n\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\US\v%\n\f\n\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\US&=\n\f\n\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\US@A\n\n\n\STX\EOT\SOH\DC2\EOT\"\NUL)\SOH\n\n\n\ETX\EOT\SOH\SOH\DC2\ETX\"\b&\n\v\n\EOT\EOT\SOH\STX\NUL\DC2\ETX#\STX\CAN\n\f\n\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX#\STX\n\n\f\n\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX#\v\DLE\n\f\n\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX#\DC1\DC3\n\f\n\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX#\SYN\ETB\n\v\n\EOT\EOT\SOH\STX\SOH\DC2\ETX$\STX\ESC\n\f\n\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX$\STX\n\n\f\n\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX$\v\DC1\n\f\n\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX$\DC2\SYN\n\f\n\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX$\EM\SUB\n\v\n\EOT\EOT\SOH\STX\STX\DC2\ETX%\STX\GS\n\f\n\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX%\STX\n\n\f\n\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX%\v\DC1\n\f\n\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX%\DC2\CAN\n\f\n\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX%\ESC\FS\n\v\n\EOT\EOT\SOH\STX\ETX\DC2\ETX&\STX\"\n\f\n\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX&\STX\n\n\f\n\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX&\v\DLE\n\f\n\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX&\DC1\GS\n\f\n\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX& !\n\v\n\EOT\EOT\SOH\STX\EOT\DC2\ETX'\STX\US\n\f\n\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX'\STX\n\n\f\n\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX'\v\DC1\n\f\n\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX'\DC2\SUB\n\f\n\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX'\GS\RS\n\v\n\EOT\EOT\SOH\STX\ENQ\DC2\ETX(\STX\"\n\f\n\ENQ\EOT\SOH\STX\ENQ\EOT\DC2\ETX(\STX\n\n\f\n\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX(\v\DLE\n\f\n\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX(\DC1\GS\n\f\n\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX( !\n\n\n\STX\EOT\STX\DC2\EOT+\NUL/\SOH\n\n\n\ETX\EOT\STX\SOH\DC2\ETX+\b\RS\n\v\n\EOT\EOT\STX\STX\NUL\DC2\ETX,\STX+\n\f\n\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX,\STX\n\n\f\n\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX,\v\GS\n\f\n\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX,\RS&\n\f\n\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX,)*\n\v\n\EOT\EOT\STX\STX\SOH\DC2\ETX-\STX \n\f\n\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX-\STX\n\n\f\n\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX-\v\DC1\n\f\n\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX-\DC2\ESC\n\f\n\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX-\RS\US\n\v\n\EOT\EOT\STX\STX\STX\DC2\ETX.\STX\SUB\n\f\n\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX.\STX\n\n\f\n\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX.\v\DLE\n\f\n\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX.\DC1\NAK\n\f\n\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX.\CAN\EM\n\n\n\STX\EOT\ETX\DC2\EOT1\NUL4\SOH\n\n\n\ETX\EOT\ETX\SOH\DC2\ETX1\b\ETB\n\v\n\EOT\EOT\ETX\STX\NUL\DC2\ETX2\STX\ESC\n\f\n\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX2\STX\n\n\f\n\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX2\v\DC1\n\f\n\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX2\DC2\SYN\n\f\n\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX2\EM\SUB\n\v\n\EOT\EOT\ETX\STX\SOH\DC2\ETX3\STX\"\n\f\n\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX3\STX\n\n\f\n\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX3\v\DLE\n\f\n\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX3\DC1\GS\n\f\n\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX3 !")