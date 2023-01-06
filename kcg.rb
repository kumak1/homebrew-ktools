# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kcg < Formula
  desc "kumak1 Convenient Git tools."
  homepage "https://github.com/kumak1/kcg"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kumak1/kcg/releases/download/0.1.0/kcg_0.1.0_darwin_arm64.tar.gz"
      sha256 "540faae95adb70b52eb8d2480069839c282338a7fc28ef4397fe232890590dff"

      def install
        bin.install Dir['kcg']
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kumak1/kcg/releases/download/0.1.0/kcg_0.1.0_darwin_amd64.tar.gz"
      sha256 "a48f37bc43a14130450290183f0647f2a14ec9d676b636645ac097723bf63d04"

      def install
        bin.install Dir['kcg']
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kumak1/kcg/releases/download/0.1.0/kcg_0.1.0_linux_arm64.tar.gz"
      sha256 "8e935ef15ac9fb82b5e30bf31487e6401da3f0783837ae3f2c69c7c267f69b43"

      def install
        bin.install Dir['kcg']
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kumak1/kcg/releases/download/0.1.0/kcg_0.1.0_linux_amd64.tar.gz"
      sha256 "e49e1a21ba1526202bf06f2a64d3010248cf54b1000799f8f76579624bf7d28b"

      def install
        bin.install Dir['kcg']
      end
    end
  end

  test do
    system "#{bin}/kcg"
  end
end
