class Pet < Formula
  desc "Simple command-line snippet manager"
  homepage "https://github.com/knqyf263/pet"
  url "https://github.com/knqyf263/pet/releases/download/v0.3.4/pet_0.3.4_darwin_amd64.tar.gz"
  version "0.3.4"
  sha256 "cf542863763d0500b5f2247697f2c1025add03b6beaff643896da15749163de4"
  
  depends_on "fzf"

  def install
    bin.install Dir['pet']
    zsh_completion.install "misc/completions/zsh/_pet"
  end

  test do
    system "#{bin}/pet"
  end
end
