#ifndef AHIV_COMMONS_SMART_POINTER_H_
#define AHIV_COMMONS_SMART_POINTER_H_

#include <memory>

namespace ahiv {

template<typename T>
using Shared = std::shared_ptr<T>;

template<typename T>
using Unique = std::unique_ptr<T>;

template<typename T>
using Weak = std::weak_ptr<T>;

} // namespace ahiv

#endif  // AHIV_COMMONS_SMART_POINTER_H_