class Oi < Formula
  desc "Stateless OCaml installer and development manager"
  homepage "https://github.com/avsm/oi/"
  url "https://github.com/avsm/oi.git", branch: "main"
  version "2.0.0"
  license "ISC"

  bottle do
    root_url "https://github.com/avsm/homebrew-ocaml/releases/download/oi-2.0.0"
    sha256 cellar: :any, arm64_sequoia: "1e6bb65045159822715454e4023f4631311a8aebc7570974be8669d1cff5c8a4"
    sha256               x86_64_linux:  "417b46f95a22f6349a8da84f168d6f49b2b01464e3b6d0c4d5dcf4096ed9b040"
  end

  depends_on "gpatch"
  depends_on "opam"
  depends_on "pkgconf"
  depends_on "sqlite"
  depends_on "zstd"

  def install
    system "bash", "./.opambuild.sh"
    bin.install "_opam/bin/oi"
  end
end
