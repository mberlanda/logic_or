RSpec.describe "Included in Object" do

  it { expect(Object.new.respond_to?(:lor)).to be(true) }

  context "when nil" do
    it { expect(nil.lor('a')).to eq('a') }
    it { expect(nil.lor(1)).to eq(1) }
    it { expect(nil.lor([])).to eq([]) }
    it { expect(nil.lor(false)).to eq(false) }
  end

  context "when false" do
    it { expect(false.lor('a')).to eq(false) }
    it { expect(false.lor(1)).to eq(false) }
    it { expect(false.lor([])).to eq(false) }
    it { expect(false.lor(true)).to eq(false) }
  end

  context "when int" do
    it { expect(0.lor('a')).to eq(0) }
    it { expect(0.lor(1)).to eq(0) }
    it { expect(0.lor([])).to eq(0) }
    it { expect(0.lor(true)).to eq(0) }
  end

  context "when string" do
    it { expect('foo'.lor('a')).to eq('foo') }
    it { expect('foo'.lor(1)).to eq('foo') }
    it { expect('foo'.lor([])).to eq('foo') }
    it { expect('foo'.lor(true)).to eq('foo') }
  end

  context "when array" do
    it { expect([].lor('a')).to eq([]) }
    it { expect([].lor(1)).to eq([]) }
    it { expect([].lor(['a'])).to eq([]) }
    it { expect([].lor(true)).to eq([]) }
  end

  context "when hash" do
    it { expect({}.lor('a')).to eq({}) }
    it { expect({}.lor(1)).to eq({}) }
    it { expect({}.lor(['a'])).to eq({}) }
    it { expect({}.lor(true)).to eq({}) }
  end
end
