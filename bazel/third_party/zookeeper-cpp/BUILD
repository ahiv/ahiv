package(
    default_visibility = ["//visibility:public"],
)

licenses(["notice"])  # BSD/MIT.

cc_library(
    name = "zookeeper-internal",
    srcs = glob(include = ["src/zk/*.hpp"]),
    deps = [],
    strip_include_prefix = "src/zk"
)

cc_library(
    name = "zookeeper",
    hdrs = glob(include = ["src/zk/*.hpp"]),
    srcs = glob(include = ["src/zk/*.cpp"], exclude = ["src/zk/*_tests.cpp"]),
    strip_include_prefix = "src/zk",
    include_prefix = "zk",
    deps = [
        ":zookeeper-internal",
        "@org_apache_zookeeper//:zookeeper",
        "@com_google_gtest//:gtest"
    ]
)