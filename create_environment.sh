#!/bin/bash

mkdir -p submission_reminder_app/{app,modules,assets,config}

cd submission_reminder_app

cat /mnt/c/Users/USER/Downloads/reminder.sh > app/reminder.sh
cat /mnt/c/Users/USER/Downloads/functions.sh > modules/functions.sh
cat /mnt/c/Users/USER/Downloads/config.env > config/config.env
cat ../submissions.txt > assets/submissions.txt

echo -e "Uche, Shell Navigation, submitted\nUSER, Shell Navigation, not submitted\
	\nhervell, Shell Navigation, not submitted\nEmma, Shell Navigation, not submitted" >> assets/submissions.txt

chmod +x modules/functions.sh
chmod +x app/reminder.sh
chmod +x config/config.env
echo -e "#!/bin/bash\n./app/reminder.sh" > startup.sh && chmod +x startup.sh
