\# SMIS Architecture



\## Overview



The School Management Information System (SMIS) is a Python and Django project backed by MySQL. It combines a web dashboard, relational data models, and a REST API to manage core student and academic records.



The current implementation provides a foundation for expanding the system into a more complete school management platform.



\## Application Layers



\### 1. Database Layer — MySQL

\- Stores structured data in a relational database.

\- Maintains relationships between course providers, courses, intakes, students, and enrolments.

\- Supports SQL queries and database administration tasks.



\### 2. Application Layer — Django

\- Handles application configuration, URL routing, views, and authentication.

\- Implements the core data models and application logic.

\- Provides a login-protected dashboard showing counts of students, courses, intakes, and enrolments.



\### 3. API Layer — Django REST Framework

\- Exposes API endpoints for the core application records.

\- Uses serializers to represent model data as JSON.

\- Provides authenticated CRUD operations through API viewsets.

\- Uses related-object query optimization where appropriate.



\### 4. Testing and API Tools

\- Django's test framework is used to verify application behaviour.

\- Postman can be used to send requests and inspect API responses.

\- Django system checks and database connection tests help verify the local environment.



\### 5. Source Control and Documentation

\- Git tracks changes to the source code.

\- GitHub is used to publish the project and demonstrate its development.

\- Project documentation records setup instructions, architecture, database administration, and planned improvements.



\## Core Data Models



The current application includes five principal models:



\- \*\*CourseProvider\*\* — represents a provider associated with courses.

\- \*\*Course\*\* — represents a course offered through a provider.

\- \*\*Intake\*\* — represents a course intake.

\- \*\*Student\*\* — stores student records.

\- \*\*Enrollment\*\* — connects students with the relevant academic intake and course structure.



The models define the current data structure. Additional areas, including fees, payments, examinations, attendance, graduation, and certificate issuance, are planned extensions unless separately implemented and verified.



\## Request and Data Flow



1\. A user accesses the Django web application or an API endpoint.

2\. Django routes the request to the relevant view or API viewset.

3\. Authentication and applicable permissions are checked.

4\. The application retrieves or updates data through the Django ORM.

5\. MySQL stores or returns the requested records.

6\. The application returns an HTML response for the web interface or a JSON response for the API.



\## Database Design and Reporting Principles



Future finance and academic reporting modules should follow these principles:



\- Maintain clear relationships between records and enforce data integrity.

\- Use appropriate constraints and indexes as the data model grows.

\- Aggregate fees and payments separately before joining aggregated results. Joining raw fee and payment rows directly can multiply values and produce incorrect totals when a fee has multiple payment records.

\- Treat graduation status and certificate issuance as separate business concepts if those modules are introduced.

\- Define and test outstanding-balance rules before using them to restrict certificate issuance.



These are database design and future implementation principles, not claims that the corresponding finance or certificate modules are already active in the current Django application.



\## Security and Configuration



\- Store the Django secret key and database credentials in environment variables.

\- Keep the `.env` file and virtual environments out of source control.

\- Use authenticated access for protected application and API functions.

\- Apply appropriate database permissions to the application account.

\- Configure production security settings separately before deploying the application publicly.



\## Current Status



The current project includes the Django application, MySQL connectivity, core data models, a login-protected dashboard, REST API endpoints, automated tests, and supporting documentation.



Finance, payments, examinations, attendance, graduation, certificates, advanced reporting, and public-facing website integration remain planned extensions unless explicitly documented and tested as completed.
