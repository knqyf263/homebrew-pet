# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pet < Formula
  desc "Simple command-line snippet manager"
  homepage "https://github.com/knqyf263/pet"
  version "0.8.0"

  depends_on "fzf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/knqyf263/pet/releases/download/v0.8.0/pet_0.8.0_darwin_arm64.tar.gz"
      sha256 "b092ab4bf97d5cba2bee62e5d6923808910de3e7593633005c50f4278117cb7f"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/knqyf263/pet/releases/download/v0.8.0/pet_0.8.0_darwin_amd64.tar.gz"
      sha256 "c28e5e44d7e7bbda1329c309dbe481a0380fc7843fcd7eebb38a6e4c8e2dd468"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/knqyf263/pet/releases/download/v0.8.0/pet_0.8.0_linux_armv6.tar.gz"
      sha256 "2d337ae740fd3c9df10052c90620616b994212c5472173944d619eb2c18f3205"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/knqyf263/pet/releases/download/v0.8.0/pet_0.8.0_linux_amd64.tar.gz"
      sha256 "8afde2feb0b684e16b3440c08b279ef061f494f74770371542be4eb2e2dffff7"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/knqyf263/pet/releases/download/v0.8.0/pet_0.8.0_linux_arm64.tar.gz"
      sha256 "912686b1f710ae016426441c2953ccf8debd6c2133085ad94967f83bdd0592fa"

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
