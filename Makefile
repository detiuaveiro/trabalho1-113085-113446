# make              # to compile files and create the executables
# make pgm          # to download example images to the pgm/ dir
# make setup        # to setup the test files in test/ dir
# make tests        # to run basic tests
# make clean        # to cleanup object files and executables
# make cleanobj     # to cleanup object files only

CFLAGS = -Wall -O2 -g

PROGS = imageTool imageTest

TESTS = test1 test2 test3 test4 test5 test6 test7 test8 test9 test10 \
        test11 test12 test13 test14 test15 test16 test17 test18 test19 test20 \
        test21 test22 test23 test24 test25 test26 test27 test28 test29 test30 \
        test31 test32 test33 test34 test35 test36 test37 test38 test39 test40 \
        test41 test42 test43 test44 test45 test46 test47 test48 test49 test50 \
        test51 test52 test53 test54 test55 test56 test57 test58 test59 test60 \
        test61 test62 test63 test64 test65 test66 test67 test68 test69 test70 \
        test71 test72 test73 test74 test75 test76 test77 test78 test79 test80 \
        test81 test82 test83 test84 test85 test86 test87 test88 test89 test90 \
        test91 test92 test93 test94 test95 test96 test97 test98 test99 test100 \
		test101 test102 test103


# Default rule: make all programs
all: $(PROGS)

imageTest: imageTest.o image8bit.o instrumentation.o error.o

imageTest.o: image8bit.h instrumentation.h

imageTool: imageTool.o image8bit.o instrumentation.o error.o

imageTool.o: image8bit.h instrumentation.h

# Rule to make any .o file dependent upon corresponding .h file
%.o: %.h

pgm:
	wget -O- https://sweet.ua.pt/jmr/aed/pgm.tgz | tar xzf -

.PHONY: setup
setup: test/

test/:
	wget -O- https://sweet.ua.pt/jmr/aed/test.tgz | tar xzf -
	@#mkdir -p $@
	@#curl -s -o test/aed-trab1-test.zip https://sweet.ua.pt/mario.antunes/aed/test/aed-trab1-test.zip
	@#unzip -q -o test/aed-trab1-test.zip -d test/

test1: $(PROGS) setup
	./imageTool pgm/large/ireland-06-1200x1600.pgm tic blur 1,1 save blur.pgm toc

test2: $(PROGS) setup
	./imageTool pgm/large/ireland-06-1200x1600.pgm tic blur 2,2 save blur.pgm toc
test3: $(PROGS) setup
	./imageTool pgm/large/ireland-06-1200x1600.pgm tic blur 3,3 save blur.pgm toc

test4: $(PROGS) setup
	./imageTool pgm/large/ireland-06-1200x1600.pgm tic blur 4,4 save blur.pgm toc

test5: $(PROGS) setup
	./imageTool pgm/large/ireland-06-1200x1600.pgm tic blur 5,5 save blur.pgm toc

test6: $(PROGS) setup
	./imageTool pgm/large/ireland-06-1200x1600.pgm tic blur 6,6 save blur.pgm toc

test7: $(PROGS) setup
	./imageTool pgm/large/ireland-06-1200x1600.pgm tic blur 7,7 save blur.pgm toc

test8: $(PROGS) setup
	./imageTool pgm/large/ireland-06-1200x1600.pgm tic blur 8,8 save blur.pgm toc

test9: $(PROGS) setup
	./imageTool pgm/large/ireland-06-1200x1600.pgm tic blur 9,9 save blur.pgm toc
	
test10: $(PROGS) setup
	./imageTool pgm/large/ireland-06-1200x1600.pgm tic blur 10,9 save blur.pgm toc

test11: $(PROGS) setup
	./imageTool pgm/large/einstein_940x940.pgm tic blur 1,1 save blur.pgm toc

test12: $(PROGS) setup
	./imageTool pgm/large/einstein_940x940.pgm tic blur 2,2 save blur.pgm toc

test13: $(PROGS) setup
	./imageTool pgm/large/einstein_940x940.pgm tic blur 3,3 save blur.pgm toc

test14: $(PROGS) setup
	./imageTool pgm/large/einstein_940x940.pgm tic blur 4,4 save blur.pgm toc

