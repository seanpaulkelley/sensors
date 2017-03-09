import DS from 'ember-data';

export default DS.Model.extend({
  //planting: DS.belongsTo('planting'),
  name: DS.attr('string'),
  distanceBetweenFrom: DS.attr('number'),
  distanceBetweenTo: DS.attr('number')
});
