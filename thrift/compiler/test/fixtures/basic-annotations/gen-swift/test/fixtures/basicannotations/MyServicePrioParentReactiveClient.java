/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

package test.fixtures.basicannotations;

import java.util.*;
import org.apache.thrift.protocol.*;

public class MyServicePrioParentReactiveClient 
  implements MyServicePrioParent.Reactive {
  private final org.apache.thrift.ProtocolId _protocolId;
  private final reactor.core.publisher.Mono<? extends com.facebook.swift.transport.client.RpcClient> _rpcClient;

  private static final java.util.Map<Short, com.facebook.swift.transport.payload.Reader> _ping_EXCEPTION_READERS;
  private static final java.util.Map<Short, com.facebook.swift.transport.payload.Reader> _pong_EXCEPTION_READERS;

  static {
    _ping_EXCEPTION_READERS = java.util.Collections.emptyMap();
    _pong_EXCEPTION_READERS = java.util.Collections.emptyMap();
  }

  public MyServicePrioParentReactiveClient(org.apache.thrift.ProtocolId _protocolId, reactor.core.publisher.Mono<? extends com.facebook.swift.transport.client.RpcClient> _rpcClient) {
    
    this._protocolId = _protocolId;
    this._rpcClient = _rpcClient;
  }

  @java.lang.Override
  public void close() {}

  private com.facebook.swift.transport.payload.Writer _createpingWriter() {
    return oprot -> {
      try {

      } catch (Throwable _e) {
        throw reactor.core.Exceptions.propagate(_e);
      }
    };
  }

  private static final com.facebook.swift.transport.payload.Reader _ping_READER =
    oprot -> {
              try {

                return null;

              } catch (Throwable _e) {
                throw reactor.core.Exceptions.propagate(_e);
              }
            };


  @java.lang.Override
  public reactor.core.publisher.Mono<Void> ping() {
    return _rpcClient
      .flatMap(_rpc -> {
        org.apache.thrift.RequestRpcMetadata _metadata = new org.apache.thrift.RequestRpcMetadata.Builder()
                .setName("ping")
                .setKind(org.apache.thrift.RpcKind.SINGLE_REQUEST_SINGLE_RESPONSE)
                .setOtherMetadata(Collections.emptyMap())
                .setProtocol(_protocolId)
                .build();

            com.facebook.swift.transport.payload.ClientRequestPayload<Void> _crp =
                com.facebook.swift.transport.payload.ClientRequestPayload.create(
                    _createpingWriter(),
                    _ping_READER,
                    _ping_EXCEPTION_READERS,
                    _metadata,
                    java.util.Collections.emptyMap());

            return _rpc
                .singleRequestSingleResponse(_crp, com.facebook.swift.transport.client.RpcOptions.EMPTY)
                .map(_p -> _p.getData());
      });
  }

  private com.facebook.swift.transport.payload.Writer _createpongWriter() {
    return oprot -> {
      try {

      } catch (Throwable _e) {
        throw reactor.core.Exceptions.propagate(_e);
      }
    };
  }

  private static final com.facebook.swift.transport.payload.Reader _pong_READER =
    oprot -> {
              try {

                return null;

              } catch (Throwable _e) {
                throw reactor.core.Exceptions.propagate(_e);
              }
            };


  @java.lang.Override
  public reactor.core.publisher.Mono<Void> pong() {
    return _rpcClient
      .flatMap(_rpc -> {
        org.apache.thrift.RequestRpcMetadata _metadata = new org.apache.thrift.RequestRpcMetadata.Builder()
                .setName("pong")
                .setKind(org.apache.thrift.RpcKind.SINGLE_REQUEST_SINGLE_RESPONSE)
                .setOtherMetadata(Collections.emptyMap())
                .setProtocol(_protocolId)
                .build();

            com.facebook.swift.transport.payload.ClientRequestPayload<Void> _crp =
                com.facebook.swift.transport.payload.ClientRequestPayload.create(
                    _createpongWriter(),
                    _pong_READER,
                    _pong_EXCEPTION_READERS,
                    _metadata,
                    java.util.Collections.emptyMap());

            return _rpc
                .singleRequestSingleResponse(_crp, com.facebook.swift.transport.client.RpcOptions.EMPTY)
                .map(_p -> _p.getData());
      });
  }


}
