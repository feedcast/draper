# Draper
> Don knows what you want to listen

## Intro

A basic recommendation system for podcasts running on [AWS Lambda](https://aws.amazon.com/lambda/).

## Showtime

We use [apex](https://apex.run) to manage the deployment of the lambda functions.

In order to setup apex, use: `make install`

**Remember to setup your AWS account using AWS CLI** (see [http://apex.run/#aws-credentials](http://apex.run/#aws-credentials))

### Deploy

In order to deploy the functions to AWS, use: `make deploy`.

### Run

To trigger the AWS functions, use: `make invoke_train`

Or, use `make train` to run it locally.
