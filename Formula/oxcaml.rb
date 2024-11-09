class Oxcaml < Formula
  desc "The Oxidized OCaml compiler and accompanying developer tools"
  homepage "https://oxcaml.org/"
  license "LGPL-2.1-only" => { with: "OCaml-LGPL-linking-exception" }
  url "https://github.com/avsm/homebrew-ocaml.git", branch: "main"
  version "5.2.0+with-extensions"

  depends_on "opam"
  depends_on "autoconf"
  depends_on "gpatch"

  def install
    inreplace "bin/oxcaml.sh", "%%PREFIX%%", "#{prefix}/opam"
    inreplace "bin/oxpam", "%%PREFIX%%", "#{prefix}/opam"
    system "bash", "bin/oxcaml.sh"
    bin.install "bin/oxpam"
  end
end
