import Ember from 'ember';

export default Ember.Route.extend({
    queryParams: {
    week: {
      refreshModel: true
    }
  },

  model(params) {
    //alert(params.week)
    //return this.get('store').findAll('planting',{include: 'plants'});
    return this.store.query('planting', params, {include: 'plants'});
  }
});
