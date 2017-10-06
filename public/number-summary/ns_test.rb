require './test_setup'
require './number_summary'




describe "NumberSummary" do

  describe "Mean" do

    it "should find the average" do
      mean([1, 2, 3]).must_equal(2)
    end

    it "answers with a float" do
      mean([1, 2]).must_equal(1.5)
    end

    it "works with short lists" do
      mean([5]).must_equal(5)
    end

    it "works with long lists" do
      mean([*1..10000]).must_equal(10001 / 2.0)
    end

    it "works with negative numbers" do
      list = [1, -1, 3, -4, 5, 6, -1]
      mean(list).must_equal(list.reduce(:+) / list.length.to_f)
    end

  end

  describe "Median" do

    it "should work with odd length lists" do
      median([1, 2, 3]).must_equal(2)
    end

    it "should work with even length lists" do
      median([1, 2, 3, 4]).must_equal(2.5)
    end

    it "should work with short lists" do
      median([7]).must_equal(7)
    end

    it "should work with long lists" do
      median([1, 2, 3, 5, 6, 7, 8, 10, 14]).must_equal(6)
    end

    it "should work with unsorted" do
      median([1, 3, -4]).must_equal(1)
    end

  end

  describe "Mode" do

    it "should find a single mode" do
      mode([1, 2, 3, 3, 2, 1, 2]).must_equal([2])
    end

    it "should find multiple modes" do
      mode([1, 2, 3, 3, 0, 2, 1, 2, 1, 0, 0]).sort.must_equal([0, 1, 2])
    end

    it "should work with short lists" do
      mode([8]).must_equal([8])
    end

    it "should work with long lists" do
      mode(([16, 4] * 15).push(3)).sort.must_equal([4, 16])
    end

    it "should give back the same list if it is actually a set" do
      mode([*1..100]).sort.must_equal([*1..100])  
    end

  end

  describe "StandardDeviation" do

    it "should find the standard deviation" do
      standard_deviation([6, 2, 3, 1]).must_be_close_to(1.87, 0.1)
    end

    it "should work with short lists" do
      standard_deviation([1]).must_be_close_to(0, 0.1)
    end

    it "should work with long lists" do
      standard_deviation([*1..100]).must_be_close_to(28.86, 0.1)
    end

    it "should work with negative numbers" do
      standard_deviation([-5, 4, -13, -45, 5, 6]).must_be_close_to(17.85, 0.1)
    end

    it "should be zero if the list is the same number" do
      standard_deviation([9] * 16).must_be_close_to(0, 0.1)
    end

  end

  describe "LongestRun" do

    it "should find the longest run" do
      longest_run([1, 4, 2, 5, 3, 4, 7, 8, 4, 5, 6, 8, 9, 3, -1, 3]).must_equal(5)
    end

    it "should work with short lists" do
      longest_run([4]).must_equal(1)
    end

    it "should work with always increasing lists" do
      longest_run([*-6..150]).must_equal([*-6..150].length)
    end

    it "should work with non-increasing lists" do
      longest_run([4, 2, 0, -2]).must_equal(1)
    end

    it "should work with ties" do
      longest_run([1, 2, 3, 7, 8, 4, 5, 6, 8, 9, 3, -1, 3]).must_equal(5)
    end


  end


end