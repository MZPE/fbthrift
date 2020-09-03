#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

cimport cython
from cpython.version cimport PY_VERSION_HEX
from libc.stdint cimport (
    int8_t as cint8_t,
    int16_t as cint16_t,
    int32_t as cint32_t,
    int64_t as cint64_t,
)
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libcpp.vector cimport vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap
from cython.operator cimport dereference as deref
from cpython.ref cimport PyObject
from thrift.py3.exceptions cimport (
    cTApplicationException,
    ApplicationError as __ApplicationError,
    cTApplicationExceptionType__UNKNOWN)
from thrift.py3.server cimport ServiceInterface, RequestContext, Cpp2RequestContext
from thrift.py3.server import RequestContext, pass_context
from folly cimport (
  cFollyPromise,
  cFollyUnit,
  c_unit
)
from thrift.py3.types cimport move

if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
    from thrift.py3.server cimport THRIFT_REQUEST_CONTEXT as __THRIFT_REQUEST_CONTEXT

cimport folly.futures
from folly.executor cimport get_executor
cimport folly.iobuf as __iobuf
import folly.iobuf as __iobuf
from folly.iobuf cimport move as move_iobuf

cimport module.types as _module_types
import module.types as _module_types

cimport module.services_reflection as _services_reflection

import asyncio
import functools
import sys
import traceback
import types as _py_types

from module.services_wrapper cimport cMyServiceInterface
from module.services_wrapper cimport cDbMixedStackArgumentsInterface


cdef extern from "<utility>" namespace "std":
    cdef cFollyPromise[unique_ptr[string]] move_promise_binary "std::move"(
        cFollyPromise[unique_ptr[string]])
    cdef cFollyPromise[cbool] move_promise_cbool "std::move"(
        cFollyPromise[cbool])
    cdef cFollyPromise[unique_ptr[string]] move_promise_string "std::move"(
        cFollyPromise[unique_ptr[string]])
    cdef cFollyPromise[cFollyUnit] move_promise_cFollyUnit "std::move"(
        cFollyPromise[cFollyUnit])

@cython.auto_pickle(False)
cdef class Promise_binary:
    cdef cFollyPromise[unique_ptr[string]] cPromise

    @staticmethod
    cdef create(cFollyPromise[unique_ptr[string]] cPromise):
        inst = <Promise_binary>Promise_binary.__new__(Promise_binary)
        inst.cPromise = move_promise_binary(cPromise)
        return inst

@cython.auto_pickle(False)
cdef class Promise_cbool:
    cdef cFollyPromise[cbool] cPromise

    @staticmethod
    cdef create(cFollyPromise[cbool] cPromise):
        inst = <Promise_cbool>Promise_cbool.__new__(Promise_cbool)
        inst.cPromise = move_promise_cbool(cPromise)
        return inst

@cython.auto_pickle(False)
cdef class Promise_string:
    cdef cFollyPromise[unique_ptr[string]] cPromise

    @staticmethod
    cdef create(cFollyPromise[unique_ptr[string]] cPromise):
        inst = <Promise_string>Promise_string.__new__(Promise_string)
        inst.cPromise = move_promise_string(cPromise)
        return inst

@cython.auto_pickle(False)
cdef class Promise_cFollyUnit:
    cdef cFollyPromise[cFollyUnit] cPromise

    @staticmethod
    cdef create(cFollyPromise[cFollyUnit] cPromise):
        inst = <Promise_cFollyUnit>Promise_cFollyUnit.__new__(Promise_cFollyUnit)
        inst.cPromise = move_promise_cFollyUnit(cPromise)
        return inst

cdef object _MyService_annotations = _py_types.MappingProxyType({
})


@cython.auto_pickle(False)
cdef class MyServiceInterface(
    ServiceInterface
):
    annotations = _MyService_annotations

    def __cinit__(self):
        self._cpp_obj = cMyServiceInterface(
            <PyObject *> self,
            get_executor()
        )

    @staticmethod
    def pass_context_ping(fn):
        return pass_context(fn)

    async def ping(
            self):
        raise NotImplementedError("async def ping is not implemented")

    @staticmethod
    def pass_context_getRandomData(fn):
        return pass_context(fn)

    async def getRandomData(
            self):
        raise NotImplementedError("async def getRandomData is not implemented")

    @staticmethod
    def pass_context_hasDataById(fn):
        return pass_context(fn)

    async def hasDataById(
            self,
            id):
        raise NotImplementedError("async def hasDataById is not implemented")

    @staticmethod
    def pass_context_getDataById(fn):
        return pass_context(fn)

    async def getDataById(
            self,
            id):
        raise NotImplementedError("async def getDataById is not implemented")

    @staticmethod
    def pass_context_putDataById(fn):
        return pass_context(fn)

    async def putDataById(
            self,
            id,
            data):
        raise NotImplementedError("async def putDataById is not implemented")

    @staticmethod
    def pass_context_lobDataById(fn):
        return pass_context(fn)

    async def lobDataById(
            self,
            id,
            data):
        raise NotImplementedError("async def lobDataById is not implemented")

    @classmethod
    def __get_reflection__(cls):
        return _services_reflection.get_reflection__MyService(for_clients=False)