test15: $(PROGS) setup
	./imageTool pgm/large/einstein_940x940.pgm tic blur 5,5 save blur.pgm toc

test16: $(PROGS) setup
	./imageTool pgm/large/einstein_940x940.pgm tic blur 6,6 save blur.pgm toc

test17: $(PROGS) setup
	./imageTool pgm/large/einstein_940x940.pgm tic blur 7,7 save blur.pgm toc

test18: $(PROGS) setup
	./imageTool pgm/large/einstein_940x940.pgm tic blur 8,8 save blur.pgm toc

test19: $(PROGS) setup
	./imageTool pgm/large/einstein_940x940.pgm tic blur 9,9 save blur.pgm toc

test20: $(PROGS) setup
	./imageTool pgm/large/einstein_940x940.pgm tic blur 10,9 save blur.pgm toc

test21: $(PROGS) setup
	./imageTool pgm/large/airfield-05_1600x1200.pgm tic blur 1,1 save blur.pgm toc

test22: $(PROGS) setup
	./imageTool pgm/large/airfield-05_1600x1200.pgm tic blur 2,2 save blur.pgm toc

test23: $(PROGS) setup
	./imageTool pgm/large/airfield-05_1600x1200.pgm tic blur 3,3 save blur.pgm toc

test24: $(PROGS) setup
	./imageTool pgm/large/airfield-05_1600x1200.pgm tic blur 4,4 save blur.pgm toc

test25: $(PROGS) setup
	./imageTool pgm/large/airfield-05_1600x1200.pgm tic blur 5,5 save blur.pgm toc

test26: $(PROGS) setup
	./imageTool pgm/large/airfield-05_1600x1200.pgm tic blur 6,6 save blur.pgm toc

test27: $(PROGS) setup
	./imageTool pgm/large/airfield-05_1600x1200.pgm tic blur 7,7 save blur.pgm toc

test28: $(PROGS) setup
	./imageTool pgm/large/airfield-05_1600x1200.pgm tic blur 8,8 save blur.pgm toc

test29: $(PROGS) setup
	./imageTool pgm/large/airfield-05_1600x1200.pgm tic blur 9,9 save blur.pgm toc

test30: $(PROGS) setup
	./imageTool pgm/large/airfield-05_1600x1200.pgm tic blur 10,9 save blur.pgm toc

test31: $(PROGS) setup
	./imageTool pgm/medium/airfield-05_640x480.pgm tic blur 1,1 save blur.pgm toc

test32: $(PROGS) setup
	./imageTool pgm/medium/airfield-05_640x480.pgm tic blur 2,2 save blur.pgm toc

test33: $(PROGS) setup
	./imageTool pgm/medium/airfield-05_640x480.pgm tic blur 3,3 save blur.pgm toc

test34: $(PROGS) setup
	./imageTool pgm/medium/airfield-05_640x480.pgm tic blur 4,4 save blur.pgm toc

test35: $(PROGS) setup
	./imageTool pgm/medium/airfield-05_640x480.pgm tic blur 5,5 save blur.pgm toc

test36: $(PROGS) setup
	./imageTool pgm/medium/airfield-05_640x480.pgm tic blur 6,6 save blur.pgm toc

test37: $(PROGS) setup
	./imageTool pgm/medium/airfield-05_640x480.pgm tic blur 7,7 save blur.pgm toc

test38: $(PROGS) setup
	./imageTool pgm/medium/airfield-05_640x480.pgm tic blur 8,8 save blur.pgm toc

test39: $(PROGS) setup
	./imageTool pgm/medium/airfield-05_640x480.pgm tic blur 9,9 save blur.pgm toc

test40: $(PROGS) setup
	./imageTool pgm/medium/airfield-05_640x480.pgm tic blur 10,9 save blur.pgm toc

test41: $(PROGS) setup
	./imageTool pgm/medium/mandrill_512x512.pgm tic blur 1,1 save blur.pgm toc

test42: $(PROGS) setup
	./imageTool pgm/medium/mandrill_512x512.pgm tic blur 2,2 save blur.pgm toc

test43: $(PROGS) setup
	./imageTool pgm/medium/mandrill_512x512.pgm tic blur 3,3 save blur.pgm toc

