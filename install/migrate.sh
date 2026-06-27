#!/usr/bin/env bash

MIGRATION_FOLDER=./migrations
MIGRATED_FOLDER=${MIGRATION_FOLDER}/executed

mkdir -p $MIGRATION_FOLDER
mkdir -p $MIGRATED_FOLDER

execute() {
	local migrations=$(ls -prt ${MIGRATION_FOLDER} | grep -v /)

	for migration in "${migrations[@]}"; do

		echo runing migration $migration

		${MIGRATION_FOLDER}/./${migration}

		mv ${MIGRATION_FOLDER}/${migration} ${MIGRATED_FOLDER}/. 

	done
}

create() {
	local datetime=$(date +%Y%m%d%H%M%S)
	local migration_file=${MIGRATION_FOLDER}/migration_$datetime.sh
	echo "#!/usr/bin/env bash" >> ${migration_file}
	chmod +x ${migration_file}
	vim ${migration_file}
}

pending() {
	local pending_migrations=$(ls -prt ${MIGRATION_FOLDER} | grep -v /)
	echo pending migrations
	for pending in "${pending_migrations[@]}"; do
		echo " - ${pending}"
	done
}

last_executed=$(ls -lpt migrations/executed | awk 'NR>1 {print $9}' | head -n 1)

rerun-last() {
	echo re-running migration $last_executed
	${MIGRATED_FOLDER}/./${last_executed}
}

edit-last() {
	vim ${MIGRATED_FOLDER}/${last_executed}
}

