{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.TraceAdminPB (protoInfo, fileDescriptorProto) where
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
    "ProtoInfo {protoMod = ProtoName {protobufName = FIName \".hadoop.common\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [], baseName = MName \"TraceAdminPB\"}, protoFilePath = [\"Hadoop\",\"Protos\",\"TraceAdminPB.hs\"], protoSource = \"TraceAdmin.proto\", extensionKeys = fromList [], messages = [DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.ListSpanReceiversRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"TraceAdminPB\"], baseName = MName \"ListSpanReceiversRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"TraceAdminPB\",\"ListSpanReceiversRequestProto.hs\"], isGroup = False, fields = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.SpanReceiverListInfo\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"TraceAdminPB\"], baseName = MName \"SpanReceiverListInfo\"}, descFilePath = [\"Hadoop\",\"Protos\",\"TraceAdminPB\",\"SpanReceiverListInfo.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.SpanReceiverListInfo.id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"TraceAdminPB\",MName \"SpanReceiverListInfo\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.SpanReceiverListInfo.className\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"TraceAdminPB\",MName \"SpanReceiverListInfo\"], baseName' = FName \"className\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.ListSpanReceiversResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"TraceAdminPB\"], baseName = MName \"ListSpanReceiversResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"TraceAdminPB\",\"ListSpanReceiversResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.ListSpanReceiversResponseProto.descriptions\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"TraceAdminPB\",MName \"ListSpanReceiversResponseProto\"], baseName' = FName \"descriptions\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.SpanReceiverListInfo\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"TraceAdminPB\"], baseName = MName \"SpanReceiverListInfo\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.ConfigPair\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"TraceAdminPB\"], baseName = MName \"ConfigPair\"}, descFilePath = [\"Hadoop\",\"Protos\",\"TraceAdminPB\",\"ConfigPair.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.ConfigPair.key\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"TraceAdminPB\",MName \"ConfigPair\"], baseName' = FName \"key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.ConfigPair.value\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"TraceAdminPB\",MName \"ConfigPair\"], baseName' = FName \"value\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.AddSpanReceiverRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"TraceAdminPB\"], baseName = MName \"AddSpanReceiverRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"TraceAdminPB\",\"AddSpanReceiverRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.AddSpanReceiverRequestProto.className\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"TraceAdminPB\",MName \"AddSpanReceiverRequestProto\"], baseName' = FName \"className\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.AddSpanReceiverRequestProto.config\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"TraceAdminPB\",MName \"AddSpanReceiverRequestProto\"], baseName' = FName \"config\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".hadoop.common.ConfigPair\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"TraceAdminPB\"], baseName = MName \"ConfigPair\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.AddSpanReceiverResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"TraceAdminPB\"], baseName = MName \"AddSpanReceiverResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"TraceAdminPB\",\"AddSpanReceiverResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.AddSpanReceiverResponseProto.id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"TraceAdminPB\",MName \"AddSpanReceiverResponseProto\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.RemoveSpanReceiverRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"TraceAdminPB\"], baseName = MName \"RemoveSpanReceiverRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"TraceAdminPB\",\"RemoveSpanReceiverRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.RemoveSpanReceiverRequestProto.id\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"TraceAdminPB\",MName \"RemoveSpanReceiverRequestProto\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.RemoveSpanReceiverResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"TraceAdminPB\"], baseName = MName \"RemoveSpanReceiverResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"TraceAdminPB\",\"RemoveSpanReceiverResponseProto.hs\"], isGroup = False, fields = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}], enums = [], knownKeyMap = fromList []}"
 
fileDescriptorProto :: FileDescriptorProto
fileDescriptorProto
 = P'.getFromBS (P'.wireGet 11)
    (P'.pack
      "\254\CAN\n\DLETraceAdmin.proto\DC2\rhadoop.common\"\US\n\GSListSpanReceiversRequestProto\"5\n\DC4SpanReceiverListInfo\DC2\n\n\STXid\CAN\SOH \STX(\ETX\DC2\DC1\n\tclassName\CAN\STX \STX(\t\"[\n\RSListSpanReceiversResponseProto\DC29\n\fdescriptions\CAN\SOH \ETX(\v2#.hadoop.common.SpanReceiverListInfo\"(\n\nConfigPair\DC2\v\n\ETXkey\CAN\SOH \STX(\t\DC2\r\n\ENQvalue\CAN\STX \STX(\t\"[\n\ESCAddSpanReceiverRequestProto\DC2\DC1\n\tclassName\CAN\SOH \STX(\t\DC2)\n\ACKconfig\CAN\STX \ETX(\v2\EM.hadoop.common.ConfigPair\"*\n\FSAddSpanReceiverResponseProto\DC2\n\n\STXid\CAN\SOH \STX(\ETX\",\n\RSRemoveSpanReceiverRequestProto\DC2\n\n\STXid\CAN\SOH \STX(\ETX\"!\n\USRemoveSpanReceiverResponseProto2\230\STX\n\DC1TraceAdminService\DC2p\n\DC1listSpanReceivers\DC2,.hadoop.common.ListSpanReceiversRequestProto\SUB-.hadoop.common.ListSpanReceiversResponseProto\DC2j\n\SIaddSpanReceiver\DC2*.hadoop.common.AddSpanReceiverRequestProto\SUB+.hadoop.common.AddSpanReceiverResponseProto\DC2s\n\DC2removeSpanReceiver\DC2-.hadoop.common.RemoveSpanReceiverRequestProto\SUB..hadoop.common.RemoveSpanReceiverResponseProtoB9\n\EMorg.apache.hadoop.tracingB\fTraceAdminPBH\SOHP\NUL\128\SOH\NUL\136\SOH\SOH\144\SOH\NUL\160\SOH\SOHJ\253\DC1\n\b\n\NUL\DC2\EOT\CAN\NULH\SOH\n\b\n\SOH\b\DC2\ETX\CAN\NUL2\n\190\a\n\EOT\b\231\a\NUL\DC2\ETX\CAN\NUL22\131\ACK*\n Licensed to the Apache Software Foundation (ASF) under one\n or more contributor license agreements.  See the NOTICE file\n distributed with this work for additional information\n regarding copyright ownership.  The ASF licenses this file\n to you under the Apache License, Version 2.0 (the\n \"License\"); you may not use this file except in compliance\n with the License.  You may obtain a copy of the License at\n\n     http://www.apache.org/licenses/LICENSE-2.0\n\n Unless required by applicable law or agreed to in writing, software\n distributed under the License is distributed on an \"AS IS\" BASIS,\n WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n See the License for the specific language governing permissions and\n limitations under the License.\n2\170\SOH*\n These .proto interfaces are private and stable.\n Please see http://wiki.apache.org/hadoop/Compatibility\n for what changes are allowed for a *stable* .proto interface.\n\n\f\n\ENQ\b\231\a\NUL\STX\DC2\ETX\CAN\a\DC3\n\r\n\ACK\b\231\a\NUL\STX\NUL\DC2\ETX\CAN\a\DC3\n\SO\n\a\b\231\a\NUL\STX\NUL\SOH\DC2\ETX\CAN\a\DC3\n\f\n\ENQ\b\231\a\NUL\a\DC2\ETX\CAN\SYN1\n\b\n\SOH\b\DC2\ETX\EM\NUL-\n\v\n\EOT\b\231\a\SOH\DC2\ETX\EM\NUL-\n\f\n\ENQ\b\231\a\SOH\STX\DC2\ETX\EM\a\ESC\n\r\n\ACK\b\231\a\SOH\STX\NUL\DC2\ETX\EM\a\ESC\n\SO\n\a\b\231\a\SOH\STX\NUL\SOH\DC2\ETX\EM\a\ESC\n\f\n\ENQ\b\231\a\SOH\a\DC2\ETX\EM\RS,\n\b\n\SOH\b\DC2\ETX\SUB\NUL$\n\v\n\EOT\b\231\a\STX\DC2\ETX\SUB\NUL$\n\f\n\ENQ\b\231\a\STX\STX\DC2\ETX\SUB\a\FS\n\r\n\ACK\b\231\a\STX\STX\NUL\DC2\ETX\SUB\a\FS\n\SO\n\a\b\231\a\STX\STX\NUL\SOH\DC2\ETX\SUB\a\FS\n\f\n\ENQ\b\231\a\STX\ETX\DC2\ETX\SUB\US#\n\b\n\SOH\b\DC2\ETX\ESC\NUL,\n\v\n\EOT\b\231\a\ETX\DC2\ETX\ESC\NUL,\n\f\n\ENQ\b\231\a\ETX\STX\DC2\ETX\ESC\a$\n\r\n\ACK\b\231\a\ETX\STX\NUL\DC2\ETX\ESC\a$\n\SO\n\a\b\231\a\ETX\STX\NUL\SOH\DC2\ETX\ESC\a$\n\f\n\ENQ\b\231\a\ETX\ETX\DC2\ETX\ESC'+\n\b\n\SOH\STX\DC2\ETX\FS\b\NAK\n\n\n\STX\EOT\NUL\DC2\EOT\RS\NUL\US\SOH\n\n\n\ETX\EOT\NUL\SOH\DC2\ETX\RS\b%\n\n\n\STX\EOT\SOH\DC2\EOT!\NUL$\SOH\n\n\n\ETX\EOT\SOH\SOH\DC2\ETX!\b\FS\n\v\n\EOT\EOT\SOH\STX\NUL\DC2\ETX\"\STX\CAN\n\f\n\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\"\STX\n\n\f\n\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\"\v\DLE\n\f\n\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\"\DC1\DC3\n\f\n\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\"\SYN\ETB\n\v\n\EOT\EOT\SOH\STX\SOH\DC2\ETX#\STX \n\f\n\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX#\STX\n\n\f\n\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX#\v\DC1\n\f\n\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX#\DC2\ESC\n\f\n\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX#\RS\US\n\n\n\STX\EOT\STX\DC2\EOT&\NUL(\SOH\n\n\n\ETX\EOT\STX\SOH\DC2\ETX&\b&\n\v\n\EOT\EOT\STX\STX\NUL\DC2\ETX'\STX1\n\f\n\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX'\STX\n\n\f\n\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX'\v\US\n\f\n\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX' ,\n\f\n\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX'/0\n\n\n\STX\EOT\ETX\DC2\EOT*\NUL-\SOH\n\n\n\ETX\EOT\ETX\SOH\DC2\ETX*\b\DC2\n\v\n\EOT\EOT\ETX\STX\NUL\DC2\ETX+\STX\SUB\n\f\n\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX+\STX\n\n\f\n\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX+\v\DC1\n\f\n\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX+\DC2\NAK\n\f\n\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX+\CAN\EM\n\v\n\EOT\EOT\ETX\STX\SOH\DC2\ETX,\STX\FS\n\f\n\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX,\STX\n\n\f\n\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX,\v\DC1\n\f\n\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX,\DC2\ETB\n\f\n\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX,\SUB\ESC\n\n\n\STX\EOT\EOT\DC2\EOT/\NUL2\SOH\n\n\n\ETX\EOT\EOT\SOH\DC2\ETX/\b#\n\v\n\EOT\EOT\EOT\STX\NUL\DC2\ETX0\STX \n\f\n\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX0\STX\n\n\f\n\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX0\v\DC1\n\f\n\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX0\DC2\ESC\n\f\n\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX0\RS\US\n\v\n\EOT\EOT\EOT\STX\SOH\DC2\ETX1\STX!\n\f\n\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX1\STX\n\n\f\n\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETX1\v\NAK\n\f\n\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX1\SYN\FS\n\f\n\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX1\US \n\n\n\STX\EOT\ENQ\DC2\EOT4\NUL6\SOH\n\n\n\ETX\EOT\ENQ\SOH\DC2\ETX4\b$\n\v\n\EOT\EOT\ENQ\STX\NUL\DC2\ETX5\STX\CAN\n\f\n\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX5\STX\n\n\f\n\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX5\v\DLE\n\f\n\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX5\DC1\DC3\n\f\n\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX5\SYN\ETB\n\n\n\STX\EOT\ACK\DC2\EOT8\NUL:\SOH\n\n\n\ETX\EOT\ACK\SOH\DC2\ETX8\b&\n\v\n\EOT\EOT\ACK\STX\NUL\DC2\ETX9\STX\CAN\n\f\n\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX9\STX\n\n\f\n\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX9\v\DLE\n\f\n\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX9\DC1\DC3\n\f\n\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX9\SYN\ETB\n\n\n\STX\EOT\a\DC2\EOT<\NUL=\SOH\n\n\n\ETX\EOT\a\SOH\DC2\ETX<\b'\n\n\n\STX\ACK\NUL\DC2\EOT?\NULH\SOH\n\n\n\ETX\ACK\NUL\SOH\DC2\ETX?\b\EM\n\f\n\EOT\ACK\NUL\STX\NUL\DC2\EOT@\STXA.\n\f\n\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX@\ACK\ETB\n\f\n\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX@\CAN5\n\f\n\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETXA\SO,\n\f\n\EOT\ACK\NUL\STX\SOH\DC2\EOTC\STXD,\n\f\n\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETXC\ACK\NAK\n\f\n\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETXC\SYN1\n\f\n\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETXD\SO*\n\f\n\EOT\ACK\NUL\STX\STX\DC2\EOTF\STXG/\n\f\n\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETXF\ACK\CAN\n\f\n\ENQ\ACK\NUL\STX\STX\STX\DC2\ETXF\EM7\n\f\n\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETXG\SO-")