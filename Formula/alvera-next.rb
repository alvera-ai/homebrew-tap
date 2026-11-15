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
  version "0.22.0-next.g0d959d4"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.22.0-next.g0d959d4/alvera-0.22.0-next.g0d959d4-darwin-arm64.tar.gz"
      sha256 "a88c756ca55dd225ab9622ca7eb3a400cd1addaf48de5e044fa389abcf73e2a5"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.22.0-next.g0d959d4/alvera-0.22.0-next.g0d959d4-darwin-x64.tar.gz"
      sha256 "6b3a1f90bcd384a9cbdf2bff22ccd92e5cb3c62e08f70ef6bb4e3a85bec73366"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.22.0-next.g0d959d4/alvera-0.22.0-next.g0d959d4-linux-x64.tar.gz"
      sha256 "7f1a520fa85bda78d310632da22a927fa3f85ca27063e32550ef48ca47caf7be"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.22.0-next.g0d959d4/alvera-0.22.0-next.g0d959d4-linux-arm64.tar.gz"
      sha256 "7a00f2121f326936d89a6e7a1028986dbeece478e547c8caa60eea0179d06761"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
