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
  version "0.12.1-next.g9121cfc"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g9121cfc/alvera-0.12.1-next.g9121cfc-darwin-arm64.tar.gz"
      sha256 "cc5bb75eda94579bd2a30e889233b60f7b6975722e8f2ddb08b0a8cd6222e9dd"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g9121cfc/alvera-0.12.1-next.g9121cfc-darwin-x64.tar.gz"
      sha256 "161ed227c93a18590efb10541a331a0ab2fb702762217cbf9c80bae5abf3bcb0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g9121cfc/alvera-0.12.1-next.g9121cfc-linux-x64.tar.gz"
      sha256 "b4a298d32fddca5fee468cb26108fb6b224adab2ea3db763c82dc8223319296e"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g9121cfc/alvera-0.12.1-next.g9121cfc-linux-arm64.tar.gz"
      sha256 "b6dc46689d742baf6a0935b651ba02de8d93b3896efecb565d736ed00a47bfdb"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
