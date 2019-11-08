

fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']


#O(n^2) double iteration
#sluggish octopus
def n_squared(fish)
    long_boi = ""
    fish.each_with_index do |fish1, idx1|
        fish.each_with_index do |fish2, idx2|
            if idx2 > idx1
                long_boi = fish2 if fish2.length > fish1.length
            end
        end
    end
    long_boi
end

#p n_squared(fish)





#dominant octopus
#O(n log n) quick sort
def dominant_octopus(fish)
    #sorted = []
    return fish if fish.length < 2
    pivot = fish.first
    left = fish[1..-1].select { |feesh| feesh.length <= pivot.length }
    #p left
    right = fish[1..-1].select { |feesh| feesh.length > pivot.length }

    dominant_octopus(left) + [pivot] + dominant_octopus(right)
    


end

#p dominant_octopus(fish).last

#O(n)
def clever_octopus(fish)
    longest = 0
    long_boi = ""
    fish.each do |feesh|
        if feesh.length > longest
            long_boi = feesh
            longest = feesh.length
        end
    end
    long_boi
end

p clever_octopus(fish)