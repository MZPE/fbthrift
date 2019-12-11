/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;
import java.util.Collections;
import java.util.BitSet;
import java.util.Arrays;
import com.facebook.thrift.*;
import com.facebook.thrift.async.*;
import com.facebook.thrift.meta_data.*;
import com.facebook.thrift.server.*;
import com.facebook.thrift.transport.*;
import com.facebook.thrift.protocol.*;

@SuppressWarnings({ "unused", "serial", "unchecked" })
public class ListUnion extends TUnion<ListUnion> implements Comparable<ListUnion> {
  private static final TStruct STRUCT_DESC = new TStruct("ListUnion");
  private static final TField INT_LIST_VALUE_FIELD_DESC = new TField("intListValue", TType.LIST, (short)2);
  private static final TField STRING_LIST_VALUE_FIELD_DESC = new TField("stringListValue", TType.LIST, (short)3);

  public static final int INTLISTVALUE = 2;
  public static final int STRINGLISTVALUE = 3;

  public static final Map<Integer, FieldMetaData> metaDataMap;
  static {
    Map<Integer, FieldMetaData> tmpMetaDataMap = new HashMap<Integer, FieldMetaData>();
    tmpMetaDataMap.put(INTLISTVALUE, new FieldMetaData("intListValue", TFieldRequirementType.DEFAULT, 
        new ListMetaData(TType.LIST, 
            new FieldValueMetaData(TType.I64))));
    tmpMetaDataMap.put(STRINGLISTVALUE, new FieldMetaData("stringListValue", TFieldRequirementType.DEFAULT, 
        new ListMetaData(TType.LIST, 
            new FieldValueMetaData(TType.STRING))));
    metaDataMap = Collections.unmodifiableMap(tmpMetaDataMap);
  }

  public ListUnion() {
    super();
  }

  public ListUnion(int setField, Object __value) {
    super(setField, __value);
  }

  public ListUnion(ListUnion other) {
    super(other);
  }

  public ListUnion deepCopy() {
    return new ListUnion(this);
  }

  public static ListUnion intListValue(List<Long> __value) {
    ListUnion x = new ListUnion();
    x.setIntListValue(__value);
    return x;
  }

  public static ListUnion stringListValue(List<String> __value) {
    ListUnion x = new ListUnion();
    x.setStringListValue(__value);
    return x;
  }


  @Override
  protected void checkType(short setField, Object __value) throws ClassCastException {
    switch (setField) {
      case INTLISTVALUE:
        if (__value instanceof List) {
          break;
        }
        throw new ClassCastException("Was expecting value of type List<Long> for field 'intListValue', but got " + __value.getClass().getSimpleName());
      case STRINGLISTVALUE:
        if (__value instanceof List) {
          break;
        }
        throw new ClassCastException("Was expecting value of type List<String> for field 'stringListValue', but got " + __value.getClass().getSimpleName());
      default:
        throw new IllegalArgumentException("Unknown field id " + setField);
    }
  }

