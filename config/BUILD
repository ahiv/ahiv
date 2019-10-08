package(default_visibility = ["//visibility:public"])

load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_test")
load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")
load("@rules_proto//proto:defs.bzl", "proto_library")

proto_library(
    name = "config_proto",
    srcs = [
        "events.proto",
        "property.proto",
        "service.proto",
    ],
    visibility = ["//visibility:public"],
)

go_proto_library(
    name = "config_go_proto",
    compiler = "@io_bazel_rules_go//proto:go_grpc",
    importpath = "github.com/ahiv/ahiv/config",
    proto = ":config_proto",
    visibility = ["//visibility:public"],
)

go_binary(
    name = "config_service",
    srcs = [],
    deps = [
        "config_proto",
        "@org_golang_google_grpc//:go_default_library",
        "@org_golang_google_grpc//reflection:go_default_library",
        "@org_golang_x_net//context:go_default_library",
        "@org_golang_x_text//:go_default_library",
    ],
)

go_test(
    name = "config_test",
    size = "small",
    srcs = [
        "config_service_test.go",
    ],
)