cdef object _DbMixedStackArguments_annotations = _py_types.MappingProxyType({
})


@cython.auto_pickle(False)
cdef class DbMixedStackArgumentsInterface(
    ServiceInterface
):
    annotations = _DbMixedStackArguments_annotations

    def __cinit__(self):
        self._cpp_obj = cDbMixedStackArgumentsInterface(
            <PyObject *> self,
            get_executor()
        )

    @staticmethod
    def pass_context_getDataByKey0(fn):
        return pass_context(fn)

    async def getDataByKey0(
            self,
            key):
        raise NotImplementedError("async def getDataByKey0 is not implemented")

    @staticmethod
    def pass_context_getDataByKey1(fn):
        return pass_context(fn)

    async def getDataByKey1(
            self,
            key):
        raise NotImplementedError("async def getDataByKey1 is not implemented")

    @classmethod
    def __get_reflection__(cls):
        return _services_reflection.get_reflection__DbMixedStackArguments(for_clients=False)



cdef api void call_cy_MyService_ping(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[cFollyUnit] cPromise
):
    __promise = Promise_cFollyUnit.create(move_promise_cFollyUnit(cPromise))
    __context = RequestContext.create(ctx)
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __context_token = __THRIFT_REQUEST_CONTEXT.set(__context)
        __context = None
    asyncio.get_event_loop().create_task(
        MyService_ping_coro(
            self,
            __context,
            __promise
        )
    )
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __THRIFT_REQUEST_CONTEXT.reset(__context_token)

async def MyService_ping_coro(
    object self,
    object ctx,
    Promise_cFollyUnit promise
):
    try:
        if ctx and getattr(self.ping, "pass_context", False):
            result = await self.ping(ctx,)
        else:
            result = await self.ping()
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler ping:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(c_unit)

cdef api void call_cy_MyService_getRandomData(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[unique_ptr[string]] cPromise
):
    __promise = Promise_string.create(move_promise_string(cPromise))
    __context = RequestContext.create(ctx)
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __context_token = __THRIFT_REQUEST_CONTEXT.set(__context)
        __context = None
    asyncio.get_event_loop().create_task(
        MyService_getRandomData_coro(
            self,
            __context,
            __promise
        )
    )
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __THRIFT_REQUEST_CONTEXT.reset(__context_token)

async def MyService_getRandomData_coro(
    object self,
    object ctx,
    Promise_string promise
):
    try:
        if ctx and getattr(self.getRandomData, "pass_context", False):
            result = await self.getRandomData(ctx,)
        else:
            result = await self.getRandomData()
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler getRandomData:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(make_unique[string](<string?> result.encode('UTF-8')))

cdef api void call_cy_MyService_hasDataById(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[cbool] cPromise,
    cint64_t id
):
    __promise = Promise_cbool.create(move_promise_cbool(cPromise))
    arg_id = id
    __context = RequestContext.create(ctx)
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __context_token = __THRIFT_REQUEST_CONTEXT.set(__context)
        __context = None
    asyncio.get_event_loop().create_task(
        MyService_hasDataById_coro(
            self,
            __context,
            __promise,
            arg_id
        )
    )
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __THRIFT_REQUEST_CONTEXT.reset(__context_token)

async def MyService_hasDataById_coro(
    object self,
    object ctx,
    Promise_cbool promise,
    id
):
    try:
        if ctx and getattr(self.hasDataById, "pass_context", False):
            result = await self.hasDataById(ctx,
                      id)
        else:
            result = await self.hasDataById(
                      id)
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler hasDataById:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(<cbool> result)

cdef api void call_cy_MyService_getDataById(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[unique_ptr[string]] cPromise,
    cint64_t id
):
    __promise = Promise_string.create(move_promise_string(cPromise))
    arg_id = id
    __context = RequestContext.create(ctx)
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __context_token = __THRIFT_REQUEST_CONTEXT.set(__context)
        __context = None
    asyncio.get_event_loop().create_task(
        MyService_getDataById_coro(
            self,
            __context,
            __promise,
            arg_id
        )
    )
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __THRIFT_REQUEST_CONTEXT.reset(__context_token)

