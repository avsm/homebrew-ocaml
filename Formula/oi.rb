class Oi < Formula
  desc "Stateless OCaml installer and development manager"
  homepage "https://github.com/avsm/oi/"
  url "https://github.com/avsm/oi.git", tag: "0.9.2"
  license "ISC"

  bottle do
    root_url "https://github.com/avsm/homebrew-ocaml/releases/download/oi-0.9.2"
    sha256 arm64_sequoia: "5a3973e103009e951e6929488f51a2a65b4d6fd9b7cae3fe72205cd01f1df4b0"
    sha256 x86_64_linux:  "139393e395ecf2a3998ef0d263b2527890695e4b0592037b7a9a87d97bcefa07"
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
