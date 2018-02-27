RSpec.describe TheMovieDb do
  before(:each) do
    @client = TheMovieDb::Client.new(ENV['TMDB_API_KEY'])
  end

  it "has a version number" do
    expect(TheMovieDb::VERSION).not_to be nil
  end

  describe "initialize client" do
    context "when api key" do
      let(:invalid_client) { TheMovieDb::Client.new(' ') }

      it "not valid" do
        expect { invalid_client }.to raise_error(ArgumentError) 
      end

      it "valid" do
        expect { @client }.to_not raise_error(ArgumentError)
      end
    end
  end


  describe "top_rated" do
    context "when valid" do
      it "returns the movies" do
        expect(@client.top_rated.body).not_to be_empty
      end

      it "is successfully fetch" do
        expect(@client.top_rated.success?).to eq(true)
      end
    end

    context "when invalid" do
      let(:invalid_client) { TheMovieDb::Client.new('this is the wrong api key') }

      it "returns error" do
        expect(invalid_client.top_rated.body.keys).to include("status_message")
      end

      it "is failed" do
        expect(invalid_client.top_rated.success?).to eq(false)
      end
    end
  end
end