test44: $(PROGS) setup
	./imageTool pgm/medium/mandrill_512x512.pgm tic blur 4,4 save blur.pgm toc

test45: $(PROGS) setup
	./imageTool pgm/medium/mandrill_512x512.pgm tic blur 5,5 save blur.pgm toc

test46: $(PROGS) setup
	./imageTool pgm/medium/mandrill_512x512.pgm tic blur 6,6 save blur.pgm toc

test47: $(PROGS) setup
	./imageTool pgm/medium/mandrill_512x512.pgm tic blur 7,7 save blur.pgm toc

test48: $(PROGS) setup
	./imageTool pgm/medium/mandrill_512x512.pgm tic blur 8,8 save blur.pgm toc

test49: $(PROGS) setup
	./imageTool pgm/medium/mandrill_512x512.pgm tic blur 9,9 save blur.pgm toc

test50: $(PROGS) setup
	./imageTool pgm/medium/mandrill_512x512.pgm tic blur 10,9 save blur.pgm toc
test51: $(PROGS) setup
	./imageTool pgm/medium/ireland-03_640x480.pgm tic blur 1,1 save blur.pgm toc

test52: $(PROGS) setup
	./imageTool pgm/medium/ireland-03_640x480.pgm tic blur 2,2 save blur.pgm toc

test53: $(PROGS) setup
	./imageTool pgm/medium/ireland-03_640x480.pgm tic blur 3,3 save blur.pgm toc

test54: $(PROGS) setup
	./imageTool pgm/medium/ireland-03_640x480.pgm tic blur 4,4 save blur.pgm toc

test55: $(PROGS) setup
	./imageTool pgm/medium/ireland-03_640x480.pgm tic blur 5,5 save blur.pgm toc

test56: $(PROGS) setup
	./imageTool pgm/medium/ireland-03_640x480.pgm tic blur 6,6 save blur.pgm toc

test57: $(PROGS) setup
	./imageTool pgm/medium/ireland-03_640x480.pgm tic blur 7,7 save blur.pgm toc

test58: $(PROGS) setup
	./imageTool pgm/medium/ireland-03_640x480.pgm tic blur 8,8 save blur.pgm toc

test59: $(PROGS) setup
	./imageTool pgm/medium/ireland-03_640x480.pgm tic blur 9,9 save blur.pgm toc

test60: $(PROGS) setup
	./imageTool pgm/medium/ireland-03_640x480.pgm tic blur 10,9 save blur.pgm toc

test61: $(PROGS) setup
	./imageTool pgm/small/art3_222x217.pgm tic blur 1,1 save blur.pgm toc

test62: $(PROGS) setup
	./imageTool pgm/small/art3_222x217.pgm tic blur 2,2 save blur.pgm toc

test63: $(PROGS) setup
	./imageTool pgm/small/art3_222x217.pgm tic blur 3,3 save blur.pgm toc

test64: $(PROGS) setup
	./imageTool pgm/small/art3_222x217.pgm tic blur 4,4 save blur.pgm toc

test65: $(PROGS) setup
	./imageTool pgm/small/art3_222x217.pgm tic blur 5,5 save blur.pgm toc

test66: $(PROGS) setup
	./imageTool pgm/small/art3_222x217.pgm tic blur 6,6 save blur.pgm toc

test67: $(PROGS) setup
	./imageTool pgm/small/art3_222x217.pgm tic blur 7,7 save blur.pgm toc

test68: $(PROGS) setup
	./imageTool pgm/small/art3_222x217.pgm tic blur 8,8 save blur.pgm toc

test69: $(PROGS) setup
	./imageTool pgm/small/art3_222x217.pgm tic blur 9,9 save blur.pgm toc

test70: $(PROGS) setup
	./imageTool pgm/small/art3_222x217.pgm tic blur 10,9 save blur.pgm toc


test71: $(PROGS) setup
	./imageTool pgm/small/art4_300x300.pgm tic blur 1,1 save blur.pgm toc

test72: $(PROGS) setup
	./imageTool pgm/small/art4_300x300.pgm tic blur 2,2 save blur.pgm toc

test73: $(PROGS) setup
	./imageTool pgm/small/art4_300x300.pgm tic blur 3,3 save blur.pgm toc

