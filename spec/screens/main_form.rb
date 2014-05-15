class MainForm
  include Mohawk
  window title: /MainForm/

  button(:about, id: 'aboutButton')
  button(:data_entry_form, value: 'Data Entry Form')

  checkbox(:checkbox, id: 'checkBox')

  control(:month_calendar, id: 'automatableMonthCalendar1')
  control(:about_control, id: 'aboutButton')
end