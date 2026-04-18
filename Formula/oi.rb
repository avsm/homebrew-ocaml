class Oi < Formula
  desc "Stateless OCaml installer and runner"
  homepage "https://github.com/avsm/oi/"
  url "https://github.com/avsm/oi.git", branch: "main"
  version "0.1.5"
  license "ISC"

  bottle do
    root_url "https://github.com/avsm/homebrew-ocaml/releases/download/oi-0.1.5"
    sha256 cellar: :any, arm64_sequoia: "7a91b7dab4fe9d53b4ceb00fdb9ca32503fb66d1798be22b9f05ae4ae58db0a1"
    sha256               x86_64_linux:  "e4cb0a2c195302834804781b2eed7ca62e2ee2830cf182b4492bfef532234a8e"
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
