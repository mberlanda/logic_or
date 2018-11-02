class Object
  include LogicOr
end

RSpec.describe "Including in Object" do

  it { expect(Object.new.respond_to?(:logic_or)).to be(true) }

  context "when nil" do
    it { expect(nil.logic_or('a')).to eq('a') }
    it { expect(nil.logic_or(1)).to eq(1) }
    it { expect(nil.logic_or([])).to eq([]) }
    it { expect(nil.logic_or(false)).to eq(false) }
  end

  context "when false" do
    it { expect(false.logic_or('a')).to eq(false) }
    it { expect(false.logic_or(1)).to eq(false) }
    it { expect(false.logic_or([])).to eq(false) }
    it { expect(false.logic_or(true)).to eq(false) }
  end

  context "when int" do
    it { expect(0.logic_or('a')).to eq(0) }
    it { expect(0.logic_or(1)).to eq(0) }
    it { expect(0.logic_or([])).to eq(0) }
    it { expect(0.logic_or(true)).to eq(0) }
  end

  context "when string" do
    it { expect('foo'.logic_or('a')).to eq('foo') }
    it { expect('foo'.logic_or(1)).to eq('foo') }
    it { expect('foo'.logic_or([])).to eq('foo') }
    it { expect('foo'.logic_or(true)).to eq('foo') }
  end

  context "when array" do
    it { expect([].logic_or('a')).to eq([]) }
    it { expect([].logic_or(1)).to eq([]) }
    it { expect([].logic_or(['a'])).to eq([]) }
    it { expect([].logic_or(true)).to eq([]) }
  end

  context "when hash" do
    it { expect({}.logic_or('a')).to eq({}) }
    it { expect({}.logic_or(1)).to eq({}) }
    it { expect({}.logic_or(['a'])).to eq({}) }
    it { expect({}.logic_or(true)).to eq({}) }
  end
end
