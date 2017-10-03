require './test_setup'
require './methods_quiz'

describe 'MethodsQuiz' do

  describe 'HasTeen' do

    it 'no teens should be false' do
      has_teen?(11, 20, 12).must_equal(false)
    end

    it 'one teen should be true' do
      has_teen?(19, 1, 4).must_equal(true)
      has_teen?(9, 14, 4).must_equal(true)
      has_teen?(9, 1, 13).must_equal(true)
    end

    it 'two teens should be true' do
      has_teen?(19, 13, 4).must_equal(true)
      has_teen?(9, 16, 13).must_equal(true)
      has_teen?(19, 1, 18).must_equal(true)
    end

    it 'all teens should be true' do
      has_teen?(19, 13, 14).must_equal(true)
    end

  end

  describe 'NotString' do

    it 'adds a not' do
      not_string('word').must_equal('notword')
    end

    it 'gives back the original string if a not is at front' do
      not_string('notword').must_equal('notword')
    end

    it 'works with an empty string' do
      not_string('').must_equal('not')
    end

  end

  describe 'IcyHot' do

    it 'both icy should be false' do
      icy_hot?(-1, -2).must_equal(false)
    end

    it 'both hot should be false' do
      icy_hot?(101, 110).must_equal(false)
    end

    it 'icy and hot should be true' do
      icy_hot?(-1, 104).must_equal(true)
    end

    it 'hot and icy should be true' do
      icy_hot?(101, -4).must_equal(true)
    end

    it 'icy and middle should be false' do
      icy_hot?(-1, 0).must_equal(false)
    end

    it 'hot and middle should be false' do
      icy_hot?(101, 100).must_equal(false)
    end

    it 'both middle should be false' do
      icy_hot?(0, 100).must_equal(false)
    end

  end

  describe 'CloserTo' do

    it 'should be a when a is closer' do
      closer_to(10, 11, 12).must_equal(11)
    end

    it 'should be b when b is closer' do
      closer_to(10, 12, 11).must_equal(11)
    end

    it 'should be 0 when equidistant' do
      closer_to(10, 11, 11).must_equal(0)
    end

    it 'works with lower numbers too' do
      closer_to(10, 8, 7).must_equal(8)
      closer_to(10, 7, 8).must_equal(8)
    end

  end

  describe 'TwoAsOne' do

    it 'a + b equals c is true' do
      two_as_one?(1, 2, 3).must_equal(true)
    end

    it 'b + c equals a is true' do
      two_as_one?(5, 2, 3).must_equal(true)
    end

    it 'a + c equals b is true' do
      two_as_one?(1, 4, 3).must_equal(true)
    end

    it 'no sum pairs are equal is false' do
      two_as_one?(1, 2, 4).must_equal(false)
    end

    it 'same numbers should be false' do
      two_as_one?(1, 1, 1).must_equal(false)
    end

  end

end

