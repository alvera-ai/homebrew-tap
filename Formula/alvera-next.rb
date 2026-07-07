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
  version "0.12.1-next.gefe3990"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gefe3990/alvera-0.12.1-next.gefe3990-darwin-arm64.tar.gz"
      sha256 "5a8f2ab7d5b2a4f00826ea3c41bf8699ac09d2c010dec32933207da019a2f242"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gefe3990/alvera-0.12.1-next.gefe3990-darwin-x64.tar.gz"
      sha256 "4a09158fe8f7f53d46b9683cc091a4efb8d80ae198823f01f93c4885fdc7c482"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gefe3990/alvera-0.12.1-next.gefe3990-linux-x64.tar.gz"
      sha256 "36c8825620d8b7ddf2a0afe42de7e2da07c84a53eb10768ae67b4054f9b210e9"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gefe3990/alvera-0.12.1-next.gefe3990-linux-arm64.tar.gz"
      sha256 "fdbbea28dfd77dc703fa5b3cad719315025bec32886a578dd23b00e14cc169dc"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
