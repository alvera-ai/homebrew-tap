class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/platform-sdk"
  version "0.10.0-rc.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/platform-sdk/releases/download/v0.10.0-rc.2/alvera-0.10.0-rc.2-darwin-arm64.tar.gz"
      sha256 "de465585abf72b0bfc8c89226df898a93abed1f010967bfee6467ed17f06b706"
    end
    on_intel do
      odie "alvera does not yet ship a binary for darwin-x64. Multi-arch builds land with release-cli.yml."
    end
  end

  on_linux do
    odie "alvera does not yet ship a binary for Linux. Multi-arch builds land with release-cli.yml."
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
