function model = logregFitL1(X, y, lambda, includeOffset)
    
    switch nargin
        case 2, args = {};
        case 3, args = {lambda};
        case 4, args = {lambda, includeOffset};
    end
    model = logregFitCore(X, y, args{:}, @penalizedL1);
end