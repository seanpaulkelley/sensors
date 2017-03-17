import Ember from 'ember';
import moment from 'moment';
export default Ember.Controller.extend({
  queryParams: ['sensor_type'],
  sensor_type: 'soil', 


  //https://stackoverflow.com/questions/39326582/ember-cli-bootstrap-date-picker-wrong-format-while-using-queryparam

  startDate: null,
  endDate: null,


  startDateToJSDate: Ember.computed('startDate', {
    get(key) {
      return this.get('startDate') ? moment(this.get('startDate')).toDate() : null;
    },
    set(key, value) {
      this.set('startDate', value ? moment(value).format('YYYY-MM-DDTHH:mm:ssZ') : '');
      return value;
    }
  }),
  endDateToJSDate: Ember.computed('endDate', {
    get(key) {
      //2017-03-17 04:31:01.327344
      return this.get('endDate') ? moment(this.get('endDate')).toDate() : null;
    },
    set(key, value) {
      this.set('endDate', value ? moment(value).format('YYYY-MM-DDTHH:mm:ssZ') : '');
      return value;
    }
  }),
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
                    },
                unit: 'hour'   
                },
                ticks: {
                  autoSkip: true,
                  maxTicksLimit: 20
                } 
            }]
        }
  }, 
 actions: {
    searchOn() {
     this.set('dateSearch', true);
    },
    resetSearch() {
     this.set('startDate', '');
     this.set('endDate', '');
    }

  }

});
