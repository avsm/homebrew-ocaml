class Srcsetter < Formula
  desc "Monorepo manager for OCaml/OxCaml"
  homepage "https://github.com/avsm/unpac"
  url "https://github.com/avsm/unpac.git", branch: "project/unpac"
  version "0.0.1"
  license "ISC"

  depends_on "dune"
  depends_on "gmp"
  depends_on "gpatch"
  depends_on "ocaml"

  def install
    system "dune", "build"
    bin.install "_build/default/bin/main.exe" => "unpac"
  end
end
