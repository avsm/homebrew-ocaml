class Oxmono < Formula
  desc "Anil's monorepo binaries"
  homepage "https://github.com/avsm/oxmono"
  url "https://github.com/avsm/oxmono.git", branch: "main"
  version "0.0.1"
  license "ISC"

  depends_on "dune"
  depends_on "gmp"
  depends_on "gpatch"
  depends_on "ocaml"
  depends_on "opam"

  def install
    system "./scripts/setup.sh"
    bin.install "_build/install/default/bin/arod" => "arod"
  end
end
