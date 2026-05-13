class Oi < Formula
  desc "Stateless OCaml installer and development manager"
  homepage "https://github.com/avsm/oi/"
  url "https://github.com/avsm/oi.git", tag: "0.11.1"
  license "ISC"

  bottle do
    root_url "https://github.com/avsm/homebrew-ocaml/releases/download/oi-0.11.1"
    sha256 arm64_sequoia: "f815b11b49c4afb582c14803a973a3fac21164c22fe4ccfffeccc1f12d828115"
    sha256 x86_64_linux:  "6eb7b462c0963bb55fcc206fa4ecbc5a4ae6c2a67c368b21ebb32b51adfff189"
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
