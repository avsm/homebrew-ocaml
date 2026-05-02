class Oi < Formula
  desc "Stateless OCaml installer and development manager"
  homepage "https://github.com/avsm/oi/"
  url "https://github.com/avsm/oi.git", tag: "0.9.1"
  license "ISC"

  bottle do
    root_url "https://github.com/avsm/homebrew-ocaml/releases/download/oi-0.9.1"
    sha256 cellar: :any, arm64_sequoia: "791c195b0187de32c5c98f84c9531e18b9b86f4bcaba040d06d8f3bb83d2dcce"
    sha256               x86_64_linux:  "21771e590485230b74761210c6668466433c297ce4636712839b7ec9da7f47cd"
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
