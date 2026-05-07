class Oi < Formula
  desc "Stateless OCaml installer and development manager"
  homepage "https://github.com/avsm/oi/"
  url "https://github.com/avsm/oi.git", tag: "0.9.8"
  license "ISC"

  bottle do
    root_url "https://github.com/avsm/homebrew-ocaml/releases/download/oi-0.9.8"
    sha256 arm64_sequoia: "0c23e0850ac08aecf33a7dd53891976aa336f82105a52d934bb2ffbe187891d5"
    sha256 x86_64_linux:  "07cfc48afb9e066e50f2da5a298f177a067a114e23325b1565189111d4943506"
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
