//
//  Copyright (C) 2012 GardenGnome, Rico Tzschichholz, Tom Beckmann
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

namespace Gala.Plugins.Notify
{
	public class NotifySettings : Granite.Services.Settings
	{
		public bool do_not_disturb { get; set; }

		public string[] bubbles { get; set; }
		public string[] sounds { get; set; }

		static NotifySettings? instance = null;

		private NotifySettings ()
		{
			base ("org.pantheon.desktop.notifications");
		}

		public static NotifySettings get_default ()
		{
			if (instance == null)
				instance = new NotifySettings ();

			return instance;
		}
	}
}