# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class HawkularMetricsEc < Formula
  desc "Hawkular Metrics on WildFly 10 with embedded Cassandra instance"
  homepage "http://www.hawkular.org/docs/components/metrics/index.html"
  url "https://github.com/hawkular/hawkular-metrics/releases/download/0.16.0/hawkular-metrics-wildfly-embedded-cassandra-0.16.0.Final.tar.gz"
  version "0.16.0"
  sha256 "4da683824e000d6ec1308a1a4b919fcdeb79bfbbad33bf624e5cbe0d21582e86"

  def install
    rm_rf Dir["bin/*.bat"]
    rm_rf Dir["bin/*.ps1"]
    libexec.install Dir["*"]
    #bin.install_symlink "#{libexec}/"
    #bin.install_symlink "#{libexec}/bin/standalone.sh" => "#{libexec}/bin/hawkular-metrics-ec.sh"
  end

  def caveats; <<-EOS.undent
    The home of Hawkular Metrics with embedded Cassandra is:
      #{opt_libexec}
    Log files for both the Hawkular server and for Cassandra are in:
      #{opt_libexec}/standalone/log
    To run Hawkular Metrics:
      #{opt_libexec}/bin/standalone.sh
    EOS
  end
end
