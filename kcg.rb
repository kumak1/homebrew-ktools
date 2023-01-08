# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kcg < Formula
  desc "kumak1 Convenient Git tools."
  homepage "https://github.com/kumak1/kcg"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kumak1/kcg/releases/download/0.2.2/kcg_0.2.2_darwin_arm64.tar.gz"
      sha256 "2661b1efc544c09525efd1fd40b6c37a76373d5f4fb852ba61ece6ffe03b6e23"

      def install
        bin.install Dir['kcg']
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kumak1/kcg/releases/download/0.2.2/kcg_0.2.2_darwin_amd64.tar.gz"
      sha256 "5656205670bbf393a0a39d5a34713c4628b91f5f97a53d33162a731f9fce32b8"

      def install
        bin.install Dir['kcg']
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kumak1/kcg/releases/download/0.2.2/kcg_0.2.2_linux_arm64.tar.gz"
      sha256 "9f38756a64ae11bd5a474fc12f8f3fceb4cc9ba16c303179cf982fed265d9ff9"

      def install
        bin.install Dir['kcg']
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kumak1/kcg/releases/download/0.2.2/kcg_0.2.2_linux_amd64.tar.gz"
      sha256 "d3fce750aa8b835565f84872b9244bbc4d7e820b48a616bfbac6e0c111e548ba"

      def install
        bin.install Dir['kcg']
      end
    end
  end

  test do
    system "#{bin}/kcg"
  end
end
