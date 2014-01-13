class AthletesController < ApplicationController

  def index
    @athletes = Athlete.all
  end

  def show
    @athlete = Athlete.find(params[:id])
    @athlete.physical_data
  end

  def new
    @athlete = Athlete.new
    @athlete.build_physical_data
    @athlete.build_technical_data
    @athlete.build_special_care
  end

  def edit
    @athlete = Athlete.find(params[:id])
    @athlete.physical_data
    @athlete.technical_data
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

  def update
    @athlete = Athlete.find(params[:id])
    if @athlete.update(athlete_params)
      redirect_to @athlete,
        notice: 'Cadastro atualizado com sucesso'
    else
      render action: :edit
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
      :email, :facebook, :twitter,
      :physical_data_attributes => [:id, :heigth, :weight, :foot, :arm, :calf, 
        :blood_group, :rh_factor, :biotype, :impulsion, :aerobic_endurance, :flexibility],
      :technical_data_attributes => [:id, :right_foot, :left_foot, :position, :second_option, :admission, 
        :age_group, :registry, :federation_registry],
      :special_care_attributes => [:id, :name, :relationship, :phones, :health_plan, :health_plan_name,
        :remedies, :prohibited_drugs]
      )
  end 
end
