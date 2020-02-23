#pragma once
#ifndef TEST_PATH_USE_STD_FILESYSTEM

#if __cplusplus >= 201703L && defined(__has_include)
#if __has_include(<filesystem>)
#define TEST_PATH_USE_STD_FILESYSTEM 1
#endif
#endif
#ifndef TEST_PATH_USE_STD_FILESYSTEM
#define TEST_PATH_USE_STD_FILESYSTEM 0
#endif

#if TEST_PATH_USE_STD_FILESYSTEM
#include <filesystem>
#else
#include <boost/filesystem.hpp>
#endif

namespace feature_tracking_core {
namespace test{

#ifdef TEST_PATH_USE_STD_FILESYSTEM
static const std::filesystem::path projectRootDir{"/home/dlx/catkin_limo_workspace/src/feature_tracking/feature_tracking_core"};
#else
static const boost::filesystem::path projectRootDir{"/home/dlx/catkin_limo_workspace/src/feature_tracking/feature_tracking_core"};
#endif

} // namespace test
} // namespace feature_tracking_core

#endif
