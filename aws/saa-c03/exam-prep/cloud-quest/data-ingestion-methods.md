### Data Ingestion Methods

- Apache Flink - transform and analyze streaming data in real time
- takes care of everything required to run streaming applications and scales automatically to match volume
- amazon kinesis data firehose reliably loads streaming data into data lakes, data stores and analytics services
  - near real time delivery
  - compressing data
- amazon glue - serverless data inegration service that helps you disciover, prepare, move and integrate data from multimple sources for analytics, ML and application development
  - data catalog - general repository to store stuctural and operation metadata for all your data assets/
  - 

#### solution request
- ingest, transform and analyze real-time data using amazon data firehose, aws lambda, aws glue and amazon athena

---

![image](https://github.com/user-attachments/assets/6b014d42-ad27-43f0-9f10-f7f57abe83ba)

---

#### practice lab goals
- create an amazon data firehose stream
- ingest and store clickstream data in an amazon s3 bucket
- transform ingested data by using aws lambda fuctions
- create real-time queries by using aws glue and amazon athena


