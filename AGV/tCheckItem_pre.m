function [fire, transition] = tCheckItem_pre (transition)

tokId = tokenAny('pBeforeCheck', 1);

x = rand;
if x > 0.8
    transition.new_color = 'error';
else
    transition.new_color = 'passed';
end
transition.override = 1;

granted = requestSR({'human', 1});
fire = granted;