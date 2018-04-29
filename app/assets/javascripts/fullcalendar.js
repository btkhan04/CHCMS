$(function() {

  $('#calendar').fullCalendar({
  	resourceAreaWidth: 230,
    editable: true,
    aspectRatio: 1.5,
    scrollTime: '00:00',
    header: {
      left: 'today prev,next',
      center: 'title',
      right: 'agendaDay,agendaSevenDay,month'
	    },

    defaultView: 'agendaWeek',
    views: {
         agendaSevenDay: {
            type: 'agenda',
            duration: { days: 7 },
            groupByResource: true
         }
	    },
      selectable: true,
      selectHelper: true,
      editable: true,
      eventLimit: true,
      events: '/shifts.json',

	  select: function(start_time, end_time) {
      $.getScript('/shifts/new', function() {});

      calendar.fullCalendar('unselect');
      },

      eventDrop: function(shift, delta, revertFunc) {
        shift_data = { 
          event: {
            id: shift.id,
            start: shift.start_time.format(),
            end: shift.end_time.format()
          }
        };
        $.ajax({
            url: shift.update_url,
            data: shift_data,
            type: 'PATCH'
        });
      },

      schedulerLicenseKey: 'CC-Attribution-NonCommercial-NoDerivatives'
  })
});
