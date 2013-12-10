class AthletesController < ApplicationController

  def index
    @athletes = Athlete.all
  end

  def show
    @athlete = Athlete.find(params[:id])
  end

  def new
    @athlete = Athlete.new
  end

  def edit
    @athlete = Athlete.find(params[:id])
  end

  def create
    @athlete = Athlete.new(athlete_params)
    if @athlete.save      
      redirect_to @athlete,
        notice: 'Aluno cadastrado com sucesso'
    else
      render action: :new
    end
  end


  def athlete_params
    params.
    require(:athlete).
    permit(:full_name, :nick_name, :url_photo, :birth_day, :birth_city, :birth_state, :skin,
      :hair, :eyes, :religion, :birth_certificate, :book, :page, :county,
      :identification, :identification_agency, :cpf, :ctps, :voter_registry,
      :reservist_registry, :driver_license, :schooling,
      :college, :address, :district, :city, :state, :zip_code,
      :phone_number, :father_name, :father_birth_day, :father_profession,
      :father_phone_number, :father_civil_status, :father_religion, :mother_name,
      :mother_birth_day, :mother_profession, :mother_phone_number, :mother_civil_status,
      :mother_religion, :responsible_name, :responsible_birth_day, :responsible_profession,
      :email, :facebook, :twitter
      )
  end 
end