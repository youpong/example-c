TARGET = test_calculator
SRCS = test_calculator.c calculator.c
OBJS = $(SRCS:.c=.o)

CFLAGS = -fprofile-arcs -ftest-coverage -O0
LDFLAGS = -lgcov

all: $(TARGET)

check: all
	./$(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LDFLAGS)

# -o test_calculator test_calculator.c calculator.c
