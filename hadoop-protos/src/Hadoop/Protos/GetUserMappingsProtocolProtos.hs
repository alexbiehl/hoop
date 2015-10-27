{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.GetUserMappingsProtocolProtos (protoInfo, fileDescriptorProto) where
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
    "ProtoInfo {protoMod = ProtoName {protobufName = FIName \".hadoop.common\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [], baseName = MName \"GetUserMappingsProtocolProtos\"}, protoFilePath = [\"Hadoop\",\"Protos\",\"GetUserMappingsProtocolProtos.hs\"], protoSource = \"GetUserMappingsProtocol.proto\", extensionKeys = fromList [], messages = [DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.GetGroupsForUserRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"GetUserMappingsProtocolProtos\"], baseName = MName \"GetGroupsForUserRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"GetUserMappingsProtocolProtos\",\"GetGroupsForUserRequestProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.GetGroupsForUserRequestProto.user\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"GetUserMappingsProtocolProtos\",MName \"GetGroupsForUserRequestProto\"], baseName' = FName \"user\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.GetGroupsForUserResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"GetUserMappingsProtocolProtos\"], baseName = MName \"GetGroupsForUserResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"GetUserMappingsProtocolProtos\",\"GetGroupsForUserResponseProto.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".hadoop.common.GetGroupsForUserResponseProto.groups\", haskellPrefix' = [MName \"Hadoop\",MName \"Protos\"], parentModule' = [MName \"GetUserMappingsProtocolProtos\",MName \"GetGroupsForUserResponseProto\"], baseName' = FName \"groups\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}], enums = [], knownKeyMap = fromList []}"
 
fileDescriptorProto :: FileDescriptorProto
fileDescriptorProto
 = P'.getFromBS (P'.wireGet 11)
    (P'.pack
      "\175\DLE\n\GSGetUserMappingsProtocol.proto\DC2\rhadoop.common\",\n\FSGetGroupsForUserRequestProto\DC2\f\n\EOTuser\CAN\SOH \STX(\t\"/\n\GSGetGroupsForUserResponseProto\DC2\SO\n\ACKgroups\CAN\SOH \ETX(\t2\143\SOH\n\RSGetUserMappingsProtocolService\DC2m\n\DLEgetGroupsForUser\DC2+.hadoop.common.GetGroupsForUserRequestProto\SUB,.hadoop.common.GetGroupsForUserResponseProtoBN\n\GSorg.apache.hadoop.tools.protoB\GSGetUserMappingsProtocolProtosH\SOHP\NUL\128\SOH\NUL\136\SOH\SOH\144\SOH\NUL\160\SOH\SOHJ\189\r\n\b\n\NUL\DC2\EOT\CAN\NUL6\SOH\n\b\n\SOH\b\DC2\ETX\CAN\NUL6\n\190\a\n\EOT\b\231\a\NUL\DC2\ETX\CAN\NUL62\131\ACK*\n Licensed to the Apache Software Foundation (ASF) under one\n or more contributor license agreements.  See the NOTICE file\n distributed with this work for additional information\n regarding copyright ownership.  The ASF licenses this file\n to you under the Apache License, Version 2.0 (the\n \"License\"); you may not use this file except in compliance\n with the License.  You may obtain a copy of the License at\n\n     http://www.apache.org/licenses/LICENSE-2.0\n\n Unless required by applicable law or agreed to in writing, software\n distributed under the License is distributed on an \"AS IS\" BASIS,\n WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n See the License for the specific language governing permissions and\n limitations under the License.\n2\170\SOH*\n These .proto interfaces are private and stable.\n Please see http://wiki.apache.org/hadoop/Compatibility\n for what changes are allowed for a *stable* .proto interface.\n\n\f\n\ENQ\b\231\a\NUL\STX\DC2\ETX\CAN\a\DC3\n\r\n\ACK\b\231\a\NUL\STX\NUL\DC2\ETX\CAN\a\DC3\n\SO\n\a\b\231\a\NUL\STX\NUL\SOH\DC2\ETX\CAN\a\DC3\n\f\n\ENQ\b\231\a\NUL\a\DC2\ETX\CAN\SYN5\n\b\n\SOH\b\DC2\ETX\EM\NUL>\n\v\n\EOT\b\231\a\SOH\DC2\ETX\EM\NUL>\n\f\n\ENQ\b\231\a\SOH\STX\DC2\ETX\EM\a\ESC\n\r\n\ACK\b\231\a\SOH\STX\NUL\DC2\ETX\EM\a\ESC\n\SO\n\a\b\231\a\SOH\STX\NUL\SOH\DC2\ETX\EM\a\ESC\n\f\n\ENQ\b\231\a\SOH\a\DC2\ETX\EM\RS=\n\b\n\SOH\b\DC2\ETX\SUB\NUL$\n\v\n\EOT\b\231\a\STX\DC2\ETX\SUB\NUL$\n\f\n\ENQ\b\231\a\STX\STX\DC2\ETX\SUB\a\FS\n\r\n\ACK\b\231\a\STX\STX\NUL\DC2\ETX\SUB\a\FS\n\SO\n\a\b\231\a\STX\STX\NUL\SOH\DC2\ETX\SUB\a\FS\n\f\n\ENQ\b\231\a\STX\ETX\DC2\ETX\SUB\US#\n\b\n\SOH\b\DC2\ETX\ESC\NUL,\n\v\n\EOT\b\231\a\ETX\DC2\ETX\ESC\NUL,\n\f\n\ENQ\b\231\a\ETX\STX\DC2\ETX\ESC\a$\n\r\n\ACK\b\231\a\ETX\STX\NUL\DC2\ETX\ESC\a$\n\SO\n\a\b\231\a\ETX\STX\NUL\SOH\DC2\ETX\ESC\a$\n\f\n\ENQ\b\231\a\ETX\ETX\DC2\ETX\ESC'+\n\b\n\SOH\STX\DC2\ETX\FS\b\NAK\n-\n\STX\EOT\NUL\DC2\EOT!\NUL#\SOH\SUB!*\n  Get groups for user request.\n\n\n\n\ETX\EOT\NUL\SOH\DC2\ETX!\b$\n\v\n\EOT\EOT\NUL\STX\NUL\DC2\ETX\"\STX\ESC\n\f\n\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\"\STX\n\n\f\n\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\"\v\DC1\n\f\n\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\"\DC2\SYN\n\f\n\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\"\EM\SUB\n(\n\STX\EOT\SOH\DC2\EOT(\NUL*\SOH\SUB\FS*\n Response for get groups.\n\n\n\n\ETX\EOT\SOH\SOH\DC2\ETX(\b%\n\v\n\EOT\EOT\SOH\STX\NUL\DC2\ETX)\STX\GS\n\f\n\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX)\STX\n\n\f\n\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX)\v\DC1\n\f\n\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX)\DC2\CAN\n\f\n\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX)\ESC\FS\n4\n\STX\ACK\NUL\DC2\EOT0\NUL6\SOH\SUB(*\n Protocol which maps users to groups.\n\n\n\n\ETX\ACK\NUL\SOH\DC2\ETX0\b&\nD\n\EOT\ACK\NUL\STX\NUL\DC2\EOT4\STX5-\SUB6*\n Get the groups which are mapped to the given user.\n\n\f\n\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX4\ACK\SYN\n\f\n\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX4\ETB3\n\f\n\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX5\SO+")