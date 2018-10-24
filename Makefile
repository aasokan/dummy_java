.PHONY: package all clean test

export MVN := ./mvnw

all:
	@echo "hello"

package: clean
	$(MVN) package -DskipTests

test: package
	$(MVN) test

clean:
	$(MVN) clean