# training.concretecms.com

This repo contains the code for training and certification at concretecms.com.

## Installation Instructions.

1. Clone this repo.
2. Install dependencies by running `composer install`.
3. Install concrete5, making sure to select the `concrete_cms_training` starting point. Here is an example of installation via the command line.

`concrete/bin/concrete5 c5:install -vvv --db-server=localhost --db-database=concrete_cms_training --db-username=user --db-password=password --starting-point=concrete_cms_training --admin-email=your@email.com --admin-password=password`
