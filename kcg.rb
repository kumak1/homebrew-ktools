# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kcg < Formula
  desc "kumak1 Convenient Git tools."
  homepage "https://github.com/kumak1/kcg"
  version "0.13.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kumak1/kcg/releases/download/v0.13.2/kcg_0.13.2_darwin_arm64.tar.gz"
      sha256 "7d3c5820d92a9296fbb243432f405827044cdbfa417670716ffd3ab236e0c656"

      def install
        bin.install Dir['kcg']
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kumak1/kcg/releases/download/v0.13.2/kcg_0.13.2_darwin_amd64.tar.gz"
      sha256 "22f381721850f8ffed6b91c34f308523e8e33992dbd8f009fd1200ebb1771487"

      def install
        bin.install Dir['kcg']
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kumak1/kcg/releases/download/v0.13.2/kcg_0.13.2_linux_arm64.tar.gz"
      sha256 "31fbb8f15205d4c1a8a7586030f087645805fe0c9ad685fc73cf0fd603079c9c"

      def install
        bin.install Dir['kcg']
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kumak1/kcg/releases/download/v0.13.2/kcg_0.13.2_linux_amd64.tar.gz"
      sha256 "8ee3e0b006fab8cc1eea4679e6434990530a80f9e5731ee7759ff5b0c3916f36"

      def install
        bin.install Dir['kcg']
      end
    end
  end

  test do
    system "#{bin}/kcg"
  end
end
