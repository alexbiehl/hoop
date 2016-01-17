{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Hadoop.Protos.ApplicationMasterProtocol (protoInfo, fileDescriptorProto) where
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
    "ProtoInfo {protoMod = ProtoName {protobufName = FIName \".hadoop.yarn\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [], baseName = MName \"ApplicationMasterProtocol\"}, protoFilePath = [\"Hadoop\",\"Protos\",\"ApplicationMasterProtocol.hs\"], protoSource = \"applicationmaster_protocol.proto\", extensionKeys = fromList [], messages = [], enums = [], oneofs = [], services = [ServiceInfo {serviceName = ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationMasterProtocolService\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ApplicationMasterProtocol\"], baseName = MName \"ApplicationMasterProtocolService\"}, serviceMethods = [MethodInfo {methodName = ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationMasterProtocolService.registerApplicationMaster\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ApplicationMasterProtocol\",MName \"ApplicationMasterProtocolService\"], baseName = MName \"RegisterApplicationMaster\"}, methodInput = ProtoName {protobufName = FIName \".hadoop.yarn.RegisterApplicationMasterRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"RegisterApplicationMasterRequestProto\"}, methodOutput = ProtoName {protobufName = FIName \".hadoop.yarn.RegisterApplicationMasterResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"RegisterApplicationMasterResponseProto\"}},MethodInfo {methodName = ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationMasterProtocolService.finishApplicationMaster\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ApplicationMasterProtocol\",MName \"ApplicationMasterProtocolService\"], baseName = MName \"FinishApplicationMaster\"}, methodInput = ProtoName {protobufName = FIName \".hadoop.yarn.FinishApplicationMasterRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"FinishApplicationMasterRequestProto\"}, methodOutput = ProtoName {protobufName = FIName \".hadoop.yarn.FinishApplicationMasterResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"FinishApplicationMasterResponseProto\"}},MethodInfo {methodName = ProtoName {protobufName = FIName \".hadoop.yarn.ApplicationMasterProtocolService.allocate\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"ApplicationMasterProtocol\",MName \"ApplicationMasterProtocolService\"], baseName = MName \"Allocate\"}, methodInput = ProtoName {protobufName = FIName \".hadoop.yarn.AllocateRequestProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"AllocateRequestProto\"}, methodOutput = ProtoName {protobufName = FIName \".hadoop.yarn.AllocateResponseProto\", haskellPrefix = [MName \"Hadoop\",MName \"Protos\"], parentModule = [MName \"YarnServiceProtos\"], baseName = MName \"AllocateResponseProto\"}}], serviceFilePath = [\"Hadoop\",\"Protos\",\"ApplicationMasterProtocol\",\"ApplicationMasterProtocolService.hs\"]}], knownKeyMap = fromList []}"
 
fileDescriptorProto :: FileDescriptorProto
fileDescriptorProto
 = P'.getFromBS (P'.wireGet 11)
    (P'.pack
      "\209\b\n applicationmaster_protocol.proto\DC2\vhadoop.yarn\SUB\EMyarn_service_protos.proto2\137\ETX\n ApplicationMasterProtocolService\DC2\136\SOH\n\EMregisterApplicationMaster\DC22.hadoop.yarn.RegisterApplicationMasterRequestProto\SUB3.hadoop.yarn.RegisterApplicationMasterResponseProto(\NUL0\NUL\DC2\130\SOH\n\ETBfinishApplicationMaster\DC20.hadoop.yarn.FinishApplicationMasterRequestProto\SUB1.hadoop.yarn.FinishApplicationMasterResponseProto(\NUL0\NUL\DC2U\n\ballocate\DC2!.hadoop.yarn.AllocateRequestProto\SUB\".hadoop.yarn.AllocateResponseProto(\NUL0\NULBR\n\FSorg.apache.hadoop.yarn.protoB\EMApplicationMasterProtocolH\SOHP\NUL\128\SOH\NUL\136\SOH\SOH\144\SOH\NUL\160\SOH\SOH\184\SOH\NUL\216\SOH\NUL\248\SOH\NULJ\164\EOT\n\b\n\NUL\DC2\EOT\CAN\NUL%\SOH\n\b\n\SOH\b\DC2\ETX\CAN\NUL5\n\v\n\EOT\b\231\a\NUL\DC2\ETX\CAN\NUL5\n\f\n\ENQ\b\231\a\NUL\STX\DC2\ETX\CAN\a\DC3\n\r\n\ACK\b\231\a\NUL\STX\NUL\DC2\ETX\CAN\a\DC3\n\SO\n\a\b\231\a\NUL\STX\NUL\SOH\DC2\ETX\CAN\a\DC3\n\f\n\ENQ\b\231\a\NUL\a\DC2\ETX\CAN\SYN4\n\b\n\SOH\b\DC2\ETX\EM\NUL:\n\v\n\EOT\b\231\a\SOH\DC2\ETX\EM\NUL:\n\f\n\ENQ\b\231\a\SOH\STX\DC2\ETX\EM\a\ESC\n\r\n\ACK\b\231\a\SOH\STX\NUL\DC2\ETX\EM\a\ESC\n\SO\n\a\b\231\a\SOH\STX\NUL\SOH\DC2\ETX\EM\a\ESC\n\f\n\ENQ\b\231\a\SOH\a\DC2\ETX\EM\RS9\n\b\n\SOH\b\DC2\ETX\SUB\NUL$\n\v\n\EOT\b\231\a\STX\DC2\ETX\SUB\NUL$\n\f\n\ENQ\b\231\a\STX\STX\DC2\ETX\SUB\a\FS\n\r\n\ACK\b\231\a\STX\STX\NUL\DC2\ETX\SUB\a\FS\n\SO\n\a\b\231\a\STX\STX\NUL\SOH\DC2\ETX\SUB\a\FS\n\f\n\ENQ\b\231\a\STX\ETX\DC2\ETX\SUB\US#\n\b\n\SOH\b\DC2\ETX\ESC\NUL,\n\v\n\EOT\b\231\a\ETX\DC2\ETX\ESC\NUL,\n\f\n\ENQ\b\231\a\ETX\STX\DC2\ETX\ESC\a$\n\r\n\ACK\b\231\a\ETX\STX\NUL\DC2\ETX\ESC\a$\n\SO\n\a\b\231\a\ETX\STX\NUL\SOH\DC2\ETX\ESC\a$\n\f\n\ENQ\b\231\a\ETX\ETX\DC2\ETX\ESC'+\n\b\n\SOH\STX\DC2\ETX\FS\b\DC3\n\t\n\STX\ETX\NUL\DC2\ETX\RS\a\"\n\n\n\STX\ACK\NUL\DC2\EOT!\NUL%\SOH\n\n\n\ETX\ACK\NUL\SOH\DC2\ETX!\b(\n\v\n\EOT\ACK\NUL\STX\NUL\DC2\ETX\"\STXy\n\f\n\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\"\ACK\US\n\f\n\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\"!F\n\f\n\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\"Qw\n\v\n\EOT\ACK\NUL\STX\SOH\DC2\ETX#\STXs\n\f\n\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX#\ACK\GS\n\f\n\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX#\USB\n\f\n\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX#Mq\n\v\n\EOT\ACK\NUL\STX\STX\DC2\ETX$\STXF\n\f\n\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX$\ACK\SO\n\f\n\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX$\DLE$\n\f\n\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX$/D")