async def MyService_getDataById_coro(
    object self,
    object ctx,
    Promise_string promise,
    id
):
    try:
        if ctx and getattr(self.getDataById, "pass_context", False):
            result = await self.getDataById(ctx,
                      id)
        else:
            result = await self.getDataById(
                      id)
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler getDataById:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(make_unique[string](<string?> result.encode('UTF-8')))

cdef api void call_cy_MyService_putDataById(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[cFollyUnit] cPromise,
    cint64_t id,
    unique_ptr[string] data
):
    __promise = Promise_cFollyUnit.create(move_promise_cFollyUnit(cPromise))
    arg_id = id
    arg_data = (deref(data)).data().decode('UTF-8')
    __context = RequestContext.create(ctx)
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __context_token = __THRIFT_REQUEST_CONTEXT.set(__context)
        __context = None
    asyncio.get_event_loop().create_task(
        MyService_putDataById_coro(
            self,
            __context,
            __promise,
            arg_id,
            arg_data
        )
    )
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __THRIFT_REQUEST_CONTEXT.reset(__context_token)

async def MyService_putDataById_coro(
    object self,
    object ctx,
    Promise_cFollyUnit promise,
    id,
    data
):
    try:
        if ctx and getattr(self.putDataById, "pass_context", False):
            result = await self.putDataById(ctx,
                      id,
                      data)
        else:
            result = await self.putDataById(
                      id,
                      data)
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler putDataById:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(c_unit)

cdef api void call_cy_MyService_lobDataById(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[cFollyUnit] cPromise,
    cint64_t id,
    unique_ptr[string] data
):
    __promise = Promise_cFollyUnit.create(move_promise_cFollyUnit(cPromise))
    arg_id = id
    arg_data = (deref(data)).data().decode('UTF-8')
    __context = RequestContext.create(ctx)
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __context_token = __THRIFT_REQUEST_CONTEXT.set(__context)
        __context = None
    asyncio.get_event_loop().create_task(
        MyService_lobDataById_coro(
            self,
            __context,
            __promise,
            arg_id,
            arg_data
        )
    )
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __THRIFT_REQUEST_CONTEXT.reset(__context_token)

async def MyService_lobDataById_coro(
    object self,
    object ctx,
    Promise_cFollyUnit promise,
    id,
    data
):
    try:
        if ctx and getattr(self.lobDataById, "pass_context", False):
            result = await self.lobDataById(ctx,
                      id,
                      data)
        else:
            result = await self.lobDataById(
                      id,
                      data)
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler lobDataById:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(c_unit)

cdef api void call_cy_DbMixedStackArguments_getDataByKey0(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[unique_ptr[string]] cPromise,
    unique_ptr[string] key
):
    __promise = Promise_binary.create(move_promise_binary(cPromise))
    arg_key = (deref(key)).data().decode('UTF-8')
    __context = RequestContext.create(ctx)
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __context_token = __THRIFT_REQUEST_CONTEXT.set(__context)
        __context = None
    asyncio.get_event_loop().create_task(
        DbMixedStackArguments_getDataByKey0_coro(
            self,
            __context,
            __promise,
            arg_key
        )
    )
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __THRIFT_REQUEST_CONTEXT.reset(__context_token)

async def DbMixedStackArguments_getDataByKey0_coro(
    object self,
    object ctx,
    Promise_binary promise,
    key
):
    try:
        if ctx and getattr(self.getDataByKey0, "pass_context", False):
            result = await self.getDataByKey0(ctx,
                      key)
        else:
            result = await self.getDataByKey0(
                      key)
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler getDataByKey0:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(make_unique[string](<string?> result))

cdef api void call_cy_DbMixedStackArguments_getDataByKey1(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[unique_ptr[string]] cPromise,
    unique_ptr[string] key
):
    __promise = Promise_binary.create(move_promise_binary(cPromise))
    arg_key = (deref(key)).data().decode('UTF-8')
    __context = RequestContext.create(ctx)
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __context_token = __THRIFT_REQUEST_CONTEXT.set(__context)
        __context = None
    asyncio.get_event_loop().create_task(
        DbMixedStackArguments_getDataByKey1_coro(
            self,
            __context,
            __promise,
            arg_key
        )
    )
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __THRIFT_REQUEST_CONTEXT.reset(__context_token)

async def DbMixedStackArguments_getDataByKey1_coro(
    object self,
    object ctx,
    Promise_binary promise,
    key
):
    try:
        if ctx and getattr(self.getDataByKey1, "pass_context", False):
            result = await self.getDataByKey1(ctx,
                      key)
        else:
            result = await self.getDataByKey1(
                      key)
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler getDataByKey1:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(make_unique[string](<string?> result))

