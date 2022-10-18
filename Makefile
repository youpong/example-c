TARGET = test_calculator
SRCS = test_calculator.c calculator.c
OBJS = $(SRCS:.c=.o)

CFLAGS = -fprofile-arcs -ftest-coverage -O0
LDFLAGS = -lgcov

all: $(TARGET)

check: all
	./$(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $(LDFLAGS) $(OBJS) $(LDFLAGS)
