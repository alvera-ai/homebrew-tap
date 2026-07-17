# Prerelease channel for the alvera CLI. keg_only so it installs
# alongside the stable alvera formula without clobbering it; point the
# alvera command at this build on demand with
#   brew link --overwrite --force alvera-next
# and revert with
#   brew unlink alvera-next
# Updated by release-cli.yml on every prerelease (next dispatch or rc tag).
class AlveraNext < Formula
  desc "Alvera platform CLI (prerelease channel) — point alvera at unstable on demand"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.12.1-next.ge5afb9b"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ge5afb9b/alvera-0.12.1-next.ge5afb9b-darwin-arm64.tar.gz"
      sha256 "cefafedb7e17e15695593454e9f056723d3a6706a09b9f3d1b9d41795481d81f"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ge5afb9b/alvera-0.12.1-next.ge5afb9b-darwin-x64.tar.gz"
      sha256 "7d8d4e2eaf13e8769a9e23702861aa985272b303d90fe4639678e2c7168ff9a4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ge5afb9b/alvera-0.12.1-next.ge5afb9b-linux-x64.tar.gz"
      sha256 "fb3bacc170d50dca8f75d80b5abd9b7a5a8289877761e50cdfc0a949a03ced79"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ge5afb9b/alvera-0.12.1-next.ge5afb9b-linux-arm64.tar.gz"
      sha256 "2f35a88fa6e032c14fb135d78eb191da6100b5cc745454586dc68295c912cb8d"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
