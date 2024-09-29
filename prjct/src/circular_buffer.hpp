#ifndef _circular_buffer_hpp
#define _circular_buffer_hpp

#include <iostream>
#include <array>
#include <stdexcept>

using namespace std;
template <typename T, int cap, typename Container = array<T, cap>>
class CircularBuffer {

    public:
        CircularBuffer(): _head(0), _tail(0), _size(0), _current(0), _capacity(cap) {}


        T& head() {
            return c.at(_head);
        }
        T& tail() {
            return c.at(_tail);
        }

        T const& head() const {
            return c.at(_head);
        }
        T const& tail() const {
            return c.at(_tail);
        }

        void push_back(T val) noexcept {
            if (_current >= _capacity) {
                _current = 0;

            }
            c.at(_current++) = val;
            
            _tail = _current - 1;
        
            if (_size++ >= _capacity) {
                _size = _capacity;
                _head++;
                if (_head >= _capacity) {
                    _head = 0;
                }
            }        
        }
        void place_back(T val) {
            if (full()) {
                throw overflow_error("place_back(): full buffer");
            }
        }

        void pop() {
            if (empty()) {
                throw underflow_error("pop(): empty buffer");
            }

               _head++;
                if (_head >= _capacity) {
                    _head = 0;
                }

                _size--;
        }

        size_t size() const noexcept {
            return _size;
        }
        size_t capacity() const noexcept {
            return _capacity;
        }

        bool empty() const noexcept {
            return _size <= 0;
        }
        bool full() const noexcept {
            return _size >= _capacity;
        }



        /** */
        // Creating a iterator for my circular CircularBuffer
        
        template <typename Buffer, typename Iterator>
        class CircularBufferIterator {
        public :
            using iterator_category = std::forward_iterator_tag;
            using value_type = typename Buffer::value_type;
            using difference_type = std::ptrdiff_t;
            using pointer = typename Buffer::value_type*;
            using reference = typename Buffer::value_type&; 


            CircularBufferIterator() : done(true) {}
            
            CircularBufferIterator(const Buffer& buf, Iterator begin) :
                _buf(buf), _begin(begin), cursor(begin), done(false) {}
            
            CircularBufferIterator(const Buffer& buf, Iterator begin, bool done) :
                _buf(buf), _begin(begin), cursor(begin), done(done) {}

                reference operator*() const {
                    return *cursor;
                }

                pointer operator->() const {
                    return cursor;
                }


                CircularBufferIterator& operator++() {
                    ++cursor;
                    if (cursor == _buf.end()) {
                        cursor = const_cast<Iterator>(_buf.begin());
                    }

                    done = cursor == _begin;

                    return *this;
                }

                CircularBufferIterator operator++(int) {
                    iterator tmp(*this);
                    ++cursor;
                    if(cursor == _buf.end()) {
                        cursor = const_cast<Iterator>(_buf.begin());
                    }

                    done = cursor == _begin;

                    return tmp;
                }


                bool operator==(const CircularBufferIterator& it) const {
                    if (done && it._done) {
                        return true;
                    }
                    else if (!done && !it._done) {
                        return (this->_cursor == it._cursor);
                    }

                    return false;
                }

                bool operator!=(const CircularBufferIterator& it) const {
                    return !(*this == it);
                } 


        private :
            const Buffer& _buf;
            const Iterator _begin;
            Iterator cursor;
            bool done;
      
      
      
        };

        typedef CircularBufferIterator<Container, typename Container::iterator> iterator;

        iterator begin() {
            unsigned int offset = _head % _capacity;
            return CircularBuffer::iterator(c, c.begin() + offset);
        }

        iterator end() {
            unsigned int offset = _tail +1 % _capacity;
            return CircularBuffer::iterator(c, c.begin() + offset, full());
        }


    private :
        Container c;

        int _head;
        int _tail;
        int _size;
        int _capacity;
        int _current;
    };

#endif