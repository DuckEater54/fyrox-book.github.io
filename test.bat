if exist Fyrox\ (
  :Build
) else (
  git submodules update
)
:Build
cd ./Fyrox
cargo build
cd ..
mdbook test -L ./Fyrox/target/debug/deps
