TARGET := test_calculator
SRCS := $(wildcard *.c)
OBJS := $(SRCS:.c=.o)

CFLAGS := -std=c18 -Wall -Wextra -pedantic-errors

ifeq ($(COVERAGE_TEST), 1)
	CFLAGS += -fprofile-arcs -ftest-coverage -O0
	LIBS += -lgcov
endif

all: $(TARGET)

clean:
	rm -f $(TARGET) $(OBJS) *.gcda *.gcno
check: all
	./$(TARGET)
	@echo "Test Passed"
gcov: check
	gcov $(SRCS)

$(TARGET): $(OBJS)
	$(CC) -o $@ $(LDFLAGS) $(OBJS) $(LIBS)

.PHONY: all clean check gcov
