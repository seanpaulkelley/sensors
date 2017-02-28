// app/routes/readings.js

import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    // return this.store.findAll('reading');
    
    //return this.store.query('reading', { filter: { sensor_type: 'soil' } })
    
    return this.store.query('reading', {sensor_type: 'soil' });

  }
});
