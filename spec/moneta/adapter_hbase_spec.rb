# Generated by generate-specs
require 'helper'

describe_moneta "adapter_hbase" do
  def features
    [:increment]
  end

  def new_store
    Moneta::Adapters::HBase.new(:table => 'adapter_hbase')
  end

  def load_value(value)
    Marshal.load(value)
  end

  include_context 'setup_store'
  it_should_behave_like 'concurrent_increment'
  it_should_behave_like 'features'
  it_should_behave_like 'increment'
  it_should_behave_like 'multiprocess'
  it_should_behave_like 'not_create'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'persist_stringkey_stringvalue'
  it_should_behave_like 'returndifferent_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
  it_should_behave_like 'store_large'
end
