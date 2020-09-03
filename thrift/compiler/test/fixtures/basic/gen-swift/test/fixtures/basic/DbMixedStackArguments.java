/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

package test.fixtures.basic;

import com.facebook.swift.codec.*;
import com.facebook.swift.codec.ThriftField.Requiredness;
import com.facebook.swift.service.*;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.*;
import java.util.*;

@SwiftGenerated
@ThriftService("DbMixedStackArguments")
public interface DbMixedStackArguments extends java.io.Closeable {
    @ThriftService("DbMixedStackArguments")
    public interface Async extends java.io.Closeable {
        @Override void close();

        @ThriftMethod(value = "getDataByKey0")
        ListenableFuture<byte[]> getDataByKey0(
            @ThriftField(value=1, name="key", requiredness=Requiredness.NONE) final String key);

        @ThriftMethod(value = "getDataByKey1")
        ListenableFuture<byte[]> getDataByKey1(
            @ThriftField(value=1, name="key", requiredness=Requiredness.NONE) final String key);
    }
    @Override void close();

    @ThriftMethod(value = "getDataByKey0")
    byte[] getDataByKey0(
        @ThriftField(value=1, name="key", requiredness=Requiredness.NONE) final String key) throws org.apache.thrift.TException;

    @ThriftMethod(value = "getDataByKey1")
    byte[] getDataByKey1(
        @ThriftField(value=1, name="key", requiredness=Requiredness.NONE) final String key) throws org.apache.thrift.TException;
}
