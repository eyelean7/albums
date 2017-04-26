class CD
  @@cds = []
  define_method(:initialize) do |name|
    @name = name
    @id = @@cds.length().+(1)
  end
  define_singleton_method(:find) do |identification|
      found_cd = nil
      @@cds.each() do |cd|
        if cd.id().eql?(identification.to_i())
          found_cd = cd
        end
      end
      found_cd
    end
  define_method(:save) do
    @@cds.push(self.name())
  end
  define_method(:name)do
    @name
  end
  define_singleton_method(:clear) do
    @@cds = []
  end
  define_singleton_method(:all) do
    @@cds
  end
  define_singleton_method(:sorty) do
    @@cds.sort()
  end
  define_method(:id) do
    @id
  end
end
