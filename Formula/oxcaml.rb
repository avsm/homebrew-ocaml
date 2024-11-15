class Oxcaml < Formula
  desc "Oxidized OCaml compiler and accompanying developer tools"
  homepage "https://oxcaml.org/"
  url "https://github.com/avsm/homebrew-ocaml.git", branch: "main"
  version "4.2.0+with-extensions"
  license "LGPL-2.1-only" => { with: "OCaml-LGPL-linking-exception" }

  depends_on "autoconf"
  depends_on "gpatch"
  depends_on "opam"

  def install
    inreplace "bin/oxcaml.sh", "%%PREFIX%%", "#{prefix}/opam"
    inreplace "bin/oxpam", "%%PREFIX%%", "#{prefix}/opam"
    system "bash", "bin/oxcaml.sh"
    bin.install "bin/oxpam"
  end
end
