# LLVM
wget -qO- https://apt.llvm.org/llvm-snapshot.gpg.key | tee /etc/apt/trusted.gpg.d/apt.llvm.org.asc
# Fingerprint: 6084 F3CF 814B 57C1 CF12 EFD5 15CF 4D18 AF4F 7421 

# Add the repositories
cat << EOF >> /etc/apt/sources.list
deb http://apt.llvm.org/bookworm/ llvm-toolchain-bookworm-17 main
deb-src http://apt.llvm.org/bookworm/ llvm-toolchain-bookworm-17 main
EOF

# Refresh the index
apt update && apt upgrade

apt install -y clang-17 lldb-17 lld-17 llvm-17-dev libclang-common-17-dev libclang-17-dev libc++-17-dev libc++abi-17-dev libomp-17-dev

# Comment the following line to install everything
exit

apt-get install -y libllvm-17-ocaml-dev libllvm17 llvm-17 llvm-17-dev llvm-17-doc llvm-17-examples llvm-17-runtime
# Clang and co
apt-get install -y clang-17 clang-tools-17 clang-17-doc libclang-common-17-dev libclang-17-dev libclang1-17 clang-format-17 python3-clang-17 clangd-17 clang-tidy-17
# compiler-rt
apt-get install -y libclang-rt-17-dev
# polly
apt-get install -y libpolly-17-dev
# libfuzzer
apt-get install -y libfuzzer-17-dev
# lldb
apt-get install -y lldb-17
# lld (linker)
apt-get install -y lld-17
# libc++
apt-get install -y libc++-17-dev libc++abi-17-dev
# OpenMP
apt-get install -y libomp-17-dev
# libclc
apt-get install -y libclc-17-dev
# libunwind
apt-get install -y libunwind-17-dev
# mlir
apt-get install -y libmlir-17-dev mlir-17-tools
# bolt
apt-get install -y libbolt-17-dev bolt-17
# flang
apt-get install -y flang-17
# wasm support
apt-get install -y libclang-rt-17-dev-wasm32 libclang-rt-17-dev-wasm64 libc++-17-dev-wasm32 libc++abi-17-dev-wasm32 libclang-rt-17-dev-wasm32 libclang-rt-17-dev-wasm64 
