#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from libc.stdint cimport (
    int8_t as cint8_t,
    int16_t as cint16_t,
    int32_t as cint32_t,
    int64_t as cint64_t,
    uint32_t as cuint32_t,
)
from libcpp.string cimport string
from libcpp cimport bool as cbool, nullptr, nullptr_t
from cpython cimport bool as pbool
from libcpp.memory cimport shared_ptr, unique_ptr
from libcpp.vector cimport vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap, pair as cpair
from thrift.py3.exceptions cimport cTException
cimport folly.iobuf as __iobuf
cimport thrift.py3.exceptions
cimport thrift.py3.types
from thrift.py3.common cimport Protocol as __Protocol
from thrift.py3.types cimport bstring, move, field_ref as __FieldRef, optional_field_ref as __OptionalFieldRef
from folly.optional cimport cOptional
cdef extern from "src/gen-py3/module/types.h":
  pass





cdef extern from "src/gen-cpp2/module_types_custom_protocol.h" namespace "::cpp2":
    cdef cppclass cFoo__isset "::cpp2::Foo::__isset":
        bint MyInt

    cdef cppclass cFoo "::cpp2::Foo":
        cFoo() except +
        cFoo(const cFoo&) except +
        bint operator==(cFoo&)
        bint operator!=(cFoo&)
        bint operator<(cFoo&)
        bint operator>(cFoo&)
        bint operator<=(cFoo&)
        bint operator>=(cFoo&)
        __FieldRef[cint64_t] MyInt_ref()
        cint64_t MyInt
        cFoo__isset __isset


cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[cFoo] move(unique_ptr[cFoo])
    cdef shared_ptr[cFoo] move_shared "std::move"(shared_ptr[cFoo])
    cdef unique_ptr[cFoo] move_unique "std::move"(unique_ptr[cFoo])

cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const cFoo] const_pointer_cast "std::const_pointer_cast<const ::cpp2::Foo>"(shared_ptr[cFoo])



cdef class Foo(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cFoo] _cpp_obj

    @staticmethod
    cdef unique_ptr[cFoo] _make_instance(
        cFoo* base_instance,
        bint* __isNOTSET,
        object MyInt
    ) except *

    @staticmethod
    cdef create(shared_ptr[cFoo])





