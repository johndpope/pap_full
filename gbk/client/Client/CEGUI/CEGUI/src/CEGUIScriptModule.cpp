/************************************************************************
	filename: 	CEGUIScriptModule.cpp
	created:	16/7/2004
	author:		Paul D Turner
	
	purpose:	Abstract class for scripting support
*************************************************************************/
/*************************************************************************
    Crazy Eddie's GUI System (http://www.cegui.org.uk)
    Copyright (C)2004 - 2005 Paul D Turner (paul@cegui.org.uk)

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*************************************************************************/
#include "CEGUIScriptModule.h"
#include "CEGUISystem.h"
#include "CEGUILogger.h"
#include "CEGUIString.h"


// Start of CEGUI namespace section
namespace CEGUI
{
ScriptModule::ScriptModule(void) :
    d_identifierString("Unknown scripting module (vendor did not set the ID string!)")
{}

const String& ScriptModule::getIdentifierString() const
{
    return d_identifierString;
}

bool ScriptFunctor::operator()(const EventArgs& e) const 
{
	ScriptModule* scriptModule = System::getSingleton().getScriptingModule();

	if (scriptModule)
	{
		return scriptModule->executeScriptedEventHandler(scriptFunctionName, e);
	}
	else
	{
		Logger::getSingleton().logEvent((utf8*)"Scripted event handler '" + scriptFunctionName + "' could not be called as no ScriptModule is available.", Errors);

		return false;
	}
}

} // End of  CEGUI namespace section
