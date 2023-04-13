require 'swagger_helper'

RSpec.describe 'api/reservations', type: :request do
  path '/api/v1/reservations' do
    get 'Retrieves all reservations for a user' do
      tags 'Reservations'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string
      request_body_example value: { id: '1' }, name: 'basic', summary: 'Request example description'

      response '200', 'reservations found' do
        schema type: :object,
               properties: {
                 car_name: { type: :string },
                 date: { type: :string },
                 city: { type: :string },
                 duration: { type: :integer },
                 user_id: { type: :integer },
                 car_id: { type: :integer }
               },
               required: %w[car_name date city duration user_id car_id]

        let(:id) { User.create(username: 'test', password: 'test123').id }
        run_test!
      end

      response '404', 'reservation not found' do
        let(:id) { 'invalid' }
        run_test!
      end

      response '406', 'unsupported accept header' do
        let(:Accept) { 'application/foo' }
        run_test!
      end
    end
  end

  path '/api/v1/reservations' do
    post 'Creates a reservation' do
      tags 'Reservations'
      consumes 'application/json'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          car_name: { type: :string },
          date: { type: :string },
          city: { type: :string },
          duration: { type: :integer },
          user_id: { type: :integer },
          car_id: { type: :integer }
        },
        required: %w[car_name date city duration user_id car_id]
      }

      response '201', 'reservation created' do
        let(:reservation) do
          { car_name: 'tesla', date: '13-04-23', city: 'London', duration: 5, user_id: 1, car_id: 1 }
        end
        run_test!
      end

      response '422', 'invalid request' do
        let(:reservation) { { car_name: 'tesla' } }
        run_test!
      end
    end
  end
end
