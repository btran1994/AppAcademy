class Map

    attr_reader :mappy

    def initialize
        @mappy = []
    end

    def set(key, value)
        #create new kv pair or update existing
        index = @mappy.index { |pair| pair[0] == key } #does key already exist

        if index #if key exists at given index, set value again
            @mappy[index][1] = value
        else #push new kv pair into map
            @mappy.push([key, value])
        end
        
        value

    end

    def get(key)
        #get value for key? get kv pair?

        @mappy.each { |kv_pair| return kv_pair[1] if kv_pair[0] == key}

    end

    def delete(key)
        #delete kv pair given a key

        @mappy.reject! { |kv_pair| kv_pair[0] == key}

    end

    def show
        p @mappy
    end


end

test = Map.new
#test.show
test.set(1,2)
test.set(0,6)
test.set(7,3)
test.delete(7)
test.show