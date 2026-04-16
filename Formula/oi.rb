class Oi < Formula
  desc "Stateless OCaml installer and runner"
  homepage "https://github.com/avsm/oi/"
  url "https://github.com/avsm/oi.git", branch: "main"
  version "0.1.0"
  license "ISC"

  bottle do
    root_url "https://github.com/avsm/homebrew-ocaml/releases/download/oi-0.1.0"
    sha256 cellar: :any, arm64_sequoia: "68101b0b6d21857b69a8761a7edefd80abcc6364f986dffd706363e6bcb8b60e"
    sha256               x86_64_linux:  "a5d6b38e9d4647e1033505fd5425200dce68e95f916ef5df9be7f5e11f2bdc27"
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
