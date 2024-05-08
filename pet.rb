# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pet < Formula
  desc "Simple command-line snippet manager"
  homepage "https://github.com/knqyf263/pet"
  version "0.8.2"

  depends_on "fzf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/knqyf263/pet/releases/download/v0.8.2/pet_0.8.2_darwin_arm64.tar.gz"
      sha256 "a3e00a5f89640789464d36fbd7652246bfd350e1ceae2e140baa6044ad8de2c9"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/knqyf263/pet/releases/download/v0.8.2/pet_0.8.2_darwin_amd64.tar.gz"
      sha256 "aeb128375bee24e19d30edb95fca3919139b52fd1ccccd9d60be93385a725f98"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/knqyf263/pet/releases/download/v0.8.2/pet_0.8.2_linux_armv6.tar.gz"
      sha256 "e67fd526657a2054517a691670a8f9b1137f81ff74dbaef24e9a0e120b2bf3d0"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/knqyf263/pet/releases/download/v0.8.2/pet_0.8.2_linux_arm64.tar.gz"
      sha256 "7b74aa31af5e39f04c7a2125824fd2328f157198dc038c925174cc7fbe6a189a"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/knqyf263/pet/releases/download/v0.8.2/pet_0.8.2_linux_amd64.tar.gz"
      sha256 "ad378128f66fff68d4adac31dd151d799ed2b67f02a900b876a43fc27161dd1d"

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