test74: $(PROGS) setup
	./imageTool pgm/small/art4_300x300.pgm tic blur 4,4 save blur.pgm toc

test75: $(PROGS) setup
	./imageTool pgm/small/art4_300x300.pgm tic blur 5,5 save blur.pgm toc

test76: $(PROGS) setup
	./imageTool pgm/small/art4_300x300.pgm tic blur 6,6 save blur.pgm toc

test77: $(PROGS) setup
	./imageTool pgm/small/art4_300x300.pgm tic blur 7,7 save blur.pgm toc

test78: $(PROGS) setup
	./imageTool pgm/small/art4_300x300.pgm tic blur 8,8 save blur.pgm toc

test79: $(PROGS) setup
	./imageTool pgm/small/art4_300x300.pgm tic blur 9,9 save blur.pgm toc

test80: $(PROGS) setup
	./imageTool pgm/small/art4_300x300.pgm tic blur 10,9 save blur.pgm toc

test81: $(PROGS) setup
	./imageTool pgm/small/bird_256x256.pgm tic blur 1,1 save blur.pgm toc

test82: $(PROGS) setup
	./imageTool pgm/small/bird_256x256.pgm tic blur 2,2 save blur.pgm toc

test83: $(PROGS) setup
	./imageTool pgm/small/bird_256x256.pgm tic blur 3,3 save blur.pgm toc

test84: $(PROGS) setup
	./imageTool pgm/small/bird_256x256.pgm tic blur 4,4 save blur.pgm toc

test85: $(PROGS) setup
	./imageTool pgm/small/bird_256x256.pgm tic blur 5,5 save blur.pgm toc

test86: $(PROGS) setup
	./imageTool pgm/small/bird_256x256.pgm tic blur 6,6 save blur.pgm toc

test87: $(PROGS) setup
	./imageTool pgm/small/bird_256x256.pgm tic blur 7,7 save blur.pgm toc

test88: $(PROGS) setup
	./imageTool pgm/small/bird_256x256.pgm tic blur 8,8 save blur.pgm toc

test89: $(PROGS) setup
	./imageTool pgm/small/bird_256x256.pgm tic blur 9,9 save blur.pgm toc

test90: $(PROGS) setup
	./imageTool pgm/small/bird_256x256.pgm tic blur 10,9 save blur.pgm toc
test91: $(PROGS) setup
	./imageTool tic test/small.pgm test/paste.pgm locate toc
test92: $(PROGS) setup
	./imageTool tic test/small.pgm test/original.pgm locate toc
test93: $(PROGS) setup
	./imageTool tic test/small.pgm test/small.pgm locate toc
test94: $(PROGS) setup
	./imageTool test/original.pgm neg save neg.pgm
	cmp neg.pgm test/neg.pgm

test95: $(PROGS) setup
	./imageTool test/original.pgm thr 128 save thr.pgm
	cmp thr.pgm test/thr.pgm

test96: $(PROGS) setup
	./imageTool test/original.pgm bri .33 save bri.pgm
	cmp bri.pgm test/bri.pgm

test97: $(PROGS) setup
	./imageTool test/original.pgm rotate save rotate.pgm
	cmp rotate.pgm test/rotate.pgm

test98: $(PROGS) setup
	./imageTool test/original.pgm mirror save mirror.pgm
	cmp mirror.pgm test/mirror.pgm

test99: $(PROGS) setup
	./imageTool test/original.pgm crop 100,100,100,100 save crop.pgm
	cmp crop.pgm test/crop.pgm

test100: $(PROGS) setup
	./imageTool test/small.pgm test/original.pgm paste 100,100 save paste.pgm
	cmp paste.pgm test/paste.pgm

test101: $(PROGS) setup
	./imageTool test/small.pgm test/original.pgm blend 100,100,.33 save blend.pgm
	cmp blend.pgm test/blend.pgm

test102: $(PROGS) setup
	./imageTool test/original.pgm blur 7,7 save blur.pgm
	cmp blur.pgm test/blur.pgm

test103: $(PROGS) setup
	./imageTool test/small.pgm test/paste.pgm locate 
.PHONY: tests
tests: $(TESTS)

# Make uses builtin rule to create .o from .c files.

cleanobj:
	rm -f *.o

clean: cleanobj
	rm -f $(PROGS)

