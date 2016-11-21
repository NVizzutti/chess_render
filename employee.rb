class Employee
  attr_reader :salary

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    update_boss unless boss.nil?
  end

  def update_boss
    @boss.add_subordinate(self)
  end

  def bonus(multiplier)
    @bonus = @salary * multiplier #if self.class == Employee
  end

  def boss=(boss)
    @boss = boss
  end

end

class Manager < Employee
  attr_reader :subordinates

  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @subordinates = []
  end

  def add_subordinate(employee)
    @subordinates << employee
  end

  def salary_total
    total_of_subs = 0
    @subordinates.each do |subordinate|
      total_of_subs += subordinate.salary
      if subordinate.is_a?(Manager)
        total_of_subs += subordinate.salary_total
      end
    end
    total_of_subs
  end

  def bonus(multiplier)
    salary_total * multiplier
  #   total_of_subs = 0
  #   @subordinates.each do |subordinate|
  #     total_of_subs += subordinate.salary
  #     if subordinate.is_a?(Manager)
  #       subordinate.subordinates.each do |sub2|
  #         total_of_subs += sub2.salary
  #       end
  #     end
  #
  #   end
  #   total_of_subs * multiplier
  end

end
