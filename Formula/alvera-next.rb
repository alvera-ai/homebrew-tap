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
  version "0.13.0-next.g4d91b45"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g4d91b45/alvera-0.13.0-next.g4d91b45-darwin-arm64.tar.gz"
      sha256 "e0f4e44ef677065da278e12c5e48d14cdaf12bc19d6c4558cffdb1a9fece087b"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g4d91b45/alvera-0.13.0-next.g4d91b45-darwin-x64.tar.gz"
      sha256 "fc68c9170f6f4ea8ab87aa9cf023b2878b5e786065c648c2982eabcba1e39315"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g4d91b45/alvera-0.13.0-next.g4d91b45-linux-x64.tar.gz"
      sha256 "1e1fafdbc38f4520e6397f4d09b643c1d8fcbc624382bb73bc546b147a32d999"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g4d91b45/alvera-0.13.0-next.g4d91b45-linux-arm64.tar.gz"
      sha256 "907ec38b9270d3c5ea7342e00e615df3a675f90872c30b0e3b67cc8aca42d077"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
