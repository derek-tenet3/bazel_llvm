load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")


def llvm_deps():
  """Pull in dependencies of LLVM workspace.

  This function should be loaded and run from your WORKSPACE file:
    load("@llvm//tools/bzl:deps.bzl", "llvm_deps")
    llvm_deps()
  """
  srcs_build_file = """
filegroup(
    name = "readme",
    srcs = ["README.txt"],
    visibility = ["//visibility:public"]
)

filegroup(
    name = "all",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"]
)
"""

  http_archive(
    name="clang-10.0.0",
    build_file_content = srcs_build_file,
    sha256 = "885b062b00e903df72631c5f98b9579ed1ed2790f74e5646b4234fa084eacb21",
    strip_prefix="clang-10.0.0.src",
    urls=[
      "https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0/clang-10.0.0.src.tar.xz",
    ],
  )

  http_archive(
    name="llvm-10.0.0",
    build_file_content = srcs_build_file,
    sha256 = "df83a44b3a9a71029049ec101fb0077ecbbdf5fe41e395215025779099a98fdf",
    strip_prefix="llvm-10.0.0.src",
    urls=[
      "https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0/llvm-10.0.0.src.tar.xz",
    ],
  )

  http_archive(
    name="clang-llvm-3.8.0-x86_64-apple-darwin",
    build_file="@llvm//:llvm_macos.BUILD",
    sha256="e5a961e04b0e1738bbb5b824886a34932dc13b0af699d1fe16519d814d7b776f",
    strip_prefix="clang+llvm-3.8.0-x86_64-apple-darwin",
    urls=[
      "https://releases.llvm.org/3.8.0/clang+llvm-3.8.0-x86_64-apple-darwin.tar.xz",
    ],
  )

  http_archive(
    name="clang-llvm-3.8.0-x86_64-linux-gnu-ubuntu-16.04",
    build_file="@llvm//:llvm_linux.BUILD",
    strip_prefix="clang+llvm-3.8.0-aarch64-linux-gnu",
    urls=[
      "https://releases.llvm.org/3.8.0/clang+llvm-3.8.0-aarch64-linux-gnu.tar.xz",
    ],
  )

  http_archive(
    name="clang-llvm-6.0.0-x86_64-apple-darwin",
    build_file="@llvm//:llvm_macos.BUILD",
    sha256="0ef8e99e9c9b262a53ab8f2821e2391d041615dd3f3ff36fdf5370916b0f4268",
    strip_prefix="clang+llvm-6.0.0-x86_64-apple-darwin",
    urls=[
      "https://releases.llvm.org/6.0.0/clang+llvm-6.0.0-x86_64-apple-darwin.tar.xz"
    ],
  )

  http_archive(
    name="clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-16.04",
    build_file="@llvm//:llvm_linux.BUILD",
    strip_prefix="clang+llvm-6.0.0-aarch64-linux-gnu",
    urls=[
      "https://releases.llvm.org/6.0.0/clang+llvm-6.0.0-aarch64-linux-gnu.tar.xz"
    ],
  )

  http_archive(
    name="clang-llvm-10.0.0-x86_64-apple-darwin",
    build_file="@llvm//:llvm_macos.BUILD",
    sha256="633a833396bf2276094c126b072d52b59aca6249e7ce8eae14c728016edb5e61",
    strip_prefix="clang+llvm-10.0.0-x86_64-apple-darwin",
    urls=[
      "https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0/clang+llvm-10.0.0-x86_64-apple-darwin.tar.xz"
    ],
  )

  http_archive(
    name="clang-llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04",
    build_file="@llvm//:llvm_linux.BUILD",
    strip_prefix="clang+llvm-10.0.0-aarch64-linux-gnu",
    urls=[
      "https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0/clang+llvm-10.0.0-aarch64-linux-gnu.tar.xz"
    ],
  )
  
  
  http_archive(
    name="clang-llvm-13.0.0-x86_64-linux-gnu-ubuntu-20.04",
    build_file="@llvm//:llvm_linux.BUILD",
    strip_prefix="clang+llvm-13.0.0-aarch64-linux-gnu",
    urls=[
      "https://github.com/llvm/llvm-project/releases/download/llvmorg-13.0.0/clang+llvm-13.0.0-aarch64-linux-gnu.tar.xz"
    ],
  )

  http_archive(
    name="clang-llvm-13.0.0-x86_64-apple-darwin",
    build_file="@llvm//:llvm_macos.BUILD",
    sha256="d051234eca1db1f5e4bc08c64937c879c7098900f7a0370f3ceb7544816a8b09",
    strip_prefix="clang+llvm-13.0.0-x86_64-apple-darwin",
    urls=[
      "https://github.com/llvm/llvm-project/releases/download/llvmorg-13.0.0/clang+llvm-13.0.0-x86_64-apple-darwin.tar.xz"
    ],
  )
  
  http_archive(
    name="clang-llvm-10.0.0-aarch64-linux-gnu",
    build_file="@llvm//:llvm_linux.BUILD",
    strip_prefix="clang+llvm-10.0.0-aarch64-linux-gnu",
    urls=[
      "https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0/clang+llvm-10.0.0-aarch64-linux-gnu.tar.xz"
    ],
  )

  http_archive(
    name="clang-llvm-13.0.0-aarch64-linux-gnu",
    build_file="@llvm//:llvm_linux.BUILD",
    strip_prefix="clang+llvm-13.0.0-aarch64-linux-gnu",
    urls=[
      "https://github.com/llvm/llvm-project/releases/download/llvmorg-13.0.0/clang+llvm-13.0.0-aarch64-linux-gnu.tar.xz"
    ],
  )
