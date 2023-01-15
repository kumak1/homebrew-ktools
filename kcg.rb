# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kcg < Formula
  desc "kumak1 Convenient Git tools."
  homepage "https://github.com/kumak1/kcg"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kumak1/kcg/releases/download/0.7.1/kcg_0.7.1_darwin_arm64.tar.gz"
      sha256 "64b34db9e73a9b2b3e0b05fbd7510d28528c61e1b7d9ffa03fd913ec945d733c"

      def install
        bin.install Dir['kcg']
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kumak1/kcg/releases/download/0.7.1/kcg_0.7.1_darwin_amd64.tar.gz"
      sha256 "960bee9cde297ae3717c66af9219f0c2d28468d7db800db2094b9021a54e4fdb"

      def install
        bin.install Dir['kcg']
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kumak1/kcg/releases/download/0.7.1/kcg_0.7.1_linux_arm64.tar.gz"
      sha256 "82328c3feff9b671f88c30d735321b29719452ee5279734ffe59bc13c070c2d1"

      def install
        bin.install Dir['kcg']
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kumak1/kcg/releases/download/0.7.1/kcg_0.7.1_linux_amd64.tar.gz"
      sha256 "4ee64a6d079cc3f8f6ac2a5bfd10635699ed0e7692300ece854bd52334269f83"

      def install
        bin.install Dir['kcg']
      end
    end
  end

  test do
    system "#{bin}/kcg"
  end
end
