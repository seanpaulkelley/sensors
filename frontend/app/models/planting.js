import DS from 'ember-data';

export default DS.Model.extend({
  plant: DS.belongsTo('plant'),
  plantingType: DS.attr('string'),
  plantingDateBegin: DS.attr('utc'),
  plantingDateEnd: DS.attr('utc'),
  distanceBetweenFrom: DS.attr('number'),
  distanceBetweenTo: DS.attr('number'),
  daysToHarvestFrom: DS.attr('number'),
  daysToHarvestTo: DS.attr('number'),
  startIndoors: DS.attr('boolean'),
  plantId: DS.attr('number')
});
