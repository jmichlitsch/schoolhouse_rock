class School

#query method: no long lasting change is being made, just asking universe for some information.
  attr_reader :start_time ,
              :hours_in_school_day,
              :student_names
  def initialize(start_time,hours_in_day)
      @start_time = start_time
      @hours_in_school_day = hours_in_day
      @student_names = []
  end

#Command methond: makes some change in universe
  def add_student_name(name)
    @student_names << name
  end

  def end_time
    "#{@start_time.to_i + @hours_in_school_day}:00"
  end

  def is_full_time?
    @hours_in_school_day > 4
    end

    def standard_student_names
      capitalized_names = []
      @student_names.each do |name|
        capitalized_names << name.capitalize
      end

      capitalized_names
    end
  end
