/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import com.facebook.thrift.IntRangeSet;
import java.util.Map;
import java.util.HashMap;

@SuppressWarnings({ "unused" })
public enum Animal implements com.facebook.thrift.TEnum {
  DOG(1),
  CAT(2),
  TARANTULA(3);

  private final int value;

  private Animal(int value) {
    this.value = value;
  }

  /**
   * Get the integer value of this enum value, as defined in the Thrift IDL.
   */
  public int getValue() {
    return value;
  }

  /**
   * Find a the enum type by its integer value, as defined in the Thrift IDL.
   * @return null if the value is not found.
   */
  public static Animal findByValue(int value) { 
    switch (value) {
      case 1:
        return DOG;
      case 2:
        return CAT;
      case 3:
        return TARANTULA;
      default:
        return null;
    }
  }
}
