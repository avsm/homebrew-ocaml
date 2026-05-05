class Oi < Formula
  desc "Stateless OCaml installer and development manager"
  homepage "https://github.com/avsm/oi/"
  url "https://github.com/avsm/oi.git", tag: "0.9.5"
  license "ISC"

  bottle do
    root_url "https://github.com/avsm/homebrew-ocaml/releases/download/oi-0.9.5"
    sha256 arm64_sequoia: "0f99a2fa48af7453f34386c4e9ee4ebf5202aec8d083e184aaadd671ec3eca12"
    sha256 x86_64_linux:  "4dafb29b2ffedd298a9f4059d156a92553c9493b7c099f835450a5fedf78116d"
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
