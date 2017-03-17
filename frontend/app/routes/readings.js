// app/routes/readings.js

import Ember from 'ember';

export default Ember.Route.extend({
    queryParams: {
    sensor_type: {
      refreshModel: true
    },
    startDate: {
      refreshModel: false
    },
    endDate: {
      refreshModel: true
    }

  },

  model(params) {
    return this.store.query('reading', params);
  }

});
