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
  version "0.20.0-next.gaafd87a"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.20.0-next.gaafd87a/alvera-0.20.0-next.gaafd87a-darwin-arm64.tar.gz"
      sha256 "01a0fab58d70c83aca9e3285cc21f1d3fa9e6ba17512bca137a9bd4738bc9c02"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.20.0-next.gaafd87a/alvera-0.20.0-next.gaafd87a-darwin-x64.tar.gz"
      sha256 "16eb399adf7f8709a1f01c41a5acfe745526ed079377d318e0224e5dc5d6dbc6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.20.0-next.gaafd87a/alvera-0.20.0-next.gaafd87a-linux-x64.tar.gz"
      sha256 "2a2e26a568069c5c9f002106aa1c3a12a100b0c54dd1ad4c1fe40e278c3b7f93"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.20.0-next.gaafd87a/alvera-0.20.0-next.gaafd87a-linux-arm64.tar.gz"
      sha256 "5b5138fcf2096a8bf51eed7361605ca5dd7c2d56a0f8cba0403ceb634b8966be"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
