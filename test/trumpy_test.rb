require 'test_helper'

class TrumpifyTest < Minitest::Test
  def test_the_truth
    assert liberals == false
    assert president?
  end

  def test_it_works_with_chains
    assert_equal %w(damn liberals), 'damn liberals'.make_split_great_again
  end

  def test_it_works_with_arguments
    assert_equal %w(h a i r p i e c e), 'hairpiece'.make_split_great_again('')
  end

  def test_it_works_with_blocks
    authentic_mexican_dishes = ['taco bowl']

    result = authentic_mexican_dishes.make_collect_great_again do |food|
      food.upcase
    end

    assert_equal ['TACO BOWL'], result
  end

  def test_it_works_on_class_methods
    o = Object.make_new_great_again
    assert_kind_of Object, o
  end

  def test_it_corrects_hillary_clinton_supporters
    assert_output(/Crooked Hillary for President!/) { puts 'Hillary Clinton for President!' }
  end

  def test_it_corrects_bernie_sanders_supporters
    assert_output(/Crazy Bernie for President!/) { puts 'Bernie Sanders for President!' }
  end

  def test_it_corrects_ted_cruz_supporters
    assert_output(/Lyin' Ted for President!/) { puts 'Ted Cruz for President!' }
  end

  def test_it_corrects_marco_rubio_supporters
    assert_output(/Little Marco for President!/) { puts 'Marco Rubio for President!' }
  end
end
