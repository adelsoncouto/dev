#!/data/data/com.termux/files/usr/bin/bash

# Este arquivo vai gerar a estrutura base de um cntroller

# Verifico se o arquivo já existe

if [ -f "./controller.js" ]; then
  
  echo -e "Controller já existe neste diretório"

  exit -1

fi

CONTROLLER=`echo $1 | awk '{print toupper(substr($0,1,1))substr($0,2,1024)}'`

CONTROLLER+="Controller"

COMPONENT=`echo $1 | awk '{print tolower(substr($0,1,1))substr($0,2,1024)}'`

ID=`echo $1 | sed 's/[A-Z]/-&/g;s/^-//' | awk '{print tolower($0)}'`


echo -e "(function(aApp){" >> controller.js

echo -e "  var self = this;" >> controller.js

echo -e "  var namespace = {};\n" >> controller.js

echo -e "  function $CONTROLLER(\$scope, \$filter){" >> controller.js

echo -e "    var self = this;" >> controller.js

echo -e "\n\n    //TODO: Condigo do controller aqui\n\n" >> controller.js


echo -e "    ;(function(\$scope,\$filter){" >> controller.js

echo -e "      SCOPE=\$scope;" >> controller.js

echo -e "      FILTER=\$filter;" >> controller.js

echo -e "    })(\$scope,\$filter);" >> controller.js

echo -e "  }" >> controller.js

echo -e "\n\n  //TODO: Outras functions aqui\n\n" >> controller.js

echo -e "  var APP = aApp;" >> controller.js
echo -e "  var FILTER = null;" >> controller.js
echo -e "  var SCOPE = null;" >> controller.js

echo -e "  ;(function(aApp){" >> controller.js

echo -e "    try{" >> controller.js

echo -e "      aApp.component(\"$COMPONENT\",{" >> controller.js

echo -e "        template: \"<div id='$ID'></div>\"," >> controller.js

echo -e "        controller: $CONTROLLER" >> controller.js

echo -e "      });" >> controller.js

echo -e "    }catch(e){" >> controller.js

echo -e "      console.info(e);" >> controller.js

echo -e "    }" >> controller.js

echo -e "  })(aApp);" >> controller.js

echo -e "})(window.app);" >> controller.js

echo -e "//V:1.0.0" >> controller.js

