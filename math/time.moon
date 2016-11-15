class
  new: (@hours, @minutes) =>

  @from_minutes: (n) =>
    Time (math.floor n / 60), n % 60

  @concat: =>
    "%d:%d"\format @hours, @minutes

  __add: (time) =>
    Time @hours + time.hours, @minutes + time.minutes

  __sub: (time) =>
    Time @hours - time.hours, @minutes - time.minutes

  __mul: (time) =>
    Time @hours * time.hours, @minutes * time.minutes

  __neg: (time) =>
    Time -@hours, -@minutes

  @hours_minutes: (n) =>
    "%d:%d"\format (math.floor n / 60), n % 60
