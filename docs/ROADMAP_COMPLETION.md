\# SMIS Development Roadmap and Completion Status



\## Project Overview



The School Management Information System (SMIS) is an evolving software development project built with Python, Django, Django REST Framework, and MySQL.



The roadmap tracks implemented functionality, verification activities, and planned improvements. A feature is considered complete only within the scope that has been implemented and tested; broader production readiness remains a separate goal.



\## 1. Requirements and Database Design — Foundation Completed



\- Identified the core student and academic record-management requirements.

\- Designed the initial relational data structure.

\- Implemented models for course providers, courses, intakes, students, and enrolments.

\- Established relationships between the core records.



\*\*Status:\*\* Core foundation implemented. Additional business requirements can be introduced as new modules are developed.



\## 2. MySQL Implementation — Core Connection Verified



\- Created and configured the `smis\_db` database.

\- Configured Django to connect to MySQL using environment variables.

\- Verified database connectivity from the Django environment.

\- Applied database migrations and checked migration status.



\*\*Status:\*\* Core database integration verified locally.



\## 3. SQL Development and Reporting — Ongoing Learning



\- Developed SQL scripts for reporting and database operations.

\- Practised relational queries and aggregation principles.

\- Documented the importance of aggregating related financial records separately to avoid inflated totals when joining one-to-many relationships.



\*\*Next steps:\*\*

\- Expand joins, subqueries, grouping, and conditional aggregation.

\- Build and verify more advanced reports using representative sample data.

\- Practise query optimization and execution-plan analysis.



\## 4. MySQL Administration — Initial Foundation Included



\- Included a database-user and permissions script.

\- Documented backup and restore procedures.

\- Established a foundation for separating application database access from administrative access.



\*\*Next steps:\*\*

\- Execute and verify backup and restore procedures.

\- Review least-privilege permissions.

\- Practise recovery and database maintenance using a test environment.



\## 5. Python Development — Continued Learning



Python supports the Django application and future automation work.



\*\*Next steps:\*\*

\- Strengthen functions, modules, exception handling, and file processing.

\- Practise working with CSV and JSON data.

\- Develop automation scripts for reporting and data validation.

\- Improve understanding of the existing application code so each component can be explained and maintained independently.



\## 6. Django Application — Core Foundation Implemented



\- Configured the Django project.

\- Implemented the core data models.

\- Created application views and URL routing.

\- Built a login-protected dashboard displaying counts of core records.

\- Integrated the application with MySQL.



\*\*Status:\*\* Core application functions verified locally.



\## 7. Authentication and Authorization — Initial Foundation Implemented



\- Added login protection for the dashboard.

\- Configured authenticated access for API operations.



\*\*Next steps:\*\*

\- Review permissions for individual API resources and actions.

\- Introduce role-based access for administrative, academic, and accounts staff where appropriate.

\- Expand authentication and authorization tests before deployment.



\## 8. REST API — Core Foundation Implemented



\- Integrated Django REST Framework.

\- Added endpoints for providers, courses, intakes, students, and enrolments.

\- Implemented serializers and CRUD operations.

\- Configured authentication.

\- Applied related-object query optimization where appropriate.

\- Documented the API and included supporting screenshots.



\*\*Status:\*\* Initial endpoints implemented and available for local testing.



\## 9. Advanced API Features — Planned Extensions



\- Improve filtering, searching, ordering, and pagination where required.

\- Add validation and clearer error responses.

\- Expand automated tests for permissions, invalid requests, and edge cases.

\- Review performance as the sample dataset grows.



\## 10. Testing and Troubleshooting — Initial Verification Completed



\- Ran Django system checks successfully.

\- Verified the MySQL connection.

\- Ran the existing automated tests successfully.

\- Checked migration status.

\- Documented setup and troubleshooting information.



\*\*Next steps:\*\*

\- Expand test coverage as new features are introduced.

\- Test invalid input, permission boundaries, and failure scenarios.

\- Repeat checks after changes to the models, API, or configuration.



\## 11. Git and GitHub — Publication Preparation



\- Initialized Git in the project directory.

\- Prepared `.gitignore` and `.env.example`.

\- Prepared project documentation and screenshots.

\- Reviewed source-control exclusions before publication.



\*\*Next steps:\*\*

\- Review staged files for credentials and private information.

\- Create the initial commit.

\- Create the GitHub repository and push the reviewed project.

\- Verify that the published repository contains the intended files.



\## 12. Portfolio Preparation — Documentation in Progress



\- Prepared a project README.

\- Documented the architecture and development roadmap.

\- Added screenshots and database administration notes.

\- Prepared a project story describing the current implementation and future development direction.



\*\*Next steps:\*\*

\- Finish reviewing the public documentation.

\- Ensure claims in the documentation match the code and verified behavior.



\## 13. Future Functional Modules



The following are planned extensions, not claims of completed Django functionality:



\- Fee structures, payments, balances, and financial reporting.

\- Examinations, results, and attendance.

\- Graduation tracking and certificate issuance.

\- Role-based permissions for different institutional responsibilities.

\- A public-facing school website integrated with the SMIS through suitable API endpoints.

\- Secure deployment, production configuration, logging, monitoring, and recovery procedures.



\## Learning Approach



The project is an evolving practical learning environment. Implementation scaffolding provides a starting point, but development should continue through guided practice, testing, troubleshooting, and explanation of the code.



The goal is to build a maintainable application while developing the ability to explain its architecture, database design, API behavior, security controls, and operational requirements.



\## Completion Principle



Completion is measured against implemented and verified functionality, not the number of items listed in the roadmap. As features are built and tested, this document should be updated to reflect the actual state of the project.
