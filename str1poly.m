function c = str1poly(polystr, params)
%STR2POLY Converts a string to a polynomial
%
%   C = STR1POLY(POLYSTR) Converts an input string POLYSTR with 
%   terms of base variable 's' to a set of polynomial term coefficients C.
%   
%   C = STR1POLY(POLYSTR, PARAMS) The optional PARAMS argument makes
%   it possible to use parameters which will simply be replaced to their
%   numerical values. E.g.: params.K=1 will make the STR2POLY function look
%   for the parameter named K in the POLYSTR and if it is found, it will be
%   replaced with its value, i.e., 1.
%
%   Example:
%
%       c=str1poly('15s^3+2s+1')     returns c=[15 0 2 1]
    
    % Replace brackets and remove spaces
    polystr = strrep(polystr, '{', '(');
    polystr = strrep(polystr, '}', ')');
    polystr = strrep(polystr, '[', '(');
    polystr = strrep(polystr, ']', ')');
    polystr = strrep(polystr, ' ', '');
	
	% Search and replace parameters
	if nargin >1 && ~isempty(params)
    
	% Get all parameters
    allModelParams = fieldnames(params);
    for k=1:length(allModelParams)
       polystr = strrep(polystr, allModelParams{k}, ...
             num2str(params.(allModelParams{k})));
    end
	
	end
    
    % Locate missing '*' characters
    mulMissing = regexp(polystr,'(?m)(\-?\+?[\.0-9]+([eE]\-?[0-9]+)?)(s(\^\(?\-?\+?[\.\/0-9]+([eE]\-?[0-9]+)?)?)\)?(?=(\+|\-|$|\(|\)))', 'tokens');
    
    for n=1:length(mulMissing)
       
       term = mulMissing{n};
       
       % Add '*' to term
       polystr = strrep(polystr, [term{1} term{2}], [term{1} '*' term{2}]);
       
    end
    
    % Resolve bracket and operator multiplication
    polystr = strrep(polystr, ')(', ')*(');
    polystr = strrep(polystr, 's(', 's*(');
    polystr = strrep(polystr, ')s', ')*s');
    
    % Base variable
    s = tf('s');
    assignin('caller', 's', s);
    G = tf(evalin('caller', polystr));
    c = tfdata(G, 'v');
    
end