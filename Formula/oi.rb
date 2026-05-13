class Oi < Formula
  desc "Stateless OCaml installer and development manager"
  homepage "https://github.com/avsm/oi/"
  url "https://github.com/avsm/oi.git", tag: "0.11.0"
  license "ISC"

  bottle do
    root_url "https://github.com/avsm/homebrew-ocaml/releases/download/oi-0.11.0"
    sha256 arm64_sequoia: "18c8a083fec8b08062ee7efb14310f91d12655286dc7c7cb9900484b8874efe9"
    sha256 x86_64_linux:  "3a42732b7bd9d9ab84b4d421636ff38ff9e2fe60d7ae5b7021f52d0aebbdc208"
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
