# `ahiv/config`
This package contains the configuration service and its protocol definition.

## Configuration Service

Ahiv configuration is stored in ZooKeeper and read/updated by contacting a MicroService.
Once a configuration property is updated, an event is fired into a designated kafka topic.

### Configuration Properties

Properties are named configuration entries, that are updated separately and stored
in a ZooKeeper node, which's path resembles the properties name.
A property consists of an immutable name and a mutable value. Names generally follow
following style: `ahiv.{component}.{setting}` where a dot separates the path.
The property value for `ahiv.edge.cientLimit` is stored in ZooKeeper under `config/ahiv/edge/clientLimit`. 

### Update Events

The microservice watches for update in `config/` and publishes them to a 
designated kafka topic id: `ahiv.cluster.events.config`.