
BIN = ./node_modules/.bin
SRC = $(wildcard src/**/*.coffee src/*.coffee)
LIB = $(SRC:src/%.coffee=lib/%.js)

build: $(LIB)

lib/%.js: src/%.coffee
	@mkdir -p $(@D)
	@$(BIN)/coffee -bcp $< > $@

clean:
	@rm -f $(LIB)
 
install:
	@npm $@

selenium:
	@java -jar /usr/local/opt/selenium-server-standalone/selenium-server-standalone-2.38.0.jar -p 4444

test:
	@NODE_ENV=TEST $(BIN)/mocha ${params}

testcov:
	@NODE_ENV=TEST $(BIN)/istanbul cover $(BIN)/_mocha

.PHONY: clean install selenium test
