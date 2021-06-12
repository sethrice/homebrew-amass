# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth Attack Surface Mapping and Asset Discovery"
  homepage "https://owasp.org/www-project-amass/"
  version "3.13.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OWASP/Amass/releases/download/v3.13.2/amass_macos_amd64.zip"
      sha256 "b948f7e7d0e7852c184755ce54856426794c20e013fb9df4b1b9967459dbcbc3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/OWASP/Amass/releases/download/v3.13.2/amass_macos_arm64.zip"
      sha256 "37e9974ab3ff22c9cb944cbb7a5ec5dcb064c148122c6706bd09af587730accb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OWASP/Amass/releases/download/v3.13.2/amass_linux_amd64.zip"
      sha256 "6a9332b53de0fff7898640be44e1b7353925beceee3cf988338be04fa25ea1f6"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OWASP/Amass/releases/download/v3.13.2/amass_linux_arm.zip"
      sha256 "124e7f5fe608b19073cbf4f8bec6af72f695f067c4e4c454eb74b17cb0af5818"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OWASP/Amass/releases/download/v3.13.2/amass_linux_arm64.zip"
      sha256 "b9da32959ae608f8b51c7a57090195eda7cba0bee3d7414534267225cc1a6c10"
    end
  end

  def install
    bin.install "amass"
  end

  test do
    system "#{bin}/amass --version"
  end
end
