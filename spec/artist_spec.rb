require('artist')
require('rspec')


describe('Artist') do
  before() do
    Artist.clear()
  end

  describe('#name') do
    it('returns name of artist') do
      test_artist = Artist.new('Mozart')
      expect(test_artist.name()).to(eq('Mozart'))
    end
  end

  describe('.all') do
    it('returns a list of all artist') do
      test_artist = Artist.new('Mozart')
      test_artist.save()
      expect(Artist.all()).to(eq(['Mozart']))
    end
  end
  describe('#cd_artist') do
    it('returns a list of all cds by artist') do
      test_artist = Artist.new('Mozart')
      test_artist.save()
      test_artist.cd_artist('Mozart')
      test_artist.save()
      expect(test_artist.albums()).to(eq(['Mozart']))
    end
  end
end
