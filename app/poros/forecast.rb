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
              :hourly_summary,
              :hourly_icon,
              :daily_temp,
              :daily_feels_like,
              :daily_humidity,
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
    @current_uv_index = weather_forecast[:current][:uvi]
    @current_sunrise = weather_forecast[:current][:sunrise]
    @current_sunset = weather_forecast[:current][:sunset]
    @current_summary = weather_forecast[:current][:weather][0][:description]
    @current_icon = weather_forecast[:current][:weather][0][:icon]
    @hourly_temp = weather_forecast[:hourly][0][:temp]
    @hourly_feels_like = weather_forecast[:hourly][0][:feels_like]
    @hourly_humidity = weather_forecast[:hourly][0][:humidity]
    @hourly_visibility = weather_forecast[:hourly][0][:visibility]
    @hourly_summary = weather_forecast[:hourly][0][:weather][0][:description]
    @hourly_icon = weather_forecast[:hourly][0][:weather][0][:icon]
    @daily_temp = weather_forecast[:daily][0][:temp]
    @daily_feels_like = weather_forecast[:daily][0][:feels_like]
    @daily_humidity = weather_forecast[:daily][0][:humidity]
    @daily_uv_index = weather_forecast[:daily][0][:uvi]
    @daily_sunrise = weather_forecast[:daily][0][:sunrise]
    @daily_sunset = weather_forecast[:daily][0][:sunset]
    @daily_summary = weather_forecast[:daily][0][:weather][0][:description]
    @daily_icon = weather_forecast[:daily][0][:weather][0][:icon]
  end
end
