class Map
    attr_reader :arr 

    def initialize
        @arr = []
    end

    def set(key,value)
        k_v = arr.index { |subarr| subarr[0] = key }
        if k_v
        arr[subarr][1] = value
        else
            arr.push([key, value])
        end
        value
    end

    def get(key)
        arr.each { |subarr| return subarr[1] if subarr[0] == key }
    end

    def delete(key)
        value = get(key)
        arr.reject! { |subarr| subarr[0] == key }
    end

    def show
    end


end