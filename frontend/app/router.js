import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('readings', { path: '/' });
  //this.route('readings', { path: '/readings/:sensor_type' });
  this.route('plants', { path: '/plant-list' });
  this.route('plantings', { path: '/plant-dates' });
  this.route('about');
});

export default Router;
