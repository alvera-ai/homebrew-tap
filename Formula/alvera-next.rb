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
  version "0.13.0-next.g14c04ff"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g14c04ff/alvera-0.13.0-next.g14c04ff-darwin-arm64.tar.gz"
      sha256 "e859abc619304e50145efde936ec02d7f8cbe8de1bf4a2036813ab783994a00c"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g14c04ff/alvera-0.13.0-next.g14c04ff-darwin-x64.tar.gz"
      sha256 "b3c6a5b8de83c4abf4f925ad135b8db11ca2959f1eaa98b176d285b2342a82b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g14c04ff/alvera-0.13.0-next.g14c04ff-linux-x64.tar.gz"
      sha256 "2ae03277fb9a8faac46b1fc1e9baad9a888b2f2193e2eac0b94b4eb64e04bff9"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g14c04ff/alvera-0.13.0-next.g14c04ff-linux-arm64.tar.gz"
      sha256 "6ff40c0347a42c0f7534326b7ff58990a6aea97388946ceee34c983a8fc2ad9a"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
