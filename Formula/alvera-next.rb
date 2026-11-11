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
  version "0.21.4-next.g952cac5"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.4-next.g952cac5/alvera-0.21.4-next.g952cac5-darwin-arm64.tar.gz"
      sha256 "fac7e0d78cba3efa565d7e1718394bf79f7626052fe45adad98189028d092bea"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.4-next.g952cac5/alvera-0.21.4-next.g952cac5-darwin-x64.tar.gz"
      sha256 "928ab6c297b684243e8e07842ad9f5efde095d1f9bc6d1b17efb8af823ef77a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.4-next.g952cac5/alvera-0.21.4-next.g952cac5-linux-x64.tar.gz"
      sha256 "d779b8bb71d64cad9297bc7b542a96f109505a57e1fce0dec78d64105ad84fa6"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.4-next.g952cac5/alvera-0.21.4-next.g952cac5-linux-arm64.tar.gz"
      sha256 "1901ff51b3d94daf2adf147154c912ddf0902b6369b744b45f3330b9d73fbb24"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
