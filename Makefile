CFLAGS = -g -Wall
LIBS = -lm

all: mttf-add birthday queue

MTTF_ADD_OBJS = mttf-add.o json.o
mttf-add: $(MTTF_ADD_OBJS)
	$(CC) $(CFLAGS) -o mttf-add $(MTTF_ADD_OBJS) -lm

BIRTHDAY_OBJS = birthday.o json.o
birthday: $(BIRTHDAY_OBJS)
	$(CC) $(CFLAGS) -o birthday $(BIRTHDAY_OBJS) -lm

QUEUE_OBJS = queue.o json.o
queue: $(QUEUE_OBJS)
	$(CC) $(CFLAGS) -o queue $(QUEUE_OBJS) -lm
clean:
	rm -f *~ *.o 
	rm -f mttf-add

