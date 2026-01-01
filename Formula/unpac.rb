class Srcsetter < Formula
  desc "Unpac monorepo manager"
  homepage "https://github.com/avsm/unpac"
  url "https://github.com/avsm/unpac.git", branch: "project/unpac"
  version "0.0.1"
  license "ISC"

  depends_on "gpatch"
  depends_on "dune"
  depends_on "ocaml"
  depends_on "gmp"

  def install
    system "dune", "build"
    bin.install "_build/default/bin/main.exe" => "unpac"
  end
end
