# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth Attack Surface Mapping and Asset Discovery"
  homepage "https://www.owasp.org/index.php/OWASP_Amass_Project"
  version "3.2.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/OWASP/Amass/releases/download/v3.2.2/amass_v3.2.2_macos_amd64.zip"
    sha256 "dad56033dde8447e03282b6764ec3a3e2ee6c44f73091d2060f020ddefcccdcd"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/OWASP/Amass/releases/download/v3.2.2/amass_v3.2.2_linux_amd64.zip"
      sha256 "b1795de14bbff95e9230d2a9501ff807317482c6b9221bcf99e58fdd62ec1e3b"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OWASP/Amass/releases/download/v3.2.2/amass_v3.2.2_linux_arm64.zip"
        sha256 "ceffca01f22df08a3e5efc241b2b09ae2dc5e8cc2e40e9fc703ae2611f3b643a"
      else
        url "https://github.com/OWASP/Amass/releases/download/v3.2.2/amass_v3.2.2_linux_arm.zip"
        sha256 "fe64a85bf3178041ac00bd887d3f640bc293763f020ccc5f5dde4353af8a24be"
      end
    end
  end

  def install
    bin.install "amass"
  end
end
