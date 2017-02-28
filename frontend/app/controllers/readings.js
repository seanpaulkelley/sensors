import Ember from 'ember';
export default Ember.Controller.extend({
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
