# School Management Information System (SMIS)

## Project Story and Future Development Plan

### Project Overview

The School Management Information System (SMIS) is a personal software development project exploring how a training institution can manage student information, courses, intakes and enrolments through a relational database and a web application.

The project combines MySQL database design, SQL, Python, Django and Django REST Framework. The goal is to develop the system incrementally, test each component, document the implementation and expand it towards a more complete school management platform.

### What I Have Implemented

The current application includes:

- **Relational database:** MySQL connectivity and structured data models for core academic records.
- **Course management:** Course providers and courses, allowing courses to be organized by provider.
- **Student records:** Student information managed through the Django application.
- **Intake management:** Records of academic or training intakes.
- **Enrolments:** Relationships connecting students with the relevant courses and intakes.
- **Web dashboard:** A login-protected dashboard displaying counts of students, courses, intakes and enrolments.
- **REST API:** Django REST Framework endpoints for core records, supporting authentication and CRUD operations.
- **Database administration:** SQL scripts and documentation covering application database access, permissions, backup and restore procedures.
- **Testing and documentation:** Django system checks, database connection verification, automated tests and project setup documentation.
- **Version control:** Git-based change tracking and a public GitHub repository documenting the project.

The application has been developed and tested locally. Repository documentation and screenshots provide supporting evidence of the current implementation.

### Technical Approach

The project follows a practical development workflow:

1. Design the database structure and relationships.
2. Implement Django models and database integration.
3. Build application views and API endpoints.
4. Test functionality and troubleshoot errors.
5. Document configuration, setup and database administration.
6. Track changes with Git and maintain the project on GitHub.

This workflow helps develop an understanding of how database design, authentication, API development, testing, documentation and deployment preparation fit together in a real application project.

### Planned Future Development

The current application is a foundation, not a finished commercial school management system. The following improvements are planned as separate development milestones.

#### 1. Finance and Payments

- Introduce configurable fee structures.
- Record student payments and payment history.
- Calculate outstanding balances and generate fee collection reports.

#### 2. Academic Records

- Add examination records and results.
- Introduce attendance tracking.
- Generate academic performance and attendance reports.

#### 3. Graduation and Certificates

- Track course completion and graduation status.
- Record certificate issuance.
- Implement and test eligibility rules, including outstanding-balance checks where required.

#### 4. User Roles and Permissions

- Develop role-based access for administrative, academic and accounts staff.
- Restrict sensitive functions and records according to each user's responsibilities.
- Expand authentication and authorization testing.

#### 5. Reporting and Database Performance

- Build more advanced SQL reports and dashboard summaries.
- Review indexes, query execution plans and data integrity.
- Test larger sample datasets and improve performance where needed.

#### 6. Public Website and API Integration

- Develop a separate public-facing website for prospective students.
- Present institution information, courses, admissions guidance and relevant announcements.
- Integrate the public website with the SMIS through API endpoints where appropriate.
- Keep public information separate from private student and administrative records.

#### 7. Deployment and Operational Readiness

- Prepare a secure deployment configuration.
- Separate development and production settings.
- Improve logging, error handling, backup and recovery procedures.
- Add deployment documentation and repeatable testing.

### Current Status and Direction

The core Django application, MySQL connection, dashboard and initial REST API have been implemented and have passed the current local checks and tests. Additional business modules, expanded permissions, production deployment and public website integration remain future work unless separately documented as completed.

The long-term goal is to develop this foundation into a more complete, maintainable and secure school management platform while building practical skills in backend development, database engineering, API integration and application operations.

This is an evolving personal project. Features will be added and verified in stages, and the documentation will be updated to distinguish implemented functionality from planned improvements.

---

**Author:** David Wanjohi Rubucwa  
**Project repository:** [School Management Information System (SMIS)](https://github.com/davidwanjohi-it/school-management-information-system)

Copyright © 2026 David Wanjohi Rubucwa. All rights reserved.

The original project code and documentation may not be reproduced, redistributed, modified or used commercially without written permission, except where permitted by applicable law. Third-party components remain subject to their respective licenses.
