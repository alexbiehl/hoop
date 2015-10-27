{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses, TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.RefreshAuthorizationPolicyProtocolProtos (protoInfo, fileDescriptorProto) where
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
    "ProtoInfo {protoMod = ProtoName {protobufName = FIName \".hadoop.common\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [], baseName = MName \"RefreshAuthorizationPolicyProtocolProtos\"}, protoFilePath = [\"Hadoop\",\"Protos\",\"RefreshAuthorizationPolicyProtocolProtos.hs\"], protoSource = \"RefreshAuthorizationPolicyProtocol.proto\", extensionKeys = fromList [], messages = [DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.RefreshServiceAclRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"RefreshAuthorizationPolicyProtocolProtos\"], baseName = MName \"RefreshServiceAclRequestProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"RefreshAuthorizationPolicyProtocolProtos\",\"RefreshServiceAclRequestProto.hs\"], isGroup = False, fields = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".hadoop.common.RefreshServiceAclResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"RefreshAuthorizationPolicyProtocolProtos\"], baseName = MName \"RefreshServiceAclResponseProto\"}, descFilePath = [\"Hadoop\",\"Protos\",\"RefreshAuthorizationPolicyProtocolProtos\",\"RefreshServiceAclResponseProto.hs\"], isGroup = False, fields = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}], enums = [], knownKeyMap = fromList []}"
 
fileDescriptorProto :: FileDescriptorProto
fileDescriptorProto
 = P'.getFromBS (P'.wireGet 11)
    (P'.pack
      "\212\SI\n(RefreshAuthorizationPolicyProtocol.proto\DC2\rhadoop.common\"\US\n\GSRefreshServiceAclRequestProto\" \n\RSRefreshServiceAclResponseProto2\157\SOH\n)RefreshAuthorizationPolicyProtocolService\DC2p\n\DC1refreshServiceAcl\DC2,.hadoop.common.RefreshServiceAclRequestProto\SUB-.hadoop.common.RefreshServiceAclResponseProtoB\\\n org.apache.hadoop.security.protoB(RefreshAuthorizationPolicyProtocolProtosH\SOHP\NUL\128\SOH\NUL\136\SOH\SOH\144\SOH\NUL\160\SOH\SOHJ\215\f\n\b\n\NUL\DC2\EOT\CAN\NUL3\SOH\n\b\n\SOH\b\DC2\ETX\CAN\NUL9\n\190\a\n\EOT\b\231\a\NUL\DC2\ETX\CAN\NUL92\131\ACK*\n Licensed to the Apache Software Foundation (ASF) under one\n or more contributor license agreements.  See the NOTICE file\n distributed with this work for additional information\n regarding copyright ownership.  The ASF licenses this file\n to you under the Apache License, Version 2.0 (the\n \"License\"); you may not use this file except in compliance\n with the License.  You may obtain a copy of the License at\n\n     http://www.apache.org/licenses/LICENSE-2.0\n\n Unless required by applicable law or agreed to in writing, software\n distributed under the License is distributed on an \"AS IS\" BASIS,\n WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n See the License for the specific language governing permissions and\n limitations under the License.\n2\170\SOH*\n These .proto interfaces are private and stable.\n Please see http://wiki.apache.org/hadoop/Compatibility\n for what changes are allowed for a *stable* .proto interface.\n\n\f\n\ENQ\b\231\a\NUL\STX\DC2\ETX\CAN\a\DC3\n\r\n\ACK\b\231\a\NUL\STX\NUL\DC2\ETX\CAN\a\DC3\n\SO\n\a\b\231\a\NUL\STX\NUL\SOH\DC2\ETX\CAN\a\DC3\n\f\n\ENQ\b\231\a\NUL\a\DC2\ETX\CAN\SYN8\n\b\n\SOH\b\DC2\ETX\EM\NULI\n\v\n\EOT\b\231\a\SOH\DC2\ETX\EM\NULI\n\f\n\ENQ\b\231\a\SOH\STX\DC2\ETX\EM\a\ESC\n\r\n\ACK\b\231\a\SOH\STX\NUL\DC2\ETX\EM\a\ESC\n\SO\n\a\b\231\a\SOH\STX\NUL\SOH\DC2\ETX\EM\a\ESC\n\f\n\ENQ\b\231\a\SOH\a\DC2\ETX\EM\RSH\n\b\n\SOH\b\DC2\ETX\SUB\NUL$\n\v\n\EOT\b\231\a\STX\DC2\ETX\SUB\NUL$\n\f\n\ENQ\b\231\a\STX\STX\DC2\ETX\SUB\a\FS\n\r\n\ACK\b\231\a\STX\STX\NUL\DC2\ETX\SUB\a\FS\n\SO\n\a\b\231\a\STX\STX\NUL\SOH\DC2\ETX\SUB\a\FS\n\f\n\ENQ\b\231\a\STX\ETX\DC2\ETX\SUB\US#\n\b\n\SOH\b\DC2\ETX\ESC\NUL,\n\v\n\EOT\b\231\a\ETX\DC2\ETX\ESC\NUL,\n\f\n\ENQ\b\231\a\ETX\STX\DC2\ETX\ESC\a$\n\r\n\ACK\b\231\a\ETX\STX\NUL\DC2\ETX\ESC\a$\n\SO\n\a\b\231\a\ETX\STX\NUL\SOH\DC2\ETX\ESC\a$\n\f\n\ENQ\b\231\a\ETX\ETX\DC2\ETX\ESC'+\n\b\n\SOH\STX\DC2\ETX\FS\b\NAK\n-\n\STX\EOT\NUL\DC2\EOT!\NUL\"\SOH\SUB!*\n  Refresh service acl request.\n\n\n\n\ETX\EOT\NUL\SOH\DC2\ETX!\b%\n\GS\n\STX\EOT\SOH\DC2\EOT'\NUL(\SOH\SUB\DC1*\n void response\n\n\n\n\ETX\EOT\SOH\SOH\DC2\ETX'\b&\n\\\n\STX\ACK\NUL\DC2\EOT-\NUL3\SOH\SUBP*\n Protocol which is used to refresh the authorization policy in use currently.\n\n\n\n\ETX\ACK\NUL\SOH\DC2\ETX-\b1\nK\n\EOT\ACK\NUL\STX\NUL\DC2\EOT1\STX2.\SUB=*\n Refresh the service-level authorization policy in-effect.\n\n\f\n\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX1\ACK\ETB\n\f\n\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX1\CAN5\n\f\n\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX2\SO,")