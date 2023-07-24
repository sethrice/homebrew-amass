# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth Attack Surface Mapping and Asset Discovery"
  homepage "https://owasp.org/www-project-amass/"
  version "4.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/owasp-amass/amass/releases/download/v4.0.3/amass_Darwin_amd64.zip"
      sha256 "1006275da2fa2271887b43047f3c81b8525866abe2e2f239e9f2cbde41de484e"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/owasp-amass/amass/releases/download/v4.0.3/amass_Darwin_arm64.zip"
      sha256 "81a2d83a2d25f5ff053db7c730e776a0be57bc383cb3754f491a9101ec5888d2"

      def install
        bin.install "amass"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/owasp-amass/amass/releases/download/v4.0.3/amass_Linux_arm64.zip"
      sha256 "ff880fa3ebb735862d21c84365bbfefcb7fa2caedf42d51f61f6fc5d6944706e"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/owasp-amass/amass/releases/download/v4.0.3/amass_Linux_amd64.zip"
      sha256 "d0979cde89fa887b2d61b7d225f433e96106d4735cb92069c84ccf69405aa74a"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/owasp-amass/amass/releases/download/v4.0.3/amass_Linux_arm.zip"
      sha256 "579a0817c99aa25f8bce0b453da2bb65c622a51c2d702512899a244d675f3305"

      def install
        bin.install "amass"
      end
    end
  end

  test do
    system "#{bin}/amass --version"
  end
end
