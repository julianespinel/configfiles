echo "***** Begin Autheo process *****"
echo "Generate Autheo jar."
cd autheo
mvn clean compile package install
cd scripts
sh generate-and-install-client-jar.sh
cd ..
cd ..

echo "***** Begin Logger process *****"
echo "Generate Logger jar."
cd logger
mvn clean compile package install
cd scripts
sh generate-and-install-log-queue-consumer-jar.sh
cd ..
cd ..

echo "***** Begin Parametri process *****"
echo "Generate Parametri jar."
cd parametri
mvn clean compile package install
cd scripts
sh generate-and-install-client-jar.sh
cd ..
cd ..

echo "***** Begin Oms process *****"
echo "Generate Oms jar."
cd oms
mvn clean compile package install
cd ..

echo "***** Begin VtexConnector process *****"
echo "Generate VtexConnector jar."
cd vtex-connector
cd lib
sh install-vtex-soap-client.sh
cd ..
mvn clean compile package install
cd ..

echo "***** Begin Inventory process *****"
echo "Generate Inventory jar."
cd inventory
mvn clean compile package install
cd ..

echo "***** Begin Listing process *****"
echo "Generate Listing jar."
cd listing
mvn clean compile package install
cd ..

echo "***** Begin MercadoLibre process *****"
echo "Generate MercadoLibre jar."
cd mercado-libre-connector
mvn clean compile package install
cd ..

echo "***** Begin Sentinel process *****"
echo "Generate Sentinel jar."
cd sentinel
mvn clean compile package install
cd ..

echo "***** Begin Mofficer process *****"
echo "Generate Mofficer jar."
cd mofficer
lein uberjar
cd ..

echo "***** Begin Postal process *****"
echo "Generate Postal jar."
cd postal
mvn clean compile package install
cd ..

echo "***** Begin Catalog process *****"
echo "Generate Catalog jar."
cd catalog
mvn clean compile package install
cd ..

echo "***** Begin e3ui process *****"
echo "Install e3ui."
cd e3ui
cd public
bower install
cd ..
cd shells
sh minify-angular-files.sh
cd ..
npm install
cd ..

echo "Shut down Autheo."
pid=`ps aux | grep autheo | awk '{print $2}'`
kill -9 $pid
echo "Start Autheo."
java -jar autheo/target/autheo-1.0-SNAPSHOT.jar server autheo/autheo-develop.yml &
echo "***** Finish Autheo process *****"

echo "Shut down Logger."
pid=`ps aux | grep logger | awk '{print $2}'`
kill -9 $pid
echo "Start Logger."
java -jar logger/target/logger-1.0-SNAPSHOT.jar server logger/logger-develop.yml &
echo "***** Finish Logger process *****"

echo "Shut down Parametri"
pid=`ps aux | grep parametri | awk '{print $2}'`
kill -9 $pid
echo "Start Parametri."
java -jar parametri/target/parametri-1.0-SNAPSHOT.jar server parametri/parametri-develop.yml &
echo "***** Finish Parametri process *****"

echo "Shut down Oms."
pid=`ps aux | grep oms | awk '{print $2}'`
kill -9 $pid
echo "Start Oms."
java -jar oms/target/oms-1.0-SNAPSHOT.jar server oms/oms-develop.yml &
echo "***** Finish Oms process *****"

echo "Shut down VtexConnector."
pid=`ps aux | grep vtex | awk '{print $2}'`
kill -9 $pid
echo "Start VtexConnector."
java -jar vtex-connector/target/vtex-connector-1.0-SNAPSHOT.jar server vtex-connector/vtex-connector-develop.yml &
echo "***** Finish VtexConnector process *****"

echo "Shut down Inventory."
pid=`ps aux | grep inventory | awk '{print $2}'`
kill -9 $pid
echo "Start Inventory."
java -jar inventory/target/inventory-1.0-SNAPSHOT.jar server inventory/inventory-develop.yml &
echo "***** Finish Inventory process *****"

echo "Shut down Listing"
pid=`ps aux | grep listing | awk '{print $2}'`
kill -9 $pid
echo "Start Listing."
java -jar listing/target/listing-1.0-SNAPSHOT.jar server listing/listing-develop.yml &
echo "***** Finish Listing process *****"

echo "Shut down MercadoLibre"
pid=`ps aux | grep mercado | awk '{print $2}'`
kill -9 $pid
echo "Start MercadoLibre"
java -jar mercado-libre-connector/target/mercado-libre-connector-1.0-SNAPSHOT.jar server mercado-libre-connector/mercado-libre-connector-develop.yml &
echo "***** Finish MercadoLibre process *****"

echo "Shut down Sentinel"
pid=`ps aux | grep sentinel | awk '{print $2}'`
kill -9 $pid
echo "Start Sentinel"
java -jar sentinel/target/sentinel-1.0-SNAPSHOT.jar server sentinel/sentinel-develop.yml &
echo "***** Finish Sentinel process *****"

echo "Shut down Mofficer"
pid=`ps aux | grep mofficer | awk '{print $2}'`
kill -9 $pid
echo "Start Mofficer"
java -jar mofficer/target/mofficer-1.0-SNAPSHOT-standalone.jar &
echo "***** Finish Mofficer process *****"

echo "Shut down Postal"
pid=`ps aux | grep postal | awk '{print $2}'`
kill -9 $pid
echo "Start Postal"
java -jar postal/target/postal-1.0-SNAPSHOT.jar server postal/postal-develop.yml &
echo "***** Finish Postal process *****"

echo "Shut down Catalog"
pid=`ps aux | grep catalog | awk '{print $2}'`
kill -9 $pid
echo "Start Catalog"
java -jar catalog/target/catalog-1.0-SNAPSHOT.jar server catalog/catalog-develop.yml &
echo "***** Finish Postal process *****"

echo "Shut down e3ui."
pid=`ps aux | grep server.js | awk '{print $2}'`
kill -9 $pid
echo "Start e3ui."
cd e3ui
npm start &
cd ..
echo "***** Finish e3ui process *****"
