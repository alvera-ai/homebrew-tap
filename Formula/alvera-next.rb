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
  version "0.17.0-next.g00fdd4c"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g00fdd4c/alvera-0.17.0-next.g00fdd4c-darwin-arm64.tar.gz"
      sha256 "8deab642d109731339923f74e2ce2191f8614cc096c2223ddf5b66bc0fb3d09d"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g00fdd4c/alvera-0.17.0-next.g00fdd4c-darwin-x64.tar.gz"
      sha256 "e27d8d7078f42fbbedbfab4aaa6899f5d6d265ae3f4fe942e80a90295b87474f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g00fdd4c/alvera-0.17.0-next.g00fdd4c-linux-x64.tar.gz"
      sha256 "007afdeb3677e7899e014680a15047299db88d70cca3837a560f6c28c8f758ef"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g00fdd4c/alvera-0.17.0-next.g00fdd4c-linux-arm64.tar.gz"
      sha256 "88f7e522bc9164a7e447dbf70d34561d37ce359576d7a83d8ecd7d4664b8ad59"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