  @Override
  public void read(TProtocol iprot) throws TException {
    setField_ = 0;
    value_ = null;
    iprot.readStructBegin(metaDataMap);
    TField __field = iprot.readFieldBegin();
    if (__field.type != TType.STOP)
    {
      value_ = readValue(iprot, __field);
      if (value_ != null)
      {
        switch (__field.id) {
          case INTLISTVALUE:
            if (__field.type == INT_LIST_VALUE_FIELD_DESC.type) {
              setField_ = __field.id;
            }
            break;
          case STRINGLISTVALUE:
            if (__field.type == STRING_LIST_VALUE_FIELD_DESC.type) {
              setField_ = __field.id;
            }
            break;
        }
      }
      iprot.readFieldEnd();
      iprot.readFieldBegin();
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();
  }

  @Override
  protected Object readValue(TProtocol iprot, TField __field) throws TException {
    switch (__field.id) {
      case INTLISTVALUE:
        if (__field.type == INT_LIST_VALUE_FIELD_DESC.type) {
          List<Long> intListValue;
          {
            TList _list13 = iprot.readListBegin();
            intListValue = new ArrayList<Long>(Math.max(0, _list13.size));
            for (int _i14 = 0; 
                 (_list13.size < 0) ? iprot.peekList() : (_i14 < _list13.size); 
                 ++_i14)
            {
              long _elem15;
              _elem15 = iprot.readI64();
              intListValue.add(_elem15);
            }
            iprot.readListEnd();
          }
          return intListValue;
        }
        break;
      case STRINGLISTVALUE:
        if (__field.type == STRING_LIST_VALUE_FIELD_DESC.type) {
          List<String> stringListValue;
          {
            TList _list16 = iprot.readListBegin();
            stringListValue = new ArrayList<String>(Math.max(0, _list16.size));
            for (int _i17 = 0; 
                 (_list16.size < 0) ? iprot.peekList() : (_i17 < _list16.size); 
                 ++_i17)
            {
              String _elem18;
              _elem18 = iprot.readString();
              stringListValue.add(_elem18);
            }
            iprot.readListEnd();
          }
          return stringListValue;
        }
        break;
    }
    TProtocolUtil.skip(iprot, __field.type);
    return null;
  }

  @Override
  protected void writeValue(TProtocol oprot, short setField, Object __value) throws TException {
    switch (setField) {
      case INTLISTVALUE:
        List<Long> intListValue = (List<Long>)getFieldValue();
        {
          oprot.writeListBegin(new TList(TType.I64, intListValue.size()));
          for (long _iter19 : intListValue)          {
            oprot.writeI64(_iter19);
          }
          oprot.writeListEnd();
        }
        return;
      case STRINGLISTVALUE:
        List<String> stringListValue = (List<String>)getFieldValue();
        {
          oprot.writeListBegin(new TList(TType.STRING, stringListValue.size()));
          for (String _iter20 : stringListValue)          {
            oprot.writeString(_iter20);
          }
          oprot.writeListEnd();
        }
        return;
      default:
        throw new IllegalStateException("Cannot write union with unknown field " + setField);
    }
  }

  @Override
  protected TField getFieldDesc(int setField) {
    switch (setField) {
      case INTLISTVALUE:
        return INT_LIST_VALUE_FIELD_DESC;
      case STRINGLISTVALUE:
        return STRING_LIST_VALUE_FIELD_DESC;
      default:
        throw new IllegalArgumentException("Unknown field id " + setField);
    }
  }

  @Override
  protected TStruct getStructDesc() {
    return STRUCT_DESC;
  }

  public List<Long> getIntListValue() {
    if (getSetField() == INTLISTVALUE) {
      return (List<Long>)getFieldValue();
    } else {
      throw new RuntimeException("Cannot get field 'intListValue' because union is currently set to " + getFieldDesc(getSetField()).name);
    }
  }

  public void setIntListValue(List<Long> __value) {
    if (__value == null) throw new NullPointerException();
    setField_ = INTLISTVALUE;
    value_ = __value;
  }

  public List<String> getStringListValue() {
    if (getSetField() == STRINGLISTVALUE) {
      return (List<String>)getFieldValue();
    } else {
      throw new RuntimeException("Cannot get field 'stringListValue' because union is currently set to " + getFieldDesc(getSetField()).name);
    }
  }

  public void setStringListValue(List<String> __value) {
    if (__value == null) throw new NullPointerException();
    setField_ = STRINGLISTVALUE;
    value_ = __value;
  }

  public boolean equals(Object other) {
    if (other instanceof ListUnion) {
      return equals((ListUnion)other);
    } else {
      return false;
    }
  }

  public boolean equals(ListUnion other) {
    return equalsNobinaryImpl(other);
  }

  @Override
  public int compareTo(ListUnion other) {
    return compareToImpl(other);
  }


  @Override
  public int hashCode() {
    return Arrays.deepHashCode(new Object[] {getSetField(), getFieldValue()});
  }

}
