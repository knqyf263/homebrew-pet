# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pet < Formula
  desc "Simple command-line snippet manager"
  homepage "https://github.com/knqyf263/pet"
  version "1.0.0"

  depends_on "fzf"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/knqyf263/pet/releases/download/v1.0.0/pet_1.0.0_darwin_amd64.tar.gz"
      sha256 "7f4fce08ba82868700524048979bf79fa6526fffb5c855dbfce25c14df2348d9"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/knqyf263/pet/releases/download/v1.0.0/pet_1.0.0_darwin_arm64.tar.gz"
      sha256 "b4f25adfe3b365976277c13e7bfec7b4dba604c8f896c88891daf918e0d8225f"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/knqyf263/pet/releases/download/v1.0.0/pet_1.0.0_linux_armv6.tar.gz"
      sha256 "98edb7d10c0d2ad366fb03214510063722531c12fe4e0eda2f553d34daa392da"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/knqyf263/pet/releases/download/v1.0.0/pet_1.0.0_linux_arm64.tar.gz"
      sha256 "24a6931bbe01d8f79a93df95f1a98689b0f9e1f8b2f968de6f648b19d57c9067"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/knqyf263/pet/releases/download/v1.0.0/pet_1.0.0_linux_amd64.tar.gz"
      sha256 "ddc28c03cd5ff7229b0b5e45c0f992059fb32212d8b0021c2563aa7b5bb1f74a"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
  end

  test do
    system "#{bin}/pet"
  end
end
