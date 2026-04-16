class Oi < Formula
  desc "Stateless OCaml installer and runner"
  homepage "https://github.com/avsm/oi/"
  url "https://github.com/avsm/oi.git", branch: "main"
  version "0.1.1"
  license "ISC"

  bottle do
    root_url "https://github.com/avsm/homebrew-ocaml/releases/download/oi-0.1.1"
    sha256 cellar: :any, arm64_sequoia: "1febb7246805b99c047a0a04e92beeb65e10310db54f7761b9ddfd3e140d0c06"
    sha256               x86_64_linux:  "e0a55c654bd44ebca4c5ea8fb5144b5c8fd723c3510308baf6af16e70d788bf9"
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
