import Ember from 'ember';
export default Ember.Controller.extend({

  queryParams: ['sensor_type'],
  sensor_type: 'soil',

  valueData: Ember.computed('model', function(){
    
    return {
      labels: this.get('model').mapBy('created_at'),
      datasets: [{
        label: 'Readings',
        data: this.get('model').mapBy('value')
      }]
    };
  })

});
