/**
 Copyright (C) 2016  Johan Degraeve
 
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/gpl.txt>.
 
 */
package database
{
	import flash.events.EventDispatcher;
	
	import events.SettingsServiceEvent;

	/**
	 * local settings are settings specific to this device, ie settings that will not be synchronized among different devices.
	 */
	 public class LocalSettings extends EventDispatcher
	{
		private static var _instance:LocalSettings = new LocalSettings();

		public static function get instance():LocalSettings
		{
			return _instance;
		}

		/**
		 * detailed tracing enabled or not
		 */
		public static const LOCAL_SETTING_DETAILED_TRACING_ENABLED:int = 0; 
		/**
		 * filename for local tracing, empty string if currently no tracing 
		 */
		public static const LOCAL_SETTING_TRACE_FILE_NAME:int = 1;
		/**
		 * When user configures nightscout url and api secret, a test is done.<br>
		 * If that fails a dialog is shown<br>
		 * This indicates if that dialog has already been shown before or not, to avoid multiple pop ups.
		 */
		public static const LOCAL_SETTING_WARNING_THAT_NIGHTSCOUT_URL_AND_SECRET_IS_NOT_OK_ALREADY_GIVEN:int = 2;
		/**
		 * Permanent notification on home screen on or off 
		 */
		public static const LOCAL_SETTING_ALWAYS_ON_NOTIFICATION:int = 3;
		/**
		 * device token for remote push notifications 
		 */
		public static const LOCAL_SETTING_DEVICE_TOKEN_ID:int = 4;

		public static const LOCAL_SETTING_UDID_NOT_USED_ANYMORE:int = 5;

		public static const LOCAL_SETTING_SUBSCRIBED_TO_PUSH_NOTIFICATIONS_NOT_USED_ANYMORE:int = 6;
		/**
		 * use nslog, true or false
		 */
		public static const LOCAL_SETTING_NSLOG:int = 7;

		public static const LOCAL_SETTING_WISHED_QBLOX_SUBSCRIPTION_TAG_NOT_USED_ANYMORE:int = 8;

		public static const LOCAL_SETTING_ACTUAL_QBLOX_SUBSCRIPTION_TAG_NOT_USED_ANYMORE:int = 9;
		/**
		 * taken over from Android version xdripplus 
		 */
		public static const LOCAL_SETTING_G5_ALWAYS_AUTHENTICATE:int = 10;
		/**
		 * taken over from Android version xdripplus 
		 */
		public static const LOCAL_SETTING_G5_ALWAYS_UNBOUND:int = 11;
		public static const LOCAL_SETTING_FromtimeAndValueListView_INFO_SHOWN:int = 12;
		/**
		 * if user starts editing missed reading alerts, a warning will be shown that this only works guaranteed if Internet is on 
		 */
		public static const LOCAL_SETTING_MISSED_READING_WARNING_GIVEN_NOT_USED_ANYMORE:int = 13;
		public static const LOCAL_SETTING_PHONE_MUTED_WARNING_GIVEN:int = 14;
		public static const LOCAL_SETTING_TRACE_FILE_PATH_NAME:int = 15;
		public static const LOCAL_SETTING_FROM_TIME_AND_VALUE_ELEMENT_VIEW_VALUE_INFO_GIVEN:int = 16;
		public static const LOCAL_SETTING_LOW_BATTERY_WARNING_GIVEN:int = 17;
		public static const LOCAL_SETTING_CALIBRATION_REQUEST_ALERT_WARNING_GIVEN:int = 18;
		/**
		 * latest application version. First time introduced is version 0.0.46, that's why it's the default value
		 */
		public static const LOCAL_SETTING_APPLICATION_VERSION:int = 19;
		public static const LOCAL_SETTING_CHART_RANGE_INFO_GIVEN:int = 20;
		public static const LOCAL_SETTING_INFO_ABOUT_LONG_PRESS_IN_HOME_SCREEN_GIVEN:int = 21;
		public static const LOCAL_SETTING_HEALTHKIT_STORE_ON:int = 22;
		public static const LOCAL_SETTING_LICENSE_INFO_ACCEPTED:int = 23;
		public static const LOCAL_SETTING_SELECTION_UNIT_DONE:int = 24;
		public static const LOCAL_SETTING_TIMESTAMP_SINCE_LAST_INFO_UKNOWN_PACKET_TYPE:int = 25;
		public static const LOCAL_SETTING_DONTASKAGAIN_ABOUT_UNKNOWN_PACKET_TYPE:int = 26;
		public static const LOCAL_SETTING_SPEECH_INSTRUCTIONS_ACCEPTED:int = 27;
		public static const LOCAL_SETTING_OVERRIDE_MUTE:int = 28;
		public static const LOCAL_SETTING_UPDATE_SERVICE_INITIALCHECK:int = 29;
		public static const LOCAL_SETTING_ALWAYS_ON_APP_BADGE:int = 30;
		public static const LOCAL_SETTING_REMOTE_ALERT_LAST_ID:int = 31;
		public static const LOCAL_SETTING_REMOTE_ALERT_LAST_CHECK_TIMESTAMP:int = 32;
		
		/**
		 * Apple Watch
		 */
		public static const LOCAL_SETTING_WATCH_COMPLICATION_ON:int = 33;
		public static const LOCAL_SETTING_WATCH_COMPLICATION_DISPLAY_NAME_ON:int = 34;
		public static const LOCAL_SETTING_WATCH_COMPLICATION_DISPLAY_NAME:int = 35;
		public static const LOCAL_SETTING_WATCH_COMPLICATION_SELECTED_CALENDAR_ID:int = 36;
		public static const LOCAL_SETTING_WATCH_COMPLICATION_DISPLAY_TREND:int = 37;
		public static const LOCAL_SETTING_WATCH_COMPLICATION_DISPLAY_DELTA:int = 38;
		public static const LOCAL_SETTING_WATCH_COMPLICATION_DISPLAY_UNITS:int = 39;
		public static const LOCAL_SETTING_WATCH_COMPLICATION_GLUCOSE_HISTORY:int = 40;
		
		/**
		 * Loop Integration
		 */
		public static const LOCAL_SETTING_LOOP_SERVER_ON:int = 41;
		public static const LOCAL_SETTING_LOOP_SERVER_USERNAME:int = 42;
		public static const LOCAL_SETTING_LOOP_SERVER_PASSWORD:int = 43;
		
		/**
		 * Sidiary
		 */
		public static const LOCAL_SETTING_TIMESTAMP_SINCE_LAST_EXPORT_SIDIARY:int = 44;
		
		/**
		 * Transmiter PL
		 */
		public static const LOCAL_SETTING_TRANSMITER_PL_AMOUNT_OF_INVALID_SENSOR_AGE_VALUES:int = 45;
		
		/**
		 * App Inactive Alert
		 */
		public static const LOCAL_SETTING_APP_INACTIVE_ALERT:int = 46;
		/**
		 * If user has other app running that connects to the same G5 transmitter, this will not work<br>
		 * The app is trying to detect this situation, to avoid complaints<br>
		 * However the detection mechanism sometimes thinks there's another app trying to connect althought this is not the case<br>
		 * Therefore the amount of notifications will be reduced, this setting counts the number
		 */
		public static const LOCAL_SETTING_AMOUNT_OF_WARNINGS_OTHER_APP:int = 47;
		
		/**
		 * Always on notification interval.
		 * This setting defines the interval (in readings) for the firing of the always on notifications
		 */
		public static const LOCAL_SETTING_ALWAYS_ON_NOTIFICATION_INTERVAL:int = 48;
		
		/**
		 * Apple Watch#2
		 */
		public static const LOCAL_SETTING_WATCH_COMPLICATION_GAP_FIX_ON:int = 49;
		
		/**
		 * IFTTT
		 */
		public static const LOCAL_SETTING_IFTTT_ON:int = 50;
		public static const LOCAL_SETTING_IFTTT_URGENT_HIGH_TRIGGERED_ON:int = 51;
		public static const LOCAL_SETTING_IFTTT_URGENT_HIGH_SNOOZED_ON:int = 52;
		public static const LOCAL_SETTING_IFTTT_HIGH_TRIGGERED_ON:int = 53;
		public static const LOCAL_SETTING_IFTTT_HIGH_SNOOZED_ON:int = 54;
		public static const LOCAL_SETTING_IFTTT_LOW_TRIGGERED_ON:int = 55;
		public static const LOCAL_SETTING_IFTTT_LOW_SNOOZED_ON:int = 56;
		public static const LOCAL_SETTING_IFTTT_URGENT_LOW_TRIGGERED_ON:int = 57;
		public static const LOCAL_SETTING_IFTTT_URGENT_LOW_SNOOZED_ON:int = 58;
		public static const LOCAL_SETTING_IFTTT_MISSED_READINGS_TRIGGERED_ON:int = 59;
		public static const LOCAL_SETTING_IFTTT_MISSED_READINGS_SNOOZED_ON:int = 60;
		public static const LOCAL_SETTING_IFTTT_CALIBRATION_TRIGGERED_ON:int = 61;
		public static const LOCAL_SETTING_IFTTT_CALIBRATION_SNOOZED_ON:int = 62;
		public static const LOCAL_SETTING_IFTTT_PHONE_MUTED_TRIGGERED_ON:int = 63;
		public static const LOCAL_SETTING_IFTTT_PHONE_MUTED_SNOOZED_ON:int = 64;
		public static const LOCAL_SETTING_IFTTT_TRANSMITTER_LOW_BATTERY_TRIGGERED_ON:int = 65;
		public static const LOCAL_SETTING_IFTTT_TRANSMITTER_LOW_BATTERY_SNOOZED_ON:int = 66;
		public static const LOCAL_SETTING_IFTTT_GLUCOSE_READING_ON:int = 67;
		public static const LOCAL_SETTING_IFTTT_MAKER_KEY:int = 68;
		public static const LOCAL_SETTING_IFTTT_GLUCOSE_THRESHOLDS_ON:int = 69;
		public static const LOCAL_SETTING_IFTTT_GLUCOSE_HIGH_THRESHOLD:int = 70;
		public static const LOCAL_SETTING_IFTTT_GLUCOSE_LOW_THRESHOLD:int = 71;
		
		private static var localSettings:Array = [
			"false",//LOCAL_SETTING_DETAILED_TRACING_ENABLED
			"",//LOCAL_SETTING_TRACE_FILE_NAME
			"false",//LOCAL_SETTING_WARNING_THAT_NIGHTSCOUT_URL_AND_SECRET_IS_NOT_OK_ALREADY_GIVEN
			"false",//LOCAL_SETTING_ALWAYS_ON_NOTIFICATION
			"",//LOCAL_SETTING_DEVICE_TOKEN_ID_NOT_USED_ANYMORE
			"",//LOCAL_SETTING_UDID_NOT_USED_ANYMORE
			"false",//LOCAL_SETTING_SUBSCRIBED_TO_PUSH_NOTIFICATIONS
			"",//LOCAL_SETTING_WISHED_QBLOX_SUBSCRIPTION_TAG_NOT_USED_ANYMORE
			"",//LOCAL_SETTING_ACTUAL_QBLOX_SUBSCRIPTION_TAG_NOT_USED_ANYMORE
			"false",//LOCAL_SETTING_NSLOG
			"false",//LOCAL_SETTING_G5_ALWAYS_AUTHENTICATE
			"false",//LOCAL_SETTING_G5_ALWAYS_UNBOUND
			"false",//LOCAL_SETTING_FromtimeAndValueListView_INFO_SHOWN
			"false",//LOCAL_SETTING_MISSED_READING_WARNING_GIVEN_NOT_USED_ANYMORE
			"false",//LOCAL_SETTING_PHONE_MUTED_WARNING_GIVEN
			"",//LOCAL_SETTING_TRACE_FILE_PATH_NAME
			"false",//LOCAL_SETTING_FROM_TIME_AND_VALUE_ELEMENT_VIEW_VALUE_INFO_GIVEN
			"false",//LOCAL_SETTING_LOW_BATTERY_WARNING_GIVEN
			"false",//LOCAL_SETTING_CALIBRATION_REQUEST_ALERT_WARNING_GIVEN
			"0.0.0",//LOCAL_SETTING_APPLICATION_VERSION 0.0.0 will be overwritten during initial app launch in HomeView
			"false",//LOCAL_SETTING_CHART_RANGE_INFO_GIVEN
			"false",//LOCAL_SETTING_INFO_ABOUT_LONG_PRESS_IN_HOME_SCREEN_GIVEN
			"false",//LOCAL_SETTING_HEALTHKIT_STORE_ON
			"false",//LOCAL_SETTING_LICENSE_INFO_ACCEPTED
			"false",//LOCAL_SETTING_SELECTION_UNIT_DONE
			"0",//LOCAL_SETTING_TIMESTAMP_SINCE_LAST_INFO_UKNOWN_PACKET_TYPE
			"false",//LOCAL_SETTING_DONTASKAGAIN_ABOUT_UNKNOWN_PACKET_TYPE
			"false",//LOCAL_SETTING_SPEECH_INSTRUCTIONS_ACCEPTED
			"false",//LOCAL_SETTING_OVERRIDE_MUTE
			"true",//LOCAL_SETTING_UPDATE_SERVICE_INITIALCHECK
			"true",//LOCAL_SETTING_ALWAYS_ON_APP_BADGE
			"0",//LOCAL_SETTING_REMOTE_ALERT_LAST_ID
			"0",//LOCAL_SETTING_REMOTE_ALERT_LAST_CHECK_TIMESTAMP
			"false",//LOCAL_SETTING_WATCH_COMPLICATION_ON
			"false",//LOCAL_SETTING_WATCH_COMPLICATION_DISPLAY_NAME_ON
			"",//LOCAL_SETTING_WATCH_COMPLICATION_DISPLAY_NAME
			"",//LOCAL_SETTING_WATCH_COMPLICATION_SELECTED_CALENDAR_ID
			"true",//LOCAL_SETTING_WATCH_COMPLICATION_DISPLAY_TREND
			"true",//LOCAL_SETTING_WATCH_COMPLICATION_DISPLAY_DELTA
			"true",//LOCAL_SETTING_WATCH_COMPLICATION_DISPLAY_UNITS
			"6",//LOCAL_SETTING_WATCH_COMPLICATION_GLUCOSE_HISTORY
			"false",//LOCAL_SETTING_LOOP_SERVER_ON
			"",//LOCAL_SETTING_LOOP_SERVER_USERNAME
			"",//LOCAL_SETTING_LOOP_SERVER_PASSWORD
			"0",//LOCAL_SETTING_TIMESTAMP_SINCE_LAST_EXPORT_SIDIARY
			"0",//LOCAL_SETTING_TRANSMITER_PL_AMOUNT_OF_INVALID_SENSOR_AGE_VALUES
			"true",//LOCAL_SETTING_APP_INACTIVE_ALERT
			"0",//LOCAL_SETTING_AMOUNT_OF_WARNINGS_OTHER_APP
			"3",//LOCAL_SETTING_ALWAYS_ON_NOTIFICATION_INTERVAL
			"false",//LOCAL_SETTING_ALWAYS_ON_NOTIFICATION_INTERVAL
			"false",//LOCAL_SETTING_IFTTT_ON
			"false",//LOCAL_SETTING_IFTTT_URGENT_HIGH_TRIGGERED_ON
			"false",//LOCAL_SETTING_IFTTT_URGENT_HIGH_SNOOZED_ON
			"false",//LOCAL_SETTING_IFTTT_HIGH_TRIGGERED_ON
			"false",//LOCAL_SETTING_IFTTT_HIGH_SNOOZED_ON
			"false",//LOCAL_SETTING_IFTTT_LOW_TRIGGERED_ON
			"false",//LOCAL_SETTING_IFTTT_LOW_SNOOZED_ON
			"false",//LOCAL_SETTING_IFTTT_URGENT_LOW_TRIGGERED_ON
			"false",//LOCAL_SETTING_IFTTT_URGENT_LOW_SNOOZED_ON
			"false",//LOCAL_SETTING_IFTTT_MISSED_READINGS_TRIGGERED_ON
			"false",//LOCAL_SETTING_IFTTT_MISSED_READINGS_SNOOZED_ON
			"false",//LOCAL_SETTING_IFTTT_CALIBRATION_TRIGGERED_ON
			"false",//LOCAL_SETTING_IFTTT_CALIBRATION_SNOOZED_ON
			"false",//LOCAL_SETTING_IFTTT_PHONE_MUTED_TRIGGERED_ON
			"false",//LOCAL_SETTING_IFTTT_PHONE_MUTED_SNOOZED_ON
			"false",//LOCAL_SETTING_IFTTT_TRANSMITTER_LOW_BATTERY_TRIGGERED_ON
			"false",//LOCAL_SETTING_IFTTT_TRANSMITTER_LOW_BATTERY_SNOOZED_ON
			"false",//LOCAL_SETTING_IFTTT_GLUCOSE_READING_ON
			"",//LOCAL_SETTING_IFTTT_GLUCOSE_READING_ON
			"false",//LOCAL_SETTING_IFTTT_GLUCOSE_THRESHOLDS_ON
			"150",//LOCAL_SETTING_IFTTT_GLUCOSE_HIGH_THRESHOLD
			"70"//LOCAL_SETTING_IFTTT_GLUCOSE_LOW_THRESHOLD
		];
		
		public function LocalSettings() {
			if (_instance != null) {
				throw new Error("LocalSettings class constructor can not be used");	
			}
		}
		
		public static function getLocalSetting(localSettingId:int):String {
			return localSettings[localSettingId];
		}

		/**
		 * if  updateDatabase = true and dispatchSettingChangedEvent = true, then SETTING_CHANGED will be dispatched
		 */
		public static function setLocalSetting(localSettingId:int, newValue:String, updateDatabase:Boolean = true, dispatchSettingChangedEvent:Boolean = true):void {
			if (localSettings[localSettingId] != newValue) {
				localSettings[localSettingId] = newValue;
				if (updateDatabase) {
					Database.updateLocalSetting(localSettingId, newValue);
					if (dispatchSettingChangedEvent) {
						var settingChangedEvent:SettingsServiceEvent = new SettingsServiceEvent(SettingsServiceEvent.SETTING_CHANGED);
						settingChangedEvent.data = localSettingId;
						_instance.dispatchEvent(settingChangedEvent);
					}
				}
			}
		}
		
		public static function getNumberOfSettings():int {
			return localSettings.length;
		}
	}
}