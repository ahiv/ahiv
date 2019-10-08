workspace(name = "ahiv")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

RULES_JVM_EXTERNAL_TAG = "2.8"

RULES_JVM_EXTERNAL_SHA = "79c9850690d7614ecdb72d68394f994fef7534b292c4867ce5e7dec0aa7bdfad"

http_archive(
    name = "rules_jvm_external",
    sha256 = RULES_JVM_EXTERNAL_SHA,
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    urls = [
        "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
    ],
)

load("@rules_jvm_external//:defs.bzl", "maven_install")

http_archive(
    name = "com_github_tgockel_zookeeper_cpp",
    build_file = "@//bazel/third_party/zookeeper-cpp:BUILD",
    sha256 = "47111f8a2ed2f2f4eb507668a9a46e1963b314036afcd95a3282196c3e11bb5f",
    strip_prefix = "zookeeper-cpp-0.2.3",
    urls = [
        "https://github.com/tgockel/zookeeper-cpp/archive/v0.2.3.zip",
    ],
)

http_archive(
    name = "bazel_skylib",
    sha256 = "2b9af2de004d67725c9985540811835389b229c27874f2e15f5e319622a53a3b",
    strip_prefix = "bazel-skylib-e9fc4750d427196754bebb0e2e1e38d68893490a",
    urls = ["https://github.com/bazelbuild/bazel-skylib/archive/e9fc4750d427196754bebb0e2e1e38d68893490a.tar.gz"],
)

new_git_repository(
    name = "org_apache_zookeeper",
    build_file = "@//bazel/third_party/zookeeper:BUILD",
    commit = "874aaf136ccda2759cc61f4c48ff9d15f6433e07",
    remote = "https://github.com/apache/zookeeper.git",
    shallow_since = "1570109970 +0200",
)

http_archive(
    name = "com_github_libuv_libuv",
    build_file = "@//bazel/third_party/libuv:BUILD",
    sha256 = "b776581a170c32e6dd42fb0c170ab7efa632aa4786ac8816bf1cbf03d9c9cb63",
    strip_prefix = "libuv-1.32.0",
    urls = [
        "https://github.com/libuv/libuv/archive/v1.32.0.zip",
    ],
)

http_archive(
    name = "com_github_emilk_loguru",
    build_file = "@//bazel/third_party/loguru:BUILD",
    sha256 = "bab33d64d5afe8bddf7e5ad21bc05befcbefd9bc268ef72deaba9a1f50d0595b",
    strip_prefix = "loguru-2.0.0",
    urls = [
        "https://github.com/emilk/loguru/archive/v2.0.0.zip",
    ],
)

http_archive(
    name = "com_google_gtest",
    sha256 = "927827c183d01734cc5cfef85e0ff3f5a92ffe6188e0d18e909c5efebf28a0c7",
    strip_prefix = "googletest-release-1.8.1",
    urls = [
        "https://github.com/google/googletest/archive/release-1.8.1.zip",
    ],
)

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "513c12397db1bc9aa46dd62f02dd94b49a9b5d17444d49b5a04c5a89f3053c1c",
    urls = [
        "https://storage.googleapis.com/bazel-mirror/github.com/bazelbuild/rules_go/releases/download/v0.19.5/rules_go-v0.19.5.tar.gz",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.19.5/rules_go-v0.19.5.tar.gz",
    ],
)

load(
    "@io_bazel_rules_go//go:deps.bzl",
    "go_download_sdk",
    "go_register_toolchains",
    "go_rules_dependencies",
)

go_rules_dependencies()

go_download_sdk(
    name = "go_sdk",
    sdks = {
        "darwin_amd64": ("go1.10beta1.darwin-amd64.tar.gz", "8c2a4743359f4b14bcfaf27f12567e3cbfafc809ed5825a2238c0ba45db3a8b4"),
        "linux_amd64": ("go1.10beta1.linux-amd64.tar.gz", "ec7a10b5bf147a8e06cf64e27384ff3c6d065c74ebd8fdd31f572714f74a1055"),
    },
)

go_register_toolchains()

http_archive(
    name = "bazel_gazelle",
    sha256 = "7fc87f4170011201b1690326e8c16c5d802836e3a0d617d8f75c3af2b23180c4",
    urls = [
        "https://storage.googleapis.com/bazel-mirror/github.com/bazelbuild/bazel-gazelle/releases/download/0.18.2/bazel-gazelle-0.18.2.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/0.18.2/bazel-gazelle-0.18.2.tar.gz",
    ],
)

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies", "go_repository")

gazelle_dependencies()

go_repository(
    name = "org_golang_google_grpc",
    commit = "41344da2231b913fa3d983840a57a6b1b7b631a1",
    importpath = "google.golang.org/grpc",
)

go_repository(
    name = "org_golang_x_text",
    commit = "3d0f7978add91030e5e8976ff65ccdd828286cba",
    importpath = "golang.org/x/text",
)

go_repository(
    name = "org_golang_x_net",
    commit = "2491c5de3490fced2f6cff376127c667efeed857",
    importpath = "golang.org/x/net",
)

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "com_google_protobuf",
    commit = "09745575a923640154bcf307fba8aedff47f240a",
    remote = "https://github.com/protocolbuffers/protobuf",
    shallow_since = "1558721209 -0700",
)

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()

http_archive(
    name = "rules_proto",
    sha256 = "602e7161d9195e50246177e7c55b2f39950a9cf7366f74ed5f22fd45750cd208",
    strip_prefix = "rules_proto-97d8af4dc474595af3900dd85cb3a29ad28cc313",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/archive/97d8af4dc474595af3900dd85cb3a29ad28cc313.tar.gz",
        "https://github.com/bazelbuild/rules_proto/archive/97d8af4dc474595af3900dd85cb3a29ad28cc313.tar.gz",
    ],
)

load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")

rules_proto_dependencies()

rules_proto_toolchains()
