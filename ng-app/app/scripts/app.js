'use strict';

/** app level module which depends on services and controllers */
angular.module('tweeplus', ['tweeplus.services', 'tweeplus.controllers']);

/** services module initialization, allows adding services to module in multiple files */
angular.module('tweeplus.services', []);