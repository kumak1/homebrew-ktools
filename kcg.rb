# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kcg < Formula
  desc "kumak1 Convenient Git tools."
  homepage "https://github.com/kumak1/kcg"
  version "0.0.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kumak1/kcg/releases/download/0.0.10/kcg_0.0.10_darwin_arm64.tar.gz"
      sha256 "d8f997882f7f21e7159885e0ae8ee3446e478fce976788fece2d58f623b3ecb5"

      def install
        bin.install Dir['kcg']
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kumak1/kcg/releases/download/0.0.10/kcg_0.0.10_darwin_amd64.tar.gz"
      sha256 "9eacc4645d235e0601f4cdd2a44c178d7484d2ced0781024522b14c6ffd120b4"

      def install
        bin.install Dir['kcg']
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kumak1/kcg/releases/download/0.0.10/kcg_0.0.10_linux_arm64.tar.gz"
      sha256 "159994bd058c0f0fc54417f9784fb263d2090ab375bd6d5f0f12edb096f5ef0f"

      def install
        bin.install Dir['kcg']
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kumak1/kcg/releases/download/0.0.10/kcg_0.0.10_linux_amd64.tar.gz"
      sha256 "51b6e22ebef01684d866dc30af8827b2975238885461df12b9df400010231035"

      def install
        bin.install Dir['kcg']
      end
    end
  end

  test do
    system "#{bin}/kcg"
  end
end
