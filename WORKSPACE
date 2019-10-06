# Tooling for downloading from http and git
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Tooling for maven artifacts
RULES_JVM_EXTERNAL_TAG = "2.8"
RULES_JVM_EXTERNAL_SHA = "79c9850690d7614ecdb72d68394f994fef7534b292c4867ce5e7dec0aa7bdfad"

http_archive(
    name = "rules_jvm_external",
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    sha256 = RULES_JVM_EXTERNAL_SHA,
    urls = [
        "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
    ]
)

load("@rules_jvm_external//:defs.bzl", "maven_install")

# === Zookeeper CPP Client
http_archive(
    name = "com_github_tgockel_zookeeper_cpp",
    strip_prefix = "zookeeper-cpp-0.2.3",
    sha256 = "47111f8a2ed2f2f4eb507668a9a46e1963b314036afcd95a3282196c3e11bb5f",
    urls = [
        "https://github.com/tgockel/zookeeper-cpp/archive/v0.2.3.zip",
    ],
    build_file = "@//bazel/third_party/zookeeper-cpp:BUILD",
)

# ===== zookeeper c client
http_archive(
    name = "org_apache_zookeeper",
    urls = ["http://archive.apache.org/dist/zookeeper/zookeeper-3.5.5/apache-zookeeper-3.5.5.tar.gz"],
    strip_prefix = "apache-zookeeper-3.5.5",
    build_file = "@//bazel/third_party/zookeeper:BUILD",
    sha256 = "60d527254b3816c75a1c46517768b873af5767dfcc2083d6c527b567461c546c",
)

# === libuv
http_archive(
    name = "com_github_libuv_libuv",
    urls = [
        "https://github.com/libuv/libuv/archive/v1.32.0.zip",
    ],
    sha256 = "b776581a170c32e6dd42fb0c170ab7efa632aa4786ac8816bf1cbf03d9c9cb63",
    strip_prefix = "libuv-1.32.0",
    build_file = "@//bazel/third_party/libuv:BUILD",
)

# === logging
http_archive(
    name = "com_github_emilk_loguru",
    urls = [
        "https://github.com/emilk/loguru/archive/v2.0.0.zip",
    ],
    sha256 = "bab33d64d5afe8bddf7e5ad21bc05befcbefd9bc268ef72deaba9a1f50d0595b",
    strip_prefix = "loguru-2.0.0",
    build_file = "@//bazel/third_party/loguru:BUILD",
)

# === gtest
http_archive(
    name = "com_google_gtest",
    urls = [
        "https://github.com/google/googletest/archive/release-1.8.1.zip"
    ],
    strip_prefix = "googletest-release-1.8.1",
    sha256 = "927827c183d01734cc5cfef85e0ff3f5a92ffe6188e0d18e909c5efebf28a0c7",
)