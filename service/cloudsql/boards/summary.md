### Google Cloud SQL

[https://cloud.google.com/sql/docs](https://cloud.google.com/sql/docs)

Cloud SQL is a fully-managed database service that helps you set up, maintain, manage, and administer your relational databases on Google Cloud Platform.

### Use cases for Cloud SQL

Cloud SQL provides a cloud-based alternative to local MySQL, PostgreSQL, and SQL Server databases. You should use Cloud SQL if you want to spend less time managing your database and more time using it.

Many applications running on Compute Engine, App Engine and other services in Google Cloud use Cloud SQL for database storage

### What is a Cloud SQL instance?

Each Cloud SQL instance is powered by a virtual machine (VM) running on a host Google Cloud server. Each VM operates the database program, such as MySQL Server, PostgreSQL, or SQL Server, and service agents that provide supporting services, such as logging and monitoring. The high availability option also provides a standby VM in another zone with a configuration that's identical to the primary VM.

The database is stored on a scalable, durable network storage device called a persistent disk that attaches to the VM. A static IP address sits in front of each VM to ensure that the IP address an application connects to persists throughout the lifetime of the Cloud SQL instance.