#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
cimport cython as __cython
from cython.operator cimport dereference as deref
from libcpp.memory cimport make_unique, unique_ptr, shared_ptr

cimport thrift.py3.types
from thrift.py3.types cimport (
    reset_field as __reset_field,
    StructFieldsSetter as __StructFieldsSetter
)

from thrift.py3.types cimport const_pointer_cast


@__cython.auto_pickle(False)
cdef class __Banal_FieldsSetter(__StructFieldsSetter):

    @staticmethod
    cdef __Banal_FieldsSetter create(_module_types.cBanal* struct_cpp_obj):
        cdef __Banal_FieldsSetter __fbthrift_inst = __Banal_FieldsSetter.__new__(__Banal_FieldsSetter)
        __fbthrift_inst._struct_cpp_obj = struct_cpp_obj
        return __fbthrift_inst

    cdef void set_field(__Banal_FieldsSetter self, const char* name, object value) except *:
        cdef __cstring_view cname = __cstring_view(name)
        cdef cumap[__cstring_view, __Banal_FieldsSetterFunc].iterator found = self._setters.find(cname)
        if found == self._setters.end():
            raise TypeError(f"invalid field name {name.decode('utf-8')}")
        deref(found).second(self, value)


@__cython.auto_pickle(False)
cdef class __Fiery_FieldsSetter(__StructFieldsSetter):

    @staticmethod
    cdef __Fiery_FieldsSetter create(_module_types.cFiery* struct_cpp_obj):
        cdef __Fiery_FieldsSetter __fbthrift_inst = __Fiery_FieldsSetter.__new__(__Fiery_FieldsSetter)
        __fbthrift_inst._struct_cpp_obj = struct_cpp_obj
        __fbthrift_inst._setters[__cstring_view(<const char*>"message")] = __Fiery_FieldsSetter._set_field_0
        return __fbthrift_inst

    cdef void set_field(__Fiery_FieldsSetter self, const char* name, object value) except *:
        cdef __cstring_view cname = __cstring_view(name)
        cdef cumap[__cstring_view, __Fiery_FieldsSetterFunc].iterator found = self._setters.find(cname)
        if found == self._setters.end():
            raise TypeError(f"invalid field name {name.decode('utf-8')}")
        deref(found).second(self, value)

    cdef void _set_field_0(self, __fbthrift_value) except *:
        # for field message
        if __fbthrift_value is None:
            __reset_field[_module_types.cFiery](deref(self._struct_cpp_obj), 0)
            return
        if not isinstance(__fbthrift_value, str):
            raise TypeError(f'message is not a { str !r}.')
        deref(self._struct_cpp_obj).message_ref().assign(cmove(bytes_to_string(__fbthrift_value.encode('utf-8'))))


@__cython.auto_pickle(False)
cdef class __Serious_FieldsSetter(__StructFieldsSetter):

    @staticmethod
    cdef __Serious_FieldsSetter create(_module_types.cSerious* struct_cpp_obj):
        cdef __Serious_FieldsSetter __fbthrift_inst = __Serious_FieldsSetter.__new__(__Serious_FieldsSetter)
        __fbthrift_inst._struct_cpp_obj = struct_cpp_obj
        __fbthrift_inst._setters[__cstring_view(<const char*>"sonnet")] = __Serious_FieldsSetter._set_field_0
        return __fbthrift_inst

    cdef void set_field(__Serious_FieldsSetter self, const char* name, object value) except *:
        cdef __cstring_view cname = __cstring_view(name)
        cdef cumap[__cstring_view, __Serious_FieldsSetterFunc].iterator found = self._setters.find(cname)
        if found == self._setters.end():
            raise TypeError(f"invalid field name {name.decode('utf-8')}")
        deref(found).second(self, value)

    cdef void _set_field_0(self, __fbthrift_value) except *:
        # for field sonnet
        if __fbthrift_value is None:
            __reset_field[_module_types.cSerious](deref(self._struct_cpp_obj), 0)
            return
        if not isinstance(__fbthrift_value, str):
            raise TypeError(f'sonnet is not a { str !r}.')
        deref(self._struct_cpp_obj).sonnet_ref().assign(cmove(bytes_to_string(__fbthrift_value.encode('utf-8'))))
        deref(self._struct_cpp_obj).__isset.sonnet = True


