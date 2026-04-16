class Oi < Formula
  desc "Stateless OCaml installer"
  homepage "https://github.com/avsm/oi/"
  url "https://github.com/avsm/oi.git", branch: "main"
  version "0.0.1"
  license "ISC"

  bottle do
    root_url "https://github.com/avsm/homebrew-ocaml/releases/download/oi-0.0.1"
    sha256 cellar: :any, arm64_sequoia: "6905f391add152261ef96cb74cd77562adb7d77f50369568a9b0afa58b222ef4"
    sha256               x86_64_linux:  "f156cbf03d4ad18edf76a557b0e21a31d2716e67ade631437bf97c38b488bbd6"
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
