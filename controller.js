(function(aApp){
  var self = this;
  var namespace = {};

  function TesteDoisController($scope, $filter){
    var self = this;


    //TODO: Condigo do controller aqui


    ;(function($scope,$filter){
      SCOPE=$scope;
      FILTER=$filter;
    })($scope,$filter);
  }


  //TODO: Outras functions aqui


  var APP = aApp;
  var FILTER = null;
  var SCOPE = null;
  ;(function(aApp){
    try{
      aApp.component("testeDois",{
        template: "<div id='teste-dois'></div>",
        controller: TesteDoisController
      });
    }catch(e){
      console.info(e);
    }
  })(aApp);
})(window.app);
//V:1.0.0
