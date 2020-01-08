.DEFAULT_GOAL := start

setup:
	docker-compose build
	docker-compose run --rm web gem install bundler
	docker-compose run --rm web bundle install
	docker-compose run --rm web rake db:create db:migrate db:seed

start:
	if [ -f tmp/pids/server.pid ]; then\
		rm tmp/pids/server.pid;\
	fi
	docker-compose up

stop:
	docker-compose stop

console:
	docker-compose run --rm web rails c

update:
	docker-compose run --rm web bundle install
	docker-compose run --rm web rails db:migrate

migrate:
	docker-compose run --rm web rails db:migrate
	docker-compose run -e RAILS_ENV=test --rm web rails db:migrate

seed:
	docker-compose run --rm web rails db:seed

rollback:
	docker-compose run --rm web rails db:rollback
	docker-compose run -e RAILS_ENV=test --rm web rails db:rollback

test:
	docker-compose run -e RAILS_ENV=test --rm web bundle exec rspec

rubocop:
	docker-compose run --rm web bundle exec rubocop -a

annotate:
	docker-compose run --rm web bundle exec annotate

provision:
	ansible-playbook -i provisioning/inventory -l production --vault-password-file=provisioning/vault.key provisioning/playbook.yml

deploy:
	docker-compose run --rm web bundle exec cap production deploy
