/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#pragma once

#include <thrift/lib/cpp2/gen/client_h.h>

#include "thrift/compiler/test/fixtures/visitation/gen-cpp2/module_types.h"
#include "thrift/compiler/test/fixtures/visitation/gen-cpp2/reflection_dep_B_types.h"
#include "thrift/compiler/test/fixtures/visitation/gen-cpp2/reflection_dep_C_types.h"
#include "thrift/test/fatal_custom_types.h"

namespace apache { namespace thrift {
  class Cpp2RequestContext;
  namespace detail { namespace ac { struct ClientRequestContext; }}
  namespace transport { class THeader; }
}}

namespace test_cpp2 { namespace cpp_reflection {

class service1AsyncClient : public apache::thrift::GeneratedAsyncClient {
 public:
  using apache::thrift::GeneratedAsyncClient::GeneratedAsyncClient;

  char const* getServiceName() const noexcept override {
    return "service1";
  }

  virtual void method1(std::unique_ptr<apache::thrift::RequestCallback> callback);
  virtual void method1(apache::thrift::RpcOptions& rpcOptions, std::unique_ptr<apache::thrift::RequestCallback> callback);
 protected:
  void method1Impl(apache::thrift::RpcOptions& rpcOptions, std::shared_ptr<apache::thrift::detail::ac::ClientRequestContext> ctx, apache::thrift::RequestClientCallback::Ptr callback);
 public:
  virtual void sync_method1();
  virtual void sync_method1(apache::thrift::RpcOptions& rpcOptions);
  virtual folly::Future<folly::Unit> future_method1();
  virtual folly::SemiFuture<folly::Unit> semifuture_method1();
  virtual folly::Future<folly::Unit> future_method1(apache::thrift::RpcOptions& rpcOptions);
  virtual folly::SemiFuture<folly::Unit> semifuture_method1(apache::thrift::RpcOptions& rpcOptions);
  virtual folly::Future<std::pair<folly::Unit, std::unique_ptr<apache::thrift::transport::THeader>>> header_future_method1(apache::thrift::RpcOptions& rpcOptions);
  virtual folly::SemiFuture<std::pair<folly::Unit, std::unique_ptr<apache::thrift::transport::THeader>>> header_semifuture_method1(apache::thrift::RpcOptions& rpcOptions);

#if FOLLY_HAS_COROUTINES
  template <int = 0>
  folly::coro::Task<void> co_method1() {
    const folly::CancellationToken& cancelToken =
        co_await folly::coro::co_current_cancellation_token;
    if (cancelToken.canBeCancelled()) {
      co_await folly::coro::detachOnCancel(semifuture_method1());
    } else {
      co_await semifuture_method1();
    }
  }
  template <int = 0>
  folly::coro::Task<void> co_method1(apache::thrift::RpcOptions& rpcOptions) {
    const folly::CancellationToken& cancelToken =
        co_await folly::coro::co_current_cancellation_token;
    if (cancelToken.canBeCancelled()) {
      co_await folly::coro::detachOnCancel(semifuture_method1(rpcOptions));
    } else {
      co_await semifuture_method1(rpcOptions);
    }
  }
#endif // FOLLY_HAS_COROUTINES
  virtual void method1(folly::Function<void (::apache::thrift::ClientReceiveState&&)> callback);
  static folly::exception_wrapper recv_wrapped_method1(::apache::thrift::ClientReceiveState& state);
  static void recv_method1(::apache::thrift::ClientReceiveState& state);
  // Mock friendly virtual instance method
  virtual void recv_instance_method1(::apache::thrift::ClientReceiveState& state);
  virtual folly::exception_wrapper recv_instance_wrapped_method1(::apache::thrift::ClientReceiveState& state);
 private:
  template <typename Protocol_>
  void method1T(Protocol_* prot, apache::thrift::RpcOptions& rpcOptions, std::shared_ptr<apache::thrift::detail::ac::ClientRequestContext> ctx, apache::thrift::RequestClientCallback::Ptr callback);
 public:
  virtual void method2(std::unique_ptr<apache::thrift::RequestCallback> callback, int32_t x, const  ::test_cpp2::cpp_reflection::struct1& y, double z);
  virtual void method2(apache::thrift::RpcOptions& rpcOptions, std::unique_ptr<apache::thrift::RequestCallback> callback, int32_t x, const  ::test_cpp2::cpp_reflection::struct1& y, double z);
 protected:
  void method2Impl(apache::thrift::RpcOptions& rpcOptions, std::shared_ptr<apache::thrift::detail::ac::ClientRequestContext> ctx, apache::thrift::RequestClientCallback::Ptr callback, int32_t x, const  ::test_cpp2::cpp_reflection::struct1& y, double z);
 public:
  virtual void sync_method2(int32_t x, const  ::test_cpp2::cpp_reflection::struct1& y, double z);
  virtual void sync_method2(apache::thrift::RpcOptions& rpcOptions, int32_t x, const  ::test_cpp2::cpp_reflection::struct1& y, double z);
  virtual folly::Future<folly::Unit> future_method2(int32_t x, const  ::test_cpp2::cpp_reflection::struct1& y, double z);
  virtual folly::SemiFuture<folly::Unit> semifuture_method2(int32_t x, const  ::test_cpp2::cpp_reflection::struct1& y, double z);
  virtual folly::Future<folly::Unit> future_method2(apache::thrift::RpcOptions& rpcOptions, int32_t x, const  ::test_cpp2::cpp_reflection::struct1& y, double z);
  virtual folly::SemiFuture<folly::Unit> semifuture_method2(apache::thrift::RpcOptions& rpcOptions, int32_t x, const  ::test_cpp2::cpp_reflection::struct1& y, double z);
  virtual folly::Future<std::pair<folly::Unit, std::unique_ptr<apache::thrift::transport::THeader>>> header_future_method2(apache::thrift::RpcOptions& rpcOptions, int32_t x, const  ::test_cpp2::cpp_reflection::struct1& y, double z);
  virtual folly::SemiFuture<std::pair<folly::Unit, std::unique_ptr<apache::thrift::transport::THeader>>> header_semifuture_method2(apache::thrift::RpcOptions& rpcOptions, int32_t x, const  ::test_cpp2::cpp_reflection::struct1& y, double z);

#if FOLLY_HAS_COROUTINES
  template <int = 0>
  folly::coro::Task<void> co_method2(int32_t x, const  ::test_cpp2::cpp_reflection::struct1& y, double z) {
    const folly::CancellationToken& cancelToken =
        co_await folly::coro::co_current_cancellation_token;
    if (cancelToken.canBeCancelled()) {
      co_await folly::coro::detachOnCancel(semifuture_method2(x, y, z));
    } else {
      co_await semifuture_method2(x, y, z);
    }
  }
  template <int = 0>
  folly::coro::Task<void> co_method2(apache::thrift::RpcOptions& rpcOptions, int32_t x, const  ::test_cpp2::cpp_reflection::struct1& y, double z) {
    const folly::CancellationToken& cancelToken =
        co_await folly::coro::co_current_cancellation_token;
    if (cancelToken.canBeCancelled()) {
      co_await folly::coro::detachOnCancel(semifuture_method2(rpcOptions, x, y, z));
    } else {
      co_await semifuture_method2(rpcOptions, x, y, z);
    }
  }
#endif // FOLLY_HAS_COROUTINES
  virtual void method2(folly::Function<void (::apache::thrift::ClientReceiveState&&)> callback, int32_t x, const  ::test_cpp2::cpp_reflection::struct1& y, double z);
  static folly::exception_wrapper recv_wrapped_method2(::apache::thrift::ClientReceiveState& state);
  static void recv_method2(::apache::thrift::ClientReceiveState& state);
  // Mock friendly virtual instance method
  virtual void recv_instance_method2(::apache::thrift::ClientReceiveState& state);
  virtual folly::exception_wrapper recv_instance_wrapped_method2(::apache::thrift::ClientReceiveState& state);
 private:
  template <typename Protocol_>
  void method2T(Protocol_* prot, apache::thrift::RpcOptions& rpcOptions, std::shared_ptr<apache::thrift::detail::ac::ClientRequestContext> ctx, apache::thrift::RequestClientCallback::Ptr callback, int32_t x, const  ::test_cpp2::cpp_reflection::struct1& y, double z);
 public:
  virtual void method3(std::unique_ptr<apache::thrift::RequestCallback> callback);
  virtual void method3(apache::thrift::RpcOptions& rpcOptions, std::unique_ptr<apache::thrift::RequestCallback> callback);
 protected:
  void method3Impl(apache::thrift::RpcOptions& rpcOptions, std::shared_ptr<apache::thrift::detail::ac::ClientRequestContext> ctx, apache::thrift::RequestClientCallback::Ptr callback);
 public:
  virtual int32_t sync_method3();
  virtual int32_t sync_method3(apache::thrift::RpcOptions& rpcOptions);
  virtual folly::Future<int32_t> future_method3();
  virtual folly::SemiFuture<int32_t> semifuture_method3();
  virtual folly::Future<int32_t> future_method3(apache::thrift::RpcOptions& rpcOptions);
  virtual folly::SemiFuture<int32_t> semifuture_method3(apache::thrift::RpcOptions& rpcOptions);
  virtual folly::Future<std::pair<int32_t, std::unique_ptr<apache::thrift::transport::THeader>>> header_future_method3(apache::thrift::RpcOptions& rpcOptions);
  virtual folly::SemiFuture<std::pair<int32_t, std::unique_ptr<apache::thrift::transport::THeader>>> header_semifuture_method3(apache::thrift::RpcOptions& rpcOptions);

#if FOLLY_HAS_COROUTINES
  template <int = 0>
  folly::coro::Task<int32_t> co_method3() {
    const folly::CancellationToken& cancelToken =
        co_await folly::coro::co_current_cancellation_token;
    if (cancelToken.canBeCancelled()) {
      co_return co_await folly::coro::detachOnCancel(semifuture_method3());
    } else {
      co_return co_await semifuture_method3();
    }
  }
  template <int = 0>
  folly::coro::Task<int32_t> co_method3(apache::thrift::RpcOptions& rpcOptions) {
    const folly::CancellationToken& cancelToken =
        co_await folly::coro::co_current_cancellation_token;
    if (cancelToken.canBeCancelled()) {
      co_return co_await folly::coro::detachOnCancel(semifuture_method3(rpcOptions));
    } else {
      co_return co_await semifuture_method3(rpcOptions);
    }
  }
#endif // FOLLY_HAS_COROUTINES
  virtual void method3(folly::Function<void (::apache::thrift::ClientReceiveState&&)> callback);
  static folly::exception_wrapper recv_wrapped_method3(int32_t& _return, ::apache::thrift::ClientReceiveState& state);
  static int32_t recv_method3(::apache::thrift::ClientReceiveState& state);
  // Mock friendly virtual instance method
  virtual int32_t recv_instance_method3(::apache::thrift::ClientReceiveState& state);
  virtual folly::exception_wrapper recv_instance_wrapped_method3(int32_t& _return, ::apache::thrift::ClientReceiveState& state);
 private:
  template <typename Protocol_>
  void method3T(Protocol_* prot, apache::thrift::RpcOptions& rpcOptions, std::shared_ptr<apache::thrift::detail::ac::ClientRequestContext> ctx, apache::thrift::RequestClientCallback::Ptr callback);
 public:
  virtual void method4(std::unique_ptr<apache::thrift::RequestCallback> callback, int32_t i, const  ::test_cpp2::cpp_reflection::struct1& j, double k);
  virtual void method4(apache::thrift::RpcOptions& rpcOptions, std::unique_ptr<apache::thrift::RequestCallback> callback, int32_t i, const  ::test_cpp2::cpp_reflection::struct1& j, double k);
 protected:
  void method4Impl(apache::thrift::RpcOptions& rpcOptions, std::shared_ptr<apache::thrift::detail::ac::ClientRequestContext> ctx, apache::thrift::RequestClientCallback::Ptr callback, int32_t i, const  ::test_cpp2::cpp_reflection::struct1& j, double k);
 public:
  virtual int32_t sync_method4(int32_t i, const  ::test_cpp2::cpp_reflection::struct1& j, double k);
  virtual int32_t sync_method4(apache::thrift::RpcOptions& rpcOptions, int32_t i, const  ::test_cpp2::cpp_reflection::struct1& j, double k);
  virtual folly::Future<int32_t> future_method4(int32_t i, const  ::test_cpp2::cpp_reflection::struct1& j, double k);
  virtual folly::SemiFuture<int32_t> semifuture_method4(int32_t i, const  ::test_cpp2::cpp_reflection::struct1& j, double k);
  virtual folly::Future<int32_t> future_method4(apache::thrift::RpcOptions& rpcOptions, int32_t i, const  ::test_cpp2::cpp_reflection::struct1& j, double k);
  virtual folly::SemiFuture<int32_t> semifuture_method4(apache::thrift::RpcOptions& rpcOptions, int32_t i, const  ::test_cpp2::cpp_reflection::struct1& j, double k);
  virtual folly::Future<std::pair<int32_t, std::unique_ptr<apache::thrift::transport::THeader>>> header_future_method4(apache::thrift::RpcOptions& rpcOptions, int32_t i, const  ::test_cpp2::cpp_reflection::struct1& j, double k);
  virtual folly::SemiFuture<std::pair<int32_t, std::unique_ptr<apache::thrift::transport::THeader>>> header_semifuture_method4(apache::thrift::RpcOptions& rpcOptions, int32_t i, const  ::test_cpp2::cpp_reflection::struct1& j, double k);

#if FOLLY_HAS_COROUTINES
  template <int = 0>
  folly::coro::Task<int32_t> co_method4(int32_t i, const  ::test_cpp2::cpp_reflection::struct1& j, double k) {
    const folly::CancellationToken& cancelToken =
        co_await folly::coro::co_current_cancellation_token;
    if (cancelToken.canBeCancelled()) {
      co_return co_await folly::coro::detachOnCancel(semifuture_method4(i, j, k));
    } else {
      co_return co_await semifuture_method4(i, j, k);
    }
  }
  template <int = 0>
  folly::coro::Task<int32_t> co_method4(apache::thrift::RpcOptions& rpcOptions, int32_t i, const  ::test_cpp2::cpp_reflection::struct1& j, double k) {
    const folly::CancellationToken& cancelToken =
        co_await folly::coro::co_current_cancellation_token;
    if (cancelToken.canBeCancelled()) {
      co_return co_await folly::coro::detachOnCancel(semifuture_method4(rpcOptions, i, j, k));
    } else {
      co_return co_await semifuture_method4(rpcOptions, i, j, k);
    }
  }
#endif // FOLLY_HAS_COROUTINES
  virtual void method4(folly::Function<void (::apache::thrift::ClientReceiveState&&)> callback, int32_t i, const  ::test_cpp2::cpp_reflection::struct1& j, double k);
  static folly::exception_wrapper recv_wrapped_method4(int32_t& _return, ::apache::thrift::ClientReceiveState& state);
  static int32_t recv_method4(::apache::thrift::ClientReceiveState& state);
  // Mock friendly virtual instance method
  virtual int32_t recv_instance_method4(::apache::thrift::ClientReceiveState& state);
  virtual folly::exception_wrapper recv_instance_wrapped_method4(int32_t& _return, ::apache::thrift::ClientReceiveState& state);
 private:
  template <typename Protocol_>
  void method4T(Protocol_* prot, apache::thrift::RpcOptions& rpcOptions, std::shared_ptr<apache::thrift::detail::ac::ClientRequestContext> ctx, apache::thrift::RequestClientCallback::Ptr callback, int32_t i, const  ::test_cpp2::cpp_reflection::struct1& j, double k);
 public:
  virtual void method5(std::unique_ptr<apache::thrift::RequestCallback> callback);
  virtual void method5(apache::thrift::RpcOptions& rpcOptions, std::unique_ptr<apache::thrift::RequestCallback> callback);
 protected:
  void method5Impl(apache::thrift::RpcOptions& rpcOptions, std::shared_ptr<apache::thrift::detail::ac::ClientRequestContext> ctx, apache::thrift::RequestClientCallback::Ptr callback);
 public:
  virtual void sync_method5( ::test_cpp2::cpp_reflection::struct2& _return);
  virtual void sync_method5(apache::thrift::RpcOptions& rpcOptions,  ::test_cpp2::cpp_reflection::struct2& _return);
  virtual folly::Future< ::test_cpp2::cpp_reflection::struct2> future_method5();
  virtual folly::SemiFuture< ::test_cpp2::cpp_reflection::struct2> semifuture_method5();
  virtual folly::Future< ::test_cpp2::cpp_reflection::struct2> future_method5(apache::thrift::RpcOptions& rpcOptions);
  virtual folly::SemiFuture< ::test_cpp2::cpp_reflection::struct2> semifuture_method5(apache::thrift::RpcOptions& rpcOptions);
  virtual folly::Future<std::pair< ::test_cpp2::cpp_reflection::struct2, std::unique_ptr<apache::thrift::transport::THeader>>> header_future_method5(apache::thrift::RpcOptions& rpcOptions);
  virtual folly::SemiFuture<std::pair< ::test_cpp2::cpp_reflection::struct2, std::unique_ptr<apache::thrift::transport::THeader>>> header_semifuture_method5(apache::thrift::RpcOptions& rpcOptions);

#if FOLLY_HAS_COROUTINES
  template <int = 0>
  folly::coro::Task< ::test_cpp2::cpp_reflection::struct2> co_method5() {
    const folly::CancellationToken& cancelToken =
        co_await folly::coro::co_current_cancellation_token;
    if (cancelToken.canBeCancelled()) {
      co_return co_await folly::coro::detachOnCancel(semifuture_method5());
    } else {
      co_return co_await semifuture_method5();
    }
  }
  template <int = 0>
  folly::coro::Task< ::test_cpp2::cpp_reflection::struct2> co_method5(apache::thrift::RpcOptions& rpcOptions) {
    const folly::CancellationToken& cancelToken =
        co_await folly::coro::co_current_cancellation_token;
    if (cancelToken.canBeCancelled()) {
      co_return co_await folly::coro::detachOnCancel(semifuture_method5(rpcOptions));
    } else {
      co_return co_await semifuture_method5(rpcOptions);
    }
  }
#endif // FOLLY_HAS_COROUTINES
  virtual void method5(folly::Function<void (::apache::thrift::ClientReceiveState&&)> callback);
  static folly::exception_wrapper recv_wrapped_method5( ::test_cpp2::cpp_reflection::struct2& _return, ::apache::thrift::ClientReceiveState& state);
  static void recv_method5( ::test_cpp2::cpp_reflection::struct2& _return, ::apache::thrift::ClientReceiveState& state);
  // Mock friendly virtual instance method
  virtual void recv_instance_method5( ::test_cpp2::cpp_reflection::struct2& _return, ::apache::thrift::ClientReceiveState& state);
  virtual folly::exception_wrapper recv_instance_wrapped_method5( ::test_cpp2::cpp_reflection::struct2& _return, ::apache::thrift::ClientReceiveState& state);
 private:
  template <typename Protocol_>
  void method5T(Protocol_* prot, apache::thrift::RpcOptions& rpcOptions, std::shared_ptr<apache::thrift::detail::ac::ClientRequestContext> ctx, apache::thrift::RequestClientCallback::Ptr callback);
 public:
  virtual void method6(std::unique_ptr<apache::thrift::RequestCallback> callback, int32_t l, const  ::test_cpp2::cpp_reflection::struct1& m, double n);
  virtual void method6(apache::thrift::RpcOptions& rpcOptions, std::unique_ptr<apache::thrift::RequestCallback> callback, int32_t l, const  ::test_cpp2::cpp_reflection::struct1& m, double n);
 protected:
  void method6Impl(apache::thrift::RpcOptions& rpcOptions, std::shared_ptr<apache::thrift::detail::ac::ClientRequestContext> ctx, apache::thrift::RequestClientCallback::Ptr callback, int32_t l, const  ::test_cpp2::cpp_reflection::struct1& m, double n);
 public:
  virtual void sync_method6( ::test_cpp2::cpp_reflection::struct2& _return, int32_t l, const  ::test_cpp2::cpp_reflection::struct1& m, double n);
  virtual void sync_method6(apache::thrift::RpcOptions& rpcOptions,  ::test_cpp2::cpp_reflection::struct2& _return, int32_t l, const  ::test_cpp2::cpp_reflection::struct1& m, double n);
  virtual folly::Future< ::test_cpp2::cpp_reflection::struct2> future_method6(int32_t l, const  ::test_cpp2::cpp_reflection::struct1& m, double n);
  virtual folly::SemiFuture< ::test_cpp2::cpp_reflection::struct2> semifuture_method6(int32_t l, const  ::test_cpp2::cpp_reflection::struct1& m, double n);
  virtual folly::Future< ::test_cpp2::cpp_reflection::struct2> future_method6(apache::thrift::RpcOptions& rpcOptions, int32_t l, const  ::test_cpp2::cpp_reflection::struct1& m, double n);
  virtual folly::SemiFuture< ::test_cpp2::cpp_reflection::struct2> semifuture_method6(apache::thrift::RpcOptions& rpcOptions, int32_t l, const  ::test_cpp2::cpp_reflection::struct1& m, double n);
  virtual folly::Future<std::pair< ::test_cpp2::cpp_reflection::struct2, std::unique_ptr<apache::thrift::transport::THeader>>> header_future_method6(apache::thrift::RpcOptions& rpcOptions, int32_t l, const  ::test_cpp2::cpp_reflection::struct1& m, double n);
  virtual folly::SemiFuture<std::pair< ::test_cpp2::cpp_reflection::struct2, std::unique_ptr<apache::thrift::transport::THeader>>> header_semifuture_method6(apache::thrift::RpcOptions& rpcOptions, int32_t l, const  ::test_cpp2::cpp_reflection::struct1& m, double n);

#if FOLLY_HAS_COROUTINES
  template <int = 0>
  folly::coro::Task< ::test_cpp2::cpp_reflection::struct2> co_method6(int32_t l, const  ::test_cpp2::cpp_reflection::struct1& m, double n) {
    const folly::CancellationToken& cancelToken =
        co_await folly::coro::co_current_cancellation_token;
    if (cancelToken.canBeCancelled()) {
      co_return co_await folly::coro::detachOnCancel(semifuture_method6(l, m, n));
    } else {
      co_return co_await semifuture_method6(l, m, n);
    }
  }
  template <int = 0>
  folly::coro::Task< ::test_cpp2::cpp_reflection::struct2> co_method6(apache::thrift::RpcOptions& rpcOptions, int32_t l, const  ::test_cpp2::cpp_reflection::struct1& m, double n) {
    const folly::CancellationToken& cancelToken =
        co_await folly::coro::co_current_cancellation_token;
    if (cancelToken.canBeCancelled()) {
      co_return co_await folly::coro::detachOnCancel(semifuture_method6(rpcOptions, l, m, n));
    } else {
      co_return co_await semifuture_method6(rpcOptions, l, m, n);
    }
  }
#endif // FOLLY_HAS_COROUTINES
  virtual void method6(folly::Function<void (::apache::thrift::ClientReceiveState&&)> callback, int32_t l, const  ::test_cpp2::cpp_reflection::struct1& m, double n);
  static folly::exception_wrapper recv_wrapped_method6( ::test_cpp2::cpp_reflection::struct2& _return, ::apache::thrift::ClientReceiveState& state);
  static void recv_method6( ::test_cpp2::cpp_reflection::struct2& _return, ::apache::thrift::ClientReceiveState& state);
  // Mock friendly virtual instance method
  virtual void recv_instance_method6( ::test_cpp2::cpp_reflection::struct2& _return, ::apache::thrift::ClientReceiveState& state);
  virtual folly::exception_wrapper recv_instance_wrapped_method6( ::test_cpp2::cpp_reflection::struct2& _return, ::apache::thrift::ClientReceiveState& state);
 private:
  template <typename Protocol_>
  void method6T(Protocol_* prot, apache::thrift::RpcOptions& rpcOptions, std::shared_ptr<apache::thrift::detail::ac::ClientRequestContext> ctx, apache::thrift::RequestClientCallback::Ptr callback, int32_t l, const  ::test_cpp2::cpp_reflection::struct1& m, double n);
 public:
};

}} // test_cpp2::cpp_reflection