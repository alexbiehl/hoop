{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.SCMAdminProtocol (protoInfo, fileDescriptorProto) where
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
    "ProtoInfo {protoMod = ProtoName {protobufName = FIName \".hadoop.yarn\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [], baseName = MName \"SCMAdminProtocol\"}, protoFilePath = [\"Hadoop\",\"Protos\",\"SCMAdminProtocol.hs\"], protoSource = \"server/SCM_Admin_protocol.proto\", extensionKeys = fromList [], messages = [], enums = [], oneofs = [], services = [ServiceInfo {serviceName = ProtoName {protobufName = FIName \".hadoop.yarn.SCMAdminProtocolService\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"SCMAdminProtocol\"], baseName = MName \"SCMAdminProtocolService\"}, serviceMethods = [MethodInfo {methodName = ProtoName {protobufName = FIName \".hadoop.yarn.SCMAdminProtocolService.runCleanerTask\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"SCMAdminProtocol\",MName \"SCMAdminProtocolService\"], baseName = MName \"RunCleanerTask\"}, methodInput = ProtoName {protobufName = FIName \".hadoop.yarn.RunSharedCacheCleanerTaskRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"RunSharedCacheCleanerTaskRequestProto\"}, methodOutput = ProtoName {protobufName = FIName \".hadoop.yarn.RunSharedCacheCleanerTaskResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"RunSharedCacheCleanerTaskResponseProto\"}}], serviceFilePath = [\"Hadoop\",\"Protos\",\"SCMAdminProtocol\",\"SCMAdminProtocolService.hs\"]}], knownKeyMap = fromList []}"
 
fileDescriptorProto :: FileDescriptorProto
fileDescriptorProto
 = P'.getFromBS (P'.wireGet 11)
    (P'.pack
      "\232\ENQ\n\USserver/SCM_Admin_protocol.proto\DC2\vhadoop.yarn\SUB\EMyarn_service_protos.proto2\152\SOH\n\ETBSCMAdminProtocolService\DC2}\n\SOrunCleanerTask\DC22.hadoop.yarn.RunSharedCacheCleanerTaskRequestProto\SUB3.hadoop.yarn.RunSharedCacheCleanerTaskResponseProto(\NUL0\NULBI\n\FSorg.apache.hadoop.yarn.protoB\DLESCMAdminProtocolH\SOHP\NUL\128\SOH\NUL\136\SOH\SOH\144\SOH\NUL\160\SOH\SOH\184\SOH\NUL\216\SOH\NUL\248\SOH\NULJ\182\ETX\n\b\n\NUL\DC2\EOT\DC2\NUL\FS\SOH\n\b\n\SOH\b\DC2\ETX\DC2\NUL5\n\v\n\EOT\b\231\a\NUL\DC2\ETX\DC2\NUL5\n\f\n\ENQ\b\231\a\NUL\STX\DC2\ETX\DC2\a\DC3\n\r\n\ACK\b\231\a\NUL\STX\NUL\DC2\ETX\DC2\a\DC3\n\SO\n\a\b\231\a\NUL\STX\NUL\SOH\DC2\ETX\DC2\a\DC3\n\f\n\ENQ\b\231\a\NUL\a\DC2\ETX\DC2\SYN4\n\b\n\SOH\b\DC2\ETX\DC3\NUL1\n\v\n\EOT\b\231\a\SOH\DC2\ETX\DC3\NUL1\n\f\n\ENQ\b\231\a\SOH\STX\DC2\ETX\DC3\a\ESC\n\r\n\ACK\b\231\a\SOH\STX\NUL\DC2\ETX\DC3\a\ESC\n\SO\n\a\b\231\a\SOH\STX\NUL\SOH\DC2\ETX\DC3\a\ESC\n\f\n\ENQ\b\231\a\SOH\a\DC2\ETX\DC3\RS0\n\b\n\SOH\b\DC2\ETX\DC4\NUL$\n\v\n\EOT\b\231\a\STX\DC2\ETX\DC4\NUL$\n\f\n\ENQ\b\231\a\STX\STX\DC2\ETX\DC4\a\FS\n\r\n\ACK\b\231\a\STX\STX\NUL\DC2\ETX\DC4\a\FS\n\SO\n\a\b\231\a\STX\STX\NUL\SOH\DC2\ETX\DC4\a\FS\n\f\n\ENQ\b\231\a\STX\ETX\DC2\ETX\DC4\US#\n\b\n\SOH\b\DC2\ETX\NAK\NUL,\n\v\n\EOT\b\231\a\ETX\DC2\ETX\NAK\NUL,\n\f\n\ENQ\b\231\a\ETX\STX\DC2\ETX\NAK\a$\n\r\n\ACK\b\231\a\ETX\STX\NUL\DC2\ETX\NAK\a$\n\SO\n\a\b\231\a\ETX\STX\NUL\SOH\DC2\ETX\NAK\a$\n\f\n\ENQ\b\231\a\ETX\ETX\DC2\ETX\NAK'+\n\b\n\SOH\STX\DC2\ETX\SYN\b\DC3\n\t\n\STX\ETX\NUL\DC2\ETX\CAN\a\"\n\n\n\STX\ACK\NUL\DC2\EOT\SUB\NUL\FS\SOH\n\n\n\ETX\ACK\NUL\SOH\DC2\ETX\SUB\b\US\n\v\n\EOT\ACK\NUL\STX\NUL\DC2\ETX\ESC\STXn\n\f\n\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\ESC\ACK\DC4\n\f\n\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\ESC\SYN;\n\f\n\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\ESCFl")