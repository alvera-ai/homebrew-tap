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
  version "0.15.0-next.geb8c59c"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.geb8c59c/alvera-0.15.0-next.geb8c59c-darwin-arm64.tar.gz"
      sha256 "f8ba914ebf1fc4def506be8c8cb7b7b9a7b371d1d140e1da9ad9828c99188252"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.geb8c59c/alvera-0.15.0-next.geb8c59c-darwin-x64.tar.gz"
      sha256 "afe9aa40fe08ffbb733e5646f339bf83d77b6ca0b929b70b940b1c581505f717"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.geb8c59c/alvera-0.15.0-next.geb8c59c-linux-x64.tar.gz"
      sha256 "13f69f62628600ed3601c8facf0f35b8219be4747da939c5a4d71432c33d5b1f"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.geb8c59c/alvera-0.15.0-next.geb8c59c-linux-arm64.tar.gz"
      sha256 "22167c6874c93b641f22e76fa7d3e97a2e0bda2a340a6ca79e094dff64fc837d"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
