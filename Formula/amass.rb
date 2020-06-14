# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth Attack Surface Mapping and Asset Discovery"
  homepage "https://owasp.org/www-project-amass/"
  version "3.7.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/OWASP/Amass/releases/download/v3.7.2/amass_macos_amd64.zip"
    sha256 "004186276d6fe176d63b89e0a3aacd78e51fe08ec29b1cf10b8d8537f65e6ee7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/OWASP/Amass/releases/download/v3.7.2/amass_linux_amd64.zip"
      sha256 "89443a9555d6d1d7a6bdf6d7214046df22d6065977dd72b9d6611fe0d6e55c96"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OWASP/Amass/releases/download/v3.7.2/amass_linux_arm64.zip"
        sha256 "6f5f2fd073ef7d0b99305be187d6e7f9983737652f80effdb04af67ba852bb2d"
      else
        url "https://github.com/OWASP/Amass/releases/download/v3.7.2/amass_linux_arm.zip"
        sha256 "5f3174d43babadc2d4c850b846211b62654caf0dbcf25190d90ac802c15116fa"
      end
    end
  end

  def install
    bin.install "amass"
  end

  test do
    system "#{bin}/program --version"
  end
end
