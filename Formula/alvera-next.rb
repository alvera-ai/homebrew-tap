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
  version "0.12.1-next.g8885c2f"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g8885c2f/alvera-0.12.1-next.g8885c2f-darwin-arm64.tar.gz"
      sha256 "66bebf0134f235b5d1400651071b2f373dc24fcb1e620526b1c6ef21b1b091d8"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g8885c2f/alvera-0.12.1-next.g8885c2f-darwin-x64.tar.gz"
      sha256 "633f70e5ec49ad6f07a50100095fb097b9f9c6898410cead700ebba1e96f3539"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g8885c2f/alvera-0.12.1-next.g8885c2f-linux-x64.tar.gz"
      sha256 "96d9266ec74144ef993a4cb17a9d204d72dcf9a7e7d67a249d515cdafe3a3908"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g8885c2f/alvera-0.12.1-next.g8885c2f-linux-arm64.tar.gz"
      sha256 "d37175e85c4c62c5a7bf88ad69ef59ef2af5930338c322fc7ec5df317f4ef620"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
