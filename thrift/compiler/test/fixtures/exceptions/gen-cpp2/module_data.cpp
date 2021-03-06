/**
 * Autogenerated by Thrift for src/module.thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

#include "thrift/compiler/test/fixtures/exceptions/gen-cpp2/module_data.h"

namespace apache {
namespace thrift {

const std::array<folly::StringPiece, 0> TStructDataStorage<::cpp2::Banal>::fields_names = {{
}};
const std::array<int16_t, 0> TStructDataStorage<::cpp2::Banal>::fields_ids = {{
}};
const std::array<protocol::TType, 0> TStructDataStorage<::cpp2::Banal>::fields_types = {{
}};

const std::array<folly::StringPiece, 1> TStructDataStorage<::cpp2::Fiery>::fields_names = {{
  "message",
}};
const std::array<int16_t, 1> TStructDataStorage<::cpp2::Fiery>::fields_ids = {{
  1,
}};
const std::array<protocol::TType, 1> TStructDataStorage<::cpp2::Fiery>::fields_types = {{
  TType::T_STRING,
}};

const std::array<folly::StringPiece, 1> TStructDataStorage<::cpp2::Serious>::fields_names = {{
  "sonnet",
}};
const std::array<int16_t, 1> TStructDataStorage<::cpp2::Serious>::fields_ids = {{
  1,
}};
const std::array<protocol::TType, 1> TStructDataStorage<::cpp2::Serious>::fields_types = {{
  TType::T_STRING,
}};

const std::array<folly::StringPiece, 2> TStructDataStorage<::cpp2::ComplexFieldNames>::fields_names = {{
  "error_message",
  "internal_error_message",
}};
const std::array<int16_t, 2> TStructDataStorage<::cpp2::ComplexFieldNames>::fields_ids = {{
  1,
  2,
}};
const std::array<protocol::TType, 2> TStructDataStorage<::cpp2::ComplexFieldNames>::fields_types = {{
  TType::T_STRING,
  TType::T_STRING,
}};

const std::array<folly::StringPiece, 2> TStructDataStorage<::cpp2::CustomFieldNames>::fields_names = {{
  "error_message",
  "internal_error_message",
}};
const std::array<int16_t, 2> TStructDataStorage<::cpp2::CustomFieldNames>::fields_ids = {{
  1,
  2,
}};
const std::array<protocol::TType, 2> TStructDataStorage<::cpp2::CustomFieldNames>::fields_types = {{
  TType::T_STRING,
  TType::T_STRING,
}};

} // namespace thrift
} // namespace apache
