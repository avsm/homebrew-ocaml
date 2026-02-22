class Oxmono < Formula
  desc "Anil's monorepo binaries"
  homepage "https://github.com/avsm/oxmono"
  url "https://github.com/avsm/oxmono.git", branch: "main"
  version "0.0.1"
  license "ISC"

  depends_on "autoconf"
  depends_on "dune"
  depends_on "gmp"
  depends_on "gpatch"
  depends_on "ocaml"
  depends_on "opam"
  depends_on "zstd"

  def install
    system "./scripts/setup.sh"
    system "ls", "-la", "_build/install/default/bin/"
    bin.install Dir["_build/install/default/bin/*"]
  end
end
