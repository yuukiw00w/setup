# install & fix Ruby Version
rbenv install 2.5.0
rbenv local 2.5.0

# bundler
# see http://bundler.io/
rbenv exec gem install bundler
rbenv rehash

if [ -f "./Gemfile" ]; then
  rm ./Gemfile
fi
touch Gemfile

echo "source \"https://rubygems.org\" " >> Gemfile
echo "git_source(:github) {|repo_name| \"https://github.com/#{repo_name}\" } " >> Gemfile
echo "gem \"cocoapods\", \"1.4.0\" " >> Gemfile

rbenv exec bundle install --path vendor/bundle

# carthage
if [ ! -x "`which cathage`" ]; then
  brew update
  brew install carthage
fi

touch Cartfile
carthage update --platform iOS

#cocoapods
rbenv exec bundle exec pod init
rbenv exec bundle exec pod install
