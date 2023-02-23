const opentelemetry = require("@opentelemetry/api");
const { Resource } = require("@opentelemetry/resources");
const { SemanticResourceAttributes } = require("@opentelemetry/semantic-conventions");
const { NodeTracerProvider } = require("@opentelemetry/sdk-trace-node");
const { registerInstrumentations } = require("@opentelemetry/instrumentation");
const { ConsoleSpanExporter, BatchSpanProcessor } = require("@opentelemetry/sdk-trace-base");
const { SimpleSpanProcessor } = require('@opentelemetry/sdk-trace-base');

const resource = new Resource({
    [SemanticResourceAttributes.SERVICE_NAME]: "front-end",
    [SemanticResourceAttributes.SERVICE_VERSION]: "0.2.2",
})

//Create the OLTP exporter to Observe

const {getNodeAutoInstrumentations} = require("@opentelemetry/auto-instrumentations-node");
const {OTLPTraceExporter} = require("@opentelemetry/exporter-trace-otlp-http");
const opentelemetry2 = require("@opentelemetry/sdk-node");

const traceExporter = new OTLPTraceExporter({
  url: "http://observe-traces.observe.svc.cluster.local:4318/v1/traces",
  headers: {},
});


const sdk = new opentelemetry2.NodeSDK({
    resource: resource,
    instrumentations: [getNodeAutoInstrumentations()],
    traceExporter: traceExporter
  });
  
  try {
    sdk.start();
    console.log("Tracing initialized");
  }
  catch (e) {
    console.log("Error initializing tracing", e);
  }
  finally {
    console.log("entering and leaving the finally block");
  }
 
  const process = require("process");
  process.on("SIGTERM", () => {
    sdk
        .shutdown()
        .then(() => console.log("Tracing terminated"))
        .catch((error) => console.log("Error terminating tracing", error))
        .finally(() => process.exit(0));
  });

// End exporter to Observe

//Think of a provider as a wrapper that wraps every inbound request with tracing.

const provider = new NodeTracerProvider({
    resource: resource,
    // This registers all instrumentation packages [using getNodeAutoInstrumentations()]
    // https://www.npmjs.com/package/@opentelemetry/auto-instrumentations-node
    instrumentations: [getNodeAutoInstrumentations()]
});

// If you want to send batches of traces to the console use BatchSpanProcessor
//const exporter = new ConsoleSpanExporter();
//const processor = new BatchSpanProcessor(exporter);
// If you want to send every span to console, as it comes over, use SimpleSpanProcessor
//const processor = new SimpleSpanProcessor(exporter));

//But we want to send batches of traces to OTLP Trace Exporter (Observe's)
//The list after traceExporter is not required, documenting in case it's needed

const processor = new BatchSpanProcessor(traceExporter 
    //, { 
    // The maximum queue size. After the size is reached spans are dropped.
    // maxQueueSize: 100,
    // The maximum batch size of every export. It must be smaller or equal to maxQueueSize.
    // maxExportBatchSize: 10,
    // The interval between two consecutive exports
    // scheduledDelayMillis: 500,
    // How long the export can run before it is cancelled
    // exportTimeoutMillis: 30000,}
    );
provider.addSpanProcessor(processor);
provider.register();