@__cython.auto_pickle(False)
cdef class __ComplexFieldNames_FieldsSetter(__StructFieldsSetter):

    @staticmethod
    cdef __ComplexFieldNames_FieldsSetter create(_module_types.cComplexFieldNames* struct_cpp_obj):
        cdef __ComplexFieldNames_FieldsSetter __fbthrift_inst = __ComplexFieldNames_FieldsSetter.__new__(__ComplexFieldNames_FieldsSetter)
        __fbthrift_inst._struct_cpp_obj = struct_cpp_obj
        __fbthrift_inst._setters[__cstring_view(<const char*>"error_message")] = __ComplexFieldNames_FieldsSetter._set_field_0
        __fbthrift_inst._setters[__cstring_view(<const char*>"internal_error_message")] = __ComplexFieldNames_FieldsSetter._set_field_1
        return __fbthrift_inst

    cdef void set_field(__ComplexFieldNames_FieldsSetter self, const char* name, object value) except *:
        cdef __cstring_view cname = __cstring_view(name)
        cdef cumap[__cstring_view, __ComplexFieldNames_FieldsSetterFunc].iterator found = self._setters.find(cname)
        if found == self._setters.end():
            raise TypeError(f"invalid field name {name.decode('utf-8')}")
        deref(found).second(self, value)

    cdef void _set_field_0(self, __fbthrift_value) except *:
        # for field error_message
        if __fbthrift_value is None:
            __reset_field[_module_types.cComplexFieldNames](deref(self._struct_cpp_obj), 0)
            return
        if not isinstance(__fbthrift_value, str):
            raise TypeError(f'error_message is not a { str !r}.')
        deref(self._struct_cpp_obj).error_message_ref().assign(cmove(bytes_to_string(__fbthrift_value.encode('utf-8'))))
        deref(self._struct_cpp_obj).__isset.error_message = True

    cdef void _set_field_1(self, __fbthrift_value) except *:
        # for field internal_error_message
        if __fbthrift_value is None:
            __reset_field[_module_types.cComplexFieldNames](deref(self._struct_cpp_obj), 1)
            return
        if not isinstance(__fbthrift_value, str):
            raise TypeError(f'internal_error_message is not a { str !r}.')
        deref(self._struct_cpp_obj).internal_error_message_ref().assign(cmove(bytes_to_string(__fbthrift_value.encode('utf-8'))))
        deref(self._struct_cpp_obj).__isset.internal_error_message = True


@__cython.auto_pickle(False)
cdef class __CustomFieldNames_FieldsSetter(__StructFieldsSetter):

    @staticmethod
    cdef __CustomFieldNames_FieldsSetter create(_module_types.cCustomFieldNames* struct_cpp_obj):
        cdef __CustomFieldNames_FieldsSetter __fbthrift_inst = __CustomFieldNames_FieldsSetter.__new__(__CustomFieldNames_FieldsSetter)
        __fbthrift_inst._struct_cpp_obj = struct_cpp_obj
        __fbthrift_inst._setters[__cstring_view(<const char*>"error_message")] = __CustomFieldNames_FieldsSetter._set_field_0
        __fbthrift_inst._setters[__cstring_view(<const char*>"internal_error_message")] = __CustomFieldNames_FieldsSetter._set_field_1
        return __fbthrift_inst

    cdef void set_field(__CustomFieldNames_FieldsSetter self, const char* name, object value) except *:
        cdef __cstring_view cname = __cstring_view(name)
        cdef cumap[__cstring_view, __CustomFieldNames_FieldsSetterFunc].iterator found = self._setters.find(cname)
        if found == self._setters.end():
            raise TypeError(f"invalid field name {name.decode('utf-8')}")
        deref(found).second(self, value)

    cdef void _set_field_0(self, __fbthrift_value) except *:
        # for field error_message
        if __fbthrift_value is None:
            __reset_field[_module_types.cCustomFieldNames](deref(self._struct_cpp_obj), 0)
            return
        if not isinstance(__fbthrift_value, str):
            raise TypeError(f'error_message is not a { str !r}.')
        deref(self._struct_cpp_obj).error_message_ref().assign(cmove(bytes_to_string(__fbthrift_value.encode('utf-8'))))
        deref(self._struct_cpp_obj).__isset.error_message = True

    cdef void _set_field_1(self, __fbthrift_value) except *:
        # for field internal_error_message
        if __fbthrift_value is None:
            __reset_field[_module_types.cCustomFieldNames](deref(self._struct_cpp_obj), 1)
            return
        if not isinstance(__fbthrift_value, str):
            raise TypeError(f'internal_error_message is not a { str !r}.')
        deref(self._struct_cpp_obj).internal_error_message_ref().assign(cmove(bytes_to_string(__fbthrift_value.encode('utf-8'))))
        deref(self._struct_cpp_obj).__isset.internal_error_message = True
