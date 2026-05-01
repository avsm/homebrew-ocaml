class Oi < Formula
  desc "Stateless OCaml installer and development manager"
  homepage "https://github.com/avsm/oi/"
  url "https://github.com/avsm/oi.git", tag: "0.8.1"
  license "ISC"

  bottle do
    root_url "https://github.com/avsm/homebrew-ocaml/releases/download/oi-0.8.1"
    sha256 cellar: :any, arm64_sequoia: "db841a46cebe66938942dce45dd27871b07982108e63b6c6cc94d5fdbfcf5e23"
    sha256               x86_64_linux:  "d9b4e9e7c784ca72502e262c7342edd31ea2d6cc9f9454a8d27ad92c6b10dd65"
  end

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
