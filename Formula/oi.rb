class Oi < Formula
  desc "Stateless OCaml installer"
  homepage "https://github.com/avsm/oi/"
  url "https://github.com/avsm/oi.git", branch: "main"
  version "0.0.1"
  license "ISC"

  depends_on "gpatch"
  depends_on "opam"
  depends_on "sqlite"
  depends_on "zstd"
  depends_on "pkgconf"

  def install
    system "bash", "./.opambuild.sh"
    bin.install "_opam/bin/oi"
  end
end
