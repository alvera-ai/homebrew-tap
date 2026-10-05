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
  version "0.21.1-next.g4e4bff9"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1-next.g4e4bff9/alvera-0.21.1-next.g4e4bff9-darwin-arm64.tar.gz"
      sha256 "131d06f01e6978717cc93d11125d6b843a97227518ea7a75dd681ffcac60bfaa"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1-next.g4e4bff9/alvera-0.21.1-next.g4e4bff9-darwin-x64.tar.gz"
      sha256 "7e4b1d66e04e4a2bd5625b5323a365f120c311b8b34efcabb192bbe01089caa8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1-next.g4e4bff9/alvera-0.21.1-next.g4e4bff9-linux-x64.tar.gz"
      sha256 "232acbfa159245eb118c2df4aecb316dcb29ea521afcd2ef002d32e6dabbd5fb"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1-next.g4e4bff9/alvera-0.21.1-next.g4e4bff9-linux-arm64.tar.gz"
      sha256 "c027e016405ed5af1c34c3e623a57579321f60183c5c1d307d33791d0b8cdb41"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
