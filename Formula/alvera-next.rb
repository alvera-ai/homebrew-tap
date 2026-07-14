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
  version "0.12.1-next.g61ceb24"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g61ceb24/alvera-0.12.1-next.g61ceb24-darwin-arm64.tar.gz"
      sha256 "3452c6ad6850d9af0c8358cea732666f7f80880344893d02916e9ddb53b4ba9b"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g61ceb24/alvera-0.12.1-next.g61ceb24-darwin-x64.tar.gz"
      sha256 "eee0ec1e57300283abdf4d97f738f978f6887fe01bea51baa46445ff4830553e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g61ceb24/alvera-0.12.1-next.g61ceb24-linux-x64.tar.gz"
      sha256 "b46faf3c886d2914ca11223429be02b7ac7bf4c4fbe08a0c12e0e2856f8ebb01"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g61ceb24/alvera-0.12.1-next.g61ceb24-linux-arm64.tar.gz"
      sha256 "77c87452b3c41f31bf03ee25bae59f7281e253159db6305563808e5191eec8e7"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
