def search(nums, target)
  return nil if nums.empty?

  probe_idx = nums.length / 2
  case target <=> nums[probe_idx]
  when -1
    search(nums.take(probe_idx), target)
  when 0
    probe_idx
  when 1
    result = search(nums.drop(probe_idx + 1), target)
    return nil if result.nil?
    result + (probe_idx + 1)
  end
end
