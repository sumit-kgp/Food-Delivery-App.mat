% This is the main script. When running this, directly or indirectly all
% functions and other scripts are used. Starting with setupBook to setup
% the maps and addressBook.

setupBook

disp('Hello, and welcome to this food ordering system.');
disp(' ');
action = input('Do you have an account? [Y|N]' , 's');


% The action stored in 'action' is used in this switch to either make an
% account first or to go directly to placing the order. After the account
% is setup with the order attached, it is send on to pick the nearest
% deliveryman and then into the TrackDelivery script.
switch action
    case 'N'
        getAddress
        disp('Thanks for signing up!');
        action2 = input('Do you want to order now? [Y|N]', 's');
        switch action2
            case 'Y'
                disp('Then let`s go get your order!');
                getOrder
                findAccount
                DeliveryMan
                TrackDelivery
            case 'N'
                disp('Thanks for visiting the system, goodbye!');
            otherwise
                disp('This is not an option..');
        end
    case 'Y'
        disp('Then let`s go get your order!');
        getOrder
        findAccount
        DeliveryMan
        TrackDelivery
    otherwise
        disp('This is not an option..');
end
