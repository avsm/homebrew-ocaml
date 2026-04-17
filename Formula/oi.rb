class Oi < Formula
  desc "Stateless OCaml installer and runner"
  homepage "https://github.com/avsm/oi/"
  url "https://github.com/avsm/oi.git", branch: "main"
  version "0.1.4"
  license "ISC"

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
