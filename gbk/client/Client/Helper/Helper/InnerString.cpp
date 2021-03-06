#include "StdAfx.h"
#include "InnerString.h"

extern int g_nCodePage;

const wchar_t* getInnerString_936(INNER_STRING_ID id)
{
	switch(id)
	{
		case ISI_TITLE_HELPER: 			return L"天龙八部帮助";
		case ISI_TITLE_PAIHANGBANG:		return L"天龙八部排行榜";
		default: break;
	};
	
	return L"";
}

const wchar_t* getInnerString_1258(INNER_STRING_ID id)
{
	switch(id)
	{
		case ISI_TITLE_HELPER: 			return L"TLBB Helper";
		default: break;
	}

	return getInnerString_936(id);
}

const wchar_t* getInnerString(INNER_STRING_ID id)
{
	switch(g_nCodePage)
	{
	case 1258: return getInnerString_1258(id);
	default: break;
	}

	return getInnerString_936(id);
}

