module Api
    module V1
        class AlertsController < ApplicationController
            def index
                alerts = Alert.order('created_at DESC')
                render json: {status: "SUCCESS",message:'Alertas Cadastrados', data:alerts},status: :ok
            end
            def create 
                alert = Alert.new(alert_params)
                if alert.save
                    render json: {status: "SUCCESS",message:'Alerta cadastrado com sucesso!', data:alert},status: :ok
                else
                    render json: {status: 'ERROR', message:'Erro ao cadastrar alerta', data:article.erros},status: :unprocessable_entity
                end
                private def alert_params
                    params.permit(:name,:starthour,:endhour,:interval)
                end
            end
        end
    end
end