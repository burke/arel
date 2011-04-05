require 'helper'

describe Arel::Nodes::GroupConcat do
  describe 'backwards compatibility' do
    it 'must be an expression' do
      Arel::Nodes::GroupConcat.new('foo').must_be_kind_of Arel::Expression
    end
  end

  describe "as" do
    it 'should alias the group_concat' do
      table = Arel::Table.new :users
      table[:id].group_concat.as('foo').to_sql.must_be_like %{
        GROUP_CONCAT("users"."id", ',') AS foo
      }
    end
  end
end
