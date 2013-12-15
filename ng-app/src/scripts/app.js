'use strict';

/** app level module which depends on services and controllers */
angular.module('tweeplus',['ngResource','tweeplus.services', 'tweeplus.controllers', 'tweeplus.directives', 'tweeplus.filters']);

/** services module initialization, allows adding services to module in multiple files */
angular.module('tweeplus.services', []);