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
  version "0.17.0-next.g3266c00"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g3266c00/alvera-0.17.0-next.g3266c00-darwin-arm64.tar.gz"
      sha256 "3a1a5ea08417c95dff59fa3cf9ec5b1f2405739eedb7e988e5e37373844cdf49"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g3266c00/alvera-0.17.0-next.g3266c00-darwin-x64.tar.gz"
      sha256 "5fe503a27d41f1337061da23752dd28eb6e6ec2846e4b24c9c0de90cc545e893"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g3266c00/alvera-0.17.0-next.g3266c00-linux-x64.tar.gz"
      sha256 "cd7545db5b4ee5908710a05d4ea57ed4c2aeb97dffce774025658ec66f2a08a9"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g3266c00/alvera-0.17.0-next.g3266c00-linux-arm64.tar.gz"
      sha256 "f9e4e9b3838ffb945f46ac441c5af0c7a881b9d33b95e8e692a2fbde886461be"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
