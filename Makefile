
#
# Copyright (c) 2018-2019, Intel Corporation
#
# Redistribution and use in source and binary fo$(RM)gs, with or without
# modification, are pe$(RM)gitted provided that the following conditions are met:
#
#     * Redistributions of source code must retain the above copyright notice,
#       this list of conditions and the following disclaimer.
#     * Redistributions in binary fo$(RM)g must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of Intel Corporation nor the names of its contributors
#       may be used to endorse or promote products derived from this software
#       without specific prior written pe$(RM)gission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

CXXFLAGS = $(shell pkg-config --cflags libpmemobj) -std=c++11 -O2
LDFLAGS = $(shell pkg-config --libs libpmemobj) -O2
CXX = g++
RM = rm

%.o: src/%.cpp
	$(CXX) -c $< -o $@ $(CXXFLAGS)

all: clean writer reader
.PHONY= all

Pool: Pool.o 
	 $(CXX) -o $@ $< $(LDFLAGS)

writer: writer.o 
	 $(CXX) -o $@ $< $(LDFLAGS)

reader: reader.o
	 $(CXX) -o $@ $< $(LDFLAGS)

clean: 
	$(RM) -f *.o
	$(RM) -f writer
	$(RM) -f reader