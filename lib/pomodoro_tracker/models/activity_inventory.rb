module PomodoroTracker
  class ActivityInventory
    include Enumerable

    attr_reader :activities

    def initialize
      @activities = Set.new
    end

    def add(activity)
      @activities << activity
    end

    def <<(activity)
      @activities << activity
      self
    end

    def remove(activity)
      @activities.delete(activity)
    end

    def size
      @activities.size
    end

    def empty?
      @activities.empty?
    end

    def each(&blk)
      @activities.each(&blk)
    end
    
    def todo_today
      @activities.select{|activity| activity.done_today?}
    end

  end
end

