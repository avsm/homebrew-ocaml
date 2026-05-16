class Oi < Formula
  desc "Stateless OCaml installer and development manager"
  homepage "https://github.com/avsm/oi/"
  url "https://github.com/avsm/oi.git", tag: "0.12.4"
  license "ISC"

  bottle do
    root_url "https://github.com/avsm/homebrew-ocaml/releases/download/oi-0.12.4"
    sha256 arm64_sequoia: "d14636cdaf5516596d4d91e6d08946c381637a8a51ae1760f97d357c96e96f3d"
    sha256 x86_64_linux:  "f3a5e87bbf8a64018ef3d60be6f2f89ce8def506abca6475ffec140f7d5f36ac"
  end

  depends_on "gmp"
  depends_on "gpatch"
  depends_on "opam"
  depends_on "pkgconf"
  depends_on "sqlite"
  depends_on "zstd"

  def install
    system "bash", "./.opambuild.sh"
    bin.install "_opam/bin/oi"
    bin.install "_opam/bin/oix"
  end
end
