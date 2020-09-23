class Forecast
  attr_reader :id,
              :current,
              :hourly,
              :daily,
              :current_temp,
              :current_feels_like,
              :current_humidity,
              :current_visibility,
              :current_uv_index,
              :current_sunrise,
              :current_sunset,
              :current_summary,
              :hourly_temp,
              :hourly_feels_like,
              :hourly_humidity,
              :hourly_visibility,
              :hourly_uv_index,
              :hourly_sunrise,
              :hourly_sunset,
              :hourly_summary,
              :daily_temp,
              :daily_feels_like,
              :daily_humidity,
              :daily_visibility,
              :daily_uv_index,
              :daily_sunrise,
              :daily_sunset,
              :daily_summary


  def initialize(weather_forecast)
    @id = 1
    @current = weather_forecast[:current]
    @hourly = weather_forecast[:hourly]
    @daily = weather_forecast[:daily]
    @current_temp = weather_forecast[:current][:temp]
    @current_feels_like = weather_forecast[:current][:feels_like]
    @current_humidity = weather_forecast[:current][:humidity]
    @current_visibility = weather_forecast[:current][:visibility]
    @current_uv_index = weather_forecast[:current][:uv_index]
    @current_sunrise = weather_forecast[:current][:sunrise]
    @current_sunset = weather_forecast[:current][:sunset]
    @current_summary = weather_forecast[:current][:weather][0][:description]
    @hourly_temp = weather_forecast[:hourly][:temp]
    @hourly_feels_like = weather_forecast[:hourly][:feels_like]
    @hourly_humidity = weather_forecast[:hourly][:humidity]
    @hourly_visibility = weather_forecast[:hourly][:visibility]
    @hourly_uv_index = weather_forecast[:hourly][:uv_index]
    @hourly_sunrise = weather_forecast[:hourly][:sunrise]
    @hourly_sunset = weather_forecast[:hourly][:sunset]
    @hourly_summary = weather_forecast[:hourly][:weather][0][:description]
    @daily_temp = weather_forecast[:daily][:temp]
    @daily_feels_like = weather_forecast[:daily][:feels_like]
    @daily_humidity = weather_forecast[:daily][:humidity]
    @daily_visibility = weather_forecast[:daily][:visibility]
    @daily_uv_index = weather_forecast[:daily][:uv_index]
    @daily_sunrise = weather_forecast[:daily][:sunrise]
    @daily_sunset = weather_forecast[:daily][:sunset]
    @daily_summary = weather_forecast[:daily][:weather][0][:description]
  end
end
