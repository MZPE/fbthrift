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
    cdef cppclass cBanal__isset "::cpp2::Banal::__isset":
        pass

    cdef cppclass cBanal "::cpp2::Banal"(cTException):
        cBanal() except +
        cBanal(const cBanal&) except +
        bint operator==(cBanal&)
        bint operator!=(cBanal&)
        bint operator<(cBanal&)
        bint operator>(cBanal&)
        bint operator<=(cBanal&)
        bint operator>=(cBanal&)
        cBanal__isset __isset

    cdef cppclass cFiery__isset "::cpp2::Fiery::__isset":
        bint message

    cdef cppclass cFiery "::cpp2::Fiery"(cTException):
        cFiery() except +
        cFiery(const cFiery&) except +
        bint operator==(cFiery&)
        bint operator!=(cFiery&)
        bint operator<(cFiery&)
        bint operator>(cFiery&)
        bint operator<=(cFiery&)
        bint operator>=(cFiery&)
        string message
        cFiery__isset __isset

    cdef cppclass cSerious__isset "::cpp2::Serious::__isset":
        bint sonnet

    cdef cppclass cSerious "::cpp2::Serious"(cTException):
        cSerious() except +
        cSerious(const cSerious&) except +
        bint operator==(cSerious&)
        bint operator!=(cSerious&)
        bint operator<(cSerious&)
        bint operator>(cSerious&)
        bint operator<=(cSerious&)
        bint operator>=(cSerious&)
        __OptionalFieldRef[string] sonnet_ref()
        string sonnet
        cSerious__isset __isset

    cdef cppclass cComplexFieldNames__isset "::cpp2::ComplexFieldNames::__isset":
        bint error_message
        bint internal_error_message

    cdef cppclass cComplexFieldNames "::cpp2::ComplexFieldNames"(cTException):
        cComplexFieldNames() except +
        cComplexFieldNames(const cComplexFieldNames&) except +
        bint operator==(cComplexFieldNames&)
        bint operator!=(cComplexFieldNames&)
        bint operator<(cComplexFieldNames&)
        bint operator>(cComplexFieldNames&)
        bint operator<=(cComplexFieldNames&)
        bint operator>=(cComplexFieldNames&)
        __FieldRef[string] error_message_ref()
        string error_message
        __FieldRef[string] internal_error_message_ref()
        string internal_error_message
        cComplexFieldNames__isset __isset

    cdef cppclass cCustomFieldNames__isset "::cpp2::CustomFieldNames::__isset":
        bint error_message
        bint internal_error_message

    cdef cppclass cCustomFieldNames "::cpp2::CustomFieldNames"(cTException):
        cCustomFieldNames() except +
        cCustomFieldNames(const cCustomFieldNames&) except +
        bint operator==(cCustomFieldNames&)
        bint operator!=(cCustomFieldNames&)
        bint operator<(cCustomFieldNames&)
        bint operator>(cCustomFieldNames&)
        bint operator<=(cCustomFieldNames&)
        bint operator>=(cCustomFieldNames&)
        __FieldRef[string] error_message_ref()
        string error_message
        __FieldRef[string] internal_error_message_ref()
        string internal_error_message
        cCustomFieldNames__isset __isset


cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[cBanal] move(unique_ptr[cBanal])
    cdef shared_ptr[cBanal] move_shared "std::move"(shared_ptr[cBanal])
    cdef unique_ptr[cBanal] move_unique "std::move"(unique_ptr[cBanal])
    cdef shared_ptr[cFiery] move(unique_ptr[cFiery])
    cdef shared_ptr[cFiery] move_shared "std::move"(shared_ptr[cFiery])
    cdef unique_ptr[cFiery] move_unique "std::move"(unique_ptr[cFiery])
    cdef shared_ptr[cSerious] move(unique_ptr[cSerious])
    cdef shared_ptr[cSerious] move_shared "std::move"(shared_ptr[cSerious])
    cdef unique_ptr[cSerious] move_unique "std::move"(unique_ptr[cSerious])
    cdef shared_ptr[cComplexFieldNames] move(unique_ptr[cComplexFieldNames])
    cdef shared_ptr[cComplexFieldNames] move_shared "std::move"(shared_ptr[cComplexFieldNames])
    cdef unique_ptr[cComplexFieldNames] move_unique "std::move"(unique_ptr[cComplexFieldNames])
    cdef shared_ptr[cCustomFieldNames] move(unique_ptr[cCustomFieldNames])
    cdef shared_ptr[cCustomFieldNames] move_shared "std::move"(shared_ptr[cCustomFieldNames])
    cdef unique_ptr[cCustomFieldNames] move_unique "std::move"(unique_ptr[cCustomFieldNames])

cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const cBanal] const_pointer_cast "std::const_pointer_cast<const ::cpp2::Banal>"(shared_ptr[cBanal])
    cdef shared_ptr[const cFiery] const_pointer_cast "std::const_pointer_cast<const ::cpp2::Fiery>"(shared_ptr[cFiery])
    cdef shared_ptr[const cSerious] const_pointer_cast "std::const_pointer_cast<const ::cpp2::Serious>"(shared_ptr[cSerious])
    cdef shared_ptr[const cComplexFieldNames] const_pointer_cast "std::const_pointer_cast<const ::cpp2::ComplexFieldNames>"(shared_ptr[cComplexFieldNames])
    cdef shared_ptr[const cCustomFieldNames] const_pointer_cast "std::const_pointer_cast<const ::cpp2::CustomFieldNames>"(shared_ptr[cCustomFieldNames])



cdef class Banal(thrift.py3.exceptions.GeneratedError):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cBanal] _cpp_obj

    @staticmethod
    cdef unique_ptr[cBanal] _make_instance(
        cBanal* base_instance,
        bint* __isNOTSET
    ) except *

    @staticmethod
    cdef create(shared_ptr[cBanal])



cdef class Fiery(thrift.py3.exceptions.GeneratedError):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cFiery] _cpp_obj

    @staticmethod
    cdef unique_ptr[cFiery] _make_instance(
        cFiery* base_instance,
        bint* __isNOTSET,
        str message
    ) except *

    @staticmethod
    cdef create(shared_ptr[cFiery])



cdef class Serious(thrift.py3.exceptions.GeneratedError):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cSerious] _cpp_obj

    @staticmethod
    cdef unique_ptr[cSerious] _make_instance(
        cSerious* base_instance,
        bint* __isNOTSET,
        str sonnet
    ) except *

    @staticmethod
    cdef create(shared_ptr[cSerious])



cdef class ComplexFieldNames(thrift.py3.exceptions.GeneratedError):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cComplexFieldNames] _cpp_obj

    @staticmethod
    cdef unique_ptr[cComplexFieldNames] _make_instance(
        cComplexFieldNames* base_instance,
        bint* __isNOTSET,
        str error_message,
        str internal_error_message
    ) except *

    @staticmethod
    cdef create(shared_ptr[cComplexFieldNames])



cdef class CustomFieldNames(thrift.py3.exceptions.GeneratedError):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cCustomFieldNames] _cpp_obj

    @staticmethod
    cdef unique_ptr[cCustomFieldNames] _make_instance(
        cCustomFieldNames* base_instance,
        bint* __isNOTSET,
        str error_message,
        str internal_error_message
    ) except *

    @staticmethod
    cdef create(shared_ptr[cCustomFieldNames])





