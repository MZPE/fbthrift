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
cdef extern from "gen-py3/include/types.h":
  pass

cdef extern from * nogil:
    cdef cppclass std_unordered_map "std::unordered_map"[T, U]:
        ctypedef T key_type
        ctypedef U mapped_type
        ctypedef size_t size_type

        cppclass iterator:
            cpair[T, U]& operator*()
            iterator operator++()
            bint operator==(iterator)
            bint operator!=(iterator)
        cppclass reverse_iterator:
            cpair[T, U]& operator*()
            iterator operator++()
            bint operator==(reverse_iterator)
            bint operator!=(reverse_iterator)

        std_unordered_map() except +
        std_unordered_map(std_unordered_map&) except +

        U& operator[](T&)
        iterator find(const T&)
        size_type count(const T&)
        size_type size()
        iterator begin()
        iterator end()
        reverse_iterator rbegin()
        reverse_iterator rend()
        void clear()
        bint empty()











cdef class std_unordered_map__Map__i32_string(thrift.py3.types.Container):
    cdef shared_ptr[std_unordered_map[cint32_t,string]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[std_unordered_map[cint32_t,string]])
    @staticmethod
    cdef shared_ptr[std_unordered_map[cint32_t,string]] _make_instance(object items) except *

cdef class List__std_unordered_map__Map__i32_string(thrift.py3.types.Container):
    cdef shared_ptr[vector[std_unordered_map[cint32_t,string]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[std_unordered_map[cint32_t,string]]])
    @staticmethod
    cdef shared_ptr[vector[std_unordered_map[cint32_t,string]]] _make_instance(object items) except *

cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[vector[std_unordered_map[cint32_t,string]]] move "std::move"(unique_ptr[vector[std_unordered_map[cint32_t,string]]])
    cdef shared_ptr[vector[std_unordered_map[cint32_t,string]]] move_shared "std::move"(shared_ptr[vector[std_unordered_map[cint32_t,string]]])
    cdef shared_ptr[std_unordered_map[cint32_t,string]] move "std::move"(unique_ptr[std_unordered_map[cint32_t,string]])
    cdef shared_ptr[std_unordered_map[cint32_t,string]] move_shared "std::move"(shared_ptr[std_unordered_map[cint32_t,string]])
cdef extern from "<utility>" nogil:
    pass  
    shared_ptr[std_unordered_map[cint32_t,string]] reference_shared_ptr_List__std_unordered_map__Map__i32_string "::thrift::py3::reference_shared_ptr<std::unordered_map<int32_t,std::string>>"(...)
cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const vector[std_unordered_map[cint32_t,string]]] const_pointer_cast "std::const_pointer_cast<const std::vector<std::unordered_map<int32_t,std::string>>>"(shared_ptr[vector[std_unordered_map[cint32_t,string]]])
    cdef shared_ptr[const std_unordered_map[cint32_t,string]] const_pointer_cast "std::const_pointer_cast<const std::unordered_map<int32_t,std::string>>"(shared_ptr[std_unordered_map[cint32_t,string]])

