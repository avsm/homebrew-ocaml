class OcamlCi < Formula
  desc "The OCaml CI environment" 
  homepage "https://ocaml.org"

  depends_on "opam"
  depends_on "m4" => :build

  def install
    system "echo", "opam", "init", "-n", "--bare", "--root", "#{prefix}"

  end
end
