import Ember from 'ember';
export default Ember.Controller.extend({

  queryParams: ['sensor_type'],
  sensor_type: 'soil',
  prettyDate: Ember.computed('model', function(){
    return this.get('model.created_at');
  }),

  valueData: Ember.computed('model', function(){
   return {
      labels: this.get('model').mapBy('created_at'),
      datasets: [{
        label: 'Readings',
        data: this.get('model').mapBy('value')
      }]
    };
  }),
   
  lineOptions: {
    scales: {
            xAxes: [{
                type: 'time',
                time: {
                    displayFormats: {
                        hour:'MM/DD/YY HH:MM'
                    }//,
                //unit: 'minute'   
                }
            }]
        }
  }

});
