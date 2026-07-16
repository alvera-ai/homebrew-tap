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
  version "0.12.1-next.gc57a04a"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gc57a04a/alvera-0.12.1-next.gc57a04a-darwin-arm64.tar.gz"
      sha256 "5e60054edb72fdfb1b27ed0a0dd7045c3e37e129bb59d91b74691a85dd004de9"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gc57a04a/alvera-0.12.1-next.gc57a04a-darwin-x64.tar.gz"
      sha256 "59e70af2df609326dab47d6e6d0a1f3aaaee6d5f3295fef15caad02f22716601"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gc57a04a/alvera-0.12.1-next.gc57a04a-linux-x64.tar.gz"
      sha256 "532291756b9d0141690f6e143296b50c3c5d080e470b3148e585585c47e6f57b"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gc57a04a/alvera-0.12.1-next.gc57a04a-linux-arm64.tar.gz"
      sha256 "0cbc971b334ddb8e1a1301a6f6059b83d1b3c6dc174fa0369f25be179015d81b"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
