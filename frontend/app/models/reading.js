import DS from 'ember-data';

export default DS.Model.extend({
  sensor_type: DS.attr('string'),
  value: DS.attr('number'),
  //created_at: DS.attr('string'),
  created_at: DS.attr('utc')
});
