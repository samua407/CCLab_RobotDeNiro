package controlP5;

/**
 * controlP5 is a processing gui library.
 *
 *  2006-2012 by Andreas Schlegel
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 2.1
 * of the License, or (at your option) any later version.
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General
 * Public License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place, Suite 330,
 * Boston, MA 02111-1307 USA
 *
 * @author 		Andreas Schlegel (http://www.sojamo.de)
 * @modified	09/09/2012
 * @version		1.5.1
 *
 */

import processing.core.PApplet;

import java.util.List;

interface MultiListInterface {

	void close();

	void open();

	void close(MultiListInterface theInterface);

	boolean observe();

	void updateLocation(float theX, float theY);

	public void draw(PApplet theApplet);

	String name();

	int getDirection();

	MultiListInterface toUpperCase(boolean theValue);

	@Deprecated List<? extends MultiListInterface> getChildren();
	
//	List<? extends MultiListInterface> getSubelements();
}
