class Unpac < Formula
  desc "Monorepo manager for OCaml/OxCaml"
  homepage "https://github.com/avsm/unpac"
  url "https://github.com/avsm/unpac.git", branch: "project/unpac"
  version "0.0.1"
  license "ISC"

  bottle do
    root_url "https://github.com/avsm/homebrew-ocaml/releases/download/unpac-0.0.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "7909f2919dc22519d8ddb758d647392e355adbe026ad0c98bf65482460e5d8bc"
    sha256                               x86_64_linux:  "a84d281c063b56f7bce7a806d849f84e56a7738a780c4dbfa204b27f697302f2"
  end

  depends_on "dune"
  depends_on "gmp"
  depends_on "gpatch"
  depends_on "ocaml"

  def install
    system "dune", "build"
    bin.install "_build/default/bin/main.exe" => "unpac"
  end
end
