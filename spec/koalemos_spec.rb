require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Koalemos" do
  
  describe "beginning_of_day" do
    it "should work" do
      Time.now.should respond_to(:beginning_of_day)
      Time.should respond_to(:beginning_of_day)
    end
  end
  
  
  describe "blank?" do
    it "should work" do
      nil.blank?.should be_true
      [].blank?.should be_true
      [1].blank?.should be_false
    end
  end
  
  describe "commaify" do
    it "should work for fixnum" do
      1234567890.commaify.should eql("1,234,567,890")
    end
    
    it "should work for float" do
      1234567890.1234567890.commaify.should eql("1,234,567,890.12346")
    end
  end
  
  describe "friendly time" do
    it "should work" do
      (Time.now - 1.day).friendly.should eql("1 day ago")
    end
  end
  
  describe "full" do
    it "should work" do
      nil.full?(:test){|p|p.inspect}.should be_nil
      "12".full?.should == "12"
      "12".full?(:to_i).should == 12
      12.full?{|n| n/2}.should == 6
      "13".full?(:to_f){|n| n/2}.should == 6.5
    end
  end
  
  describe "hash union" do
    it "should_work" do
      h1 = {:foo => 'foo',:bar => 'bar'}
      h1 |= {:foo => 'none',:baz => 'baz'}
      h1.should == {:foo => 'foo',:bar => 'bar',:baz => 'baz'}
    end
  end
  
  describe "num_to_time" do
    describe "number to seconds" do
      it "should convert times from fixnum" do
        1.minute.should eql(60)
        1.hour.should eql(60.minutes)
        1.day.should eql(24.hours)
        1.week.should eql(7.days)
        1.month.should eql(30.days)
      end

      it "should convert times from floats" do
        1.5.minutes.should eql(90.0)
        365.0.days.should eql(1.0.year)
      end
    end
    
    describe "getting time from number" do
      it "should get 1 day ago"
    end
  end
  
  describe "odd" do
    it "should work" do
      1.odd?.should be_true
      2.odd?.should be_false
    end
  end
  
  describe "rand" do
    it "pick should work" do
      [1].pick.should == 1
      a = [1,2,3]
      n = a.pick!
      n.should be_close(2, 1.1)
      newa = [1,2,3]
      newa.delete(n)
      a.should == (newa)
    end
    
    it "shuffle should work" do
      a = [*1..1000].shuffle
      a[0,2].should_not == [*1..2]
    end
  end
  
  describe "round_to" do
    it "should_work" do
      123.123.round_to.should == 123
      123.456.round_to.should == 123
      123.556.round_to.should == 124
      123.123.round_to(1).should == 123.1
      123.156.round_to(1).should == 123.2
    end
  end
  
  describe "symbol_to_proc" do
    it "should_work" do
      pending "need to find use"
      %w{1 2 3 4}.each(:to_i).should == [1,2,3,4]
    end
  end
  
  describe "uniq_by" do
    it "should work" do
      [ {:key => 'foo'},
        {:key => 'foo'},
        {:key => 'bar'},
        {:key => 'baz'},
        {:key => 'bbaz'}].uniq_by{|a| a[:key]}.
        should eql([{:key=>"bbaz"}, {:key=>"baz"}, {:key=>"foo"}, {:key=>"bar"}])
    end
  end
end
