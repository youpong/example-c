TARGET = test_calculator
SRCS = test_calculator.c calculator.c
OBJS = $(SRCS:.c=.o)

CFLAGS = -std=c18 -Wall -Wextra -pedantic-errors

ifeq ($(COVERAGE_TEST), 1)
	CFLAGS += -fprofile-arcs -ftest-coverage -O0
	LDFLAGS = -lgcov
endif

all: $(TARGET)

clean:
	rm -f $(TARGET) $(OBJS) *.gcda *.gcno
check: all
	./$(TARGET)
gcov: check
	gcov $(SRCS)

$(TARGET): $(OBJS)
	$(CC) -o $@ $(LDFLAGS) $(OBJS) $(LDFLAGS)

.PHONY: all clean check gcov
