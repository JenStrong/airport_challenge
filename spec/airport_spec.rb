require 'airport'
require 'plane'
require 'weather'

describe Airport do
  let(:plane) { instance_double('Plane')}

  context 'When the weather is sunny' do
    it 'allows the plane to land' do
      subject.land(plane)
      expect(subject.hanger).to include(plane)
    end

    it 'can instruct an airplane to take off' do
      expect(subject).to respond_to(:takeoff)
    end

    it 'confirms that plane that took off is no longer in hanger' do
      subject.land(plane)
      taken_off_plane = subject.takeoff
      expect(subject.hanger).to_not include(taken_off_plane)
    end
  end

  context 'When weather is stormy' do
    it 'does not allow a plane to land' do
      subject.land(plane)
      expect(subject.hanger).to_not include(plane)
    end

    it 'does not move plane to the hanger'

    it 'does not allow a plane to take off'

    it 'does not remove the plane from the hanger'
  end
end



  # it 'confirms that plane that took off is no longer in hanger' do
  #   subject.land(plane)
  #   taken_off_plane = subject.takeoff
  #   expect(subject.hanger).to_not include(taken_off_plane)
  # end
  #
  # it 'can move a landed plane to the hanger' do
  #   subject.land(plane)
  #   expect(subject.hanger).to include(plane)
  # end
  #
  # it 'raises an error for landing when hanger is full' do
  #   Airport::DEFAULT_CAPACITY.times { subject.land(Plane.new) }
  #   expect{ subject.land(Plane.new) }.to raise_error('Airport is full')
  # end
  #
  # it 'raises an error if a plane wants to land when already at airport' do
  #   subject.land(plane)
  #   expect{ subject.land(plane) }.to raise_error('Plane already at airport')
  # end
  #
  # context ''
  #
  # it 'stops a plane from taking off when the weather is stormy' do
  #   weather = Weather.new
  #   allow(weather).to receive(:todays_weather).and_return('stormy')
  #   expect
  #
  #
  #   weather.stub todays_weather: todays_weather
  # end
  #
  # describe Weather do
  # it 'returns good' do
  #   weather = Weather.new
  #   allow(weather).to receive(:chance).and_return(0.8)
  #   expect(weather.conditions).to eq :good
  # end
# end
#
# end


#

#
# As an air traffic controller
# To ensure safety
# I want to prevent takeoff when weather is stormy
#
# As an air traffic controller
# To ensure safety
# I want to prevent landing when weather is stormy
#

#