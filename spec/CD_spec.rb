require('cd')
require('rspec')


describe('CD') do
  before() do
    CD.clear()
  end

  describe('#name') do
    it('returns name of cd') do
      test_cd = CD.new('Mozart')
      expect(test_cd.name()).to(eq('Mozart'))
    end
  end

  describe('.all') do
    it('returns an array of all CDs') do
      test_cd = CD.new('Mozart')
      test_cd.save()
      expect(CD.all()).to(eq(['Mozart']))
    end
  end

  describe('.sorty') do
    it('return sorted cds') do
      test_cd = CD.new('Mozart')
      test_cd.save()
      test_cd1 = CD.new('Beethoven')
      test_cd1.save()
      expect(CD.sorty()).to(eq(['Beethoven', 'Mozart']))
    end
  end

  describe('#id') do
    it('returns the id of a CD') do
      test_cd = CD.new('Mozart')
      test_cd.save()
      expect(test_cd.id()).to(eq(1))
    end
  end
end
