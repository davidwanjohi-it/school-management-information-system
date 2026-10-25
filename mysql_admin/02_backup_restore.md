# Backup and Restore

Backup:
```bash
mysqldump -u root -p smis_db > smis_db_backup.sql
```

Restore:
```bash
mysql -u root -p smis_db < smis_db_backup.sql
```

Verify backups by restoring into a test database.
