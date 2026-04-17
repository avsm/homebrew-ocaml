class Oi < Formula
  desc "Stateless OCaml installer and runner"
  homepage "https://github.com/avsm/oi/"
  url "https://github.com/avsm/oi.git", branch: "main"
  version "0.1.4"
  license "ISC"

  bottle do
    root_url "https://github.com/avsm/homebrew-ocaml/releases/download/oi-0.1.4"
    sha256 cellar: :any, arm64_sequoia: "02ea36b7497facea97591556fb5504dade81c0adee58a9f82fbb5c6a830b362c"
    sha256               x86_64_linux:  "5c8a12c7daab4c4203f38d006a4d295582ed2ab1d92afec1c0aa9a8ef52ceb93"
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
