SRCS	=	./src/docker-compose.yml
all:	up
up:
	
	#mkdir -p /home/yhakkach/data/wp
	#mkdir -p /home/yhakkach/data/db
	docker-compose -f $(SRCS) up --build -d
down:
	docker-compose -f $(SRCS) down

ps:
	docker-compose -f $(SRCS) ps

top:
	docker-compose -f $(SRCS) top
clean:
	docker-compose -f $(SRCS) down --rmi all -v
fclean:
	docker-compose -f $(SRCS) down --rmi all -v
	#rm -rf /Users/yhakkach/Desktop/data/

prune:	fclean
	docker system prune -f --all --volumes

.PHONY:	all up down ps top clean fclean prune