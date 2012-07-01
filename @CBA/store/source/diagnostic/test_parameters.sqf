// ----------------------------------------------------------------------------

#include "script_component.hpp"

SCRIPT(test_parameters);

// ----------------------------------------------------------------------------

LOG("Testing parameters");

private ["_expected"];

// Test default params.
_this = [5];
DEFAULT_PARAM(0,_result,12);
_expected = 5;
ASSERT_OP(_result,==,_expected,"DEFAULT_PARAM");

_result = nil;

_this = [];
DEFAULT_PARAM(0,_result,12);
_expected = 12;
ASSERT_OP(_result,==,_expected,"DEFAULT_PARAM");

_result = nil;

_this = [nil];
DEFAULT_PARAM(0,_result,12);
_expected = 12;
ASSERT_OP(_result,==,_expected,"DEFAULT_PARAM");

_result = nil;

_this = nil;
DEFAULT_PARAM(0,_result,12);
_expected = 12;
ASSERT_OP(_result,==,_expected,"DEFAULT_PARAM");

nil;
