class Student

    def initialize
        @schedule = Schedule.new
    end

    def remove_from_schedule(course, quarter_id)
        @schedule.remove(course, quarter_id)
    end

    def add_to_schedule(course, quarter_id)
        @schedule.add(course, quarter_id)
    end
end

class CourseList

    MAX_COURSES = 5

    def initialize
        @courses = []
    end
    def add(course)
        if @courses.size < MAX_COURSES
            @courses << course
        else
            raise Exception.new("Too many courses")
        end
    end
    def remove(course)
        @courses.delete(course)
    end
end

class Schedule
    year = [CourseList.new, CourseList.new, CourseList.new, CourseList.new]
    def remove(course, quarter_id)
        year[quarter_id].remove(course)
    end
    def add(course, quarter_id)
        year[quarter_id].add(course)
    end
end