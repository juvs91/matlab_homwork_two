import matlab.unittest.qualifications.Assertable
import matlab.unittest.TestCase.forInteractiveUse;

%one
[day] = get_day_with_day_number(5);
assertEqual(forInteractiveUse, day, 'friday');
%two
[two_numbers_sum] = get_number_of_two_sums([5, 3, 8]);
assertEqual(forInteractiveUse, two_numbers_sum, 8);

%three
[desc_numbers] = put_numbers_in_desc_order([50, 10, 100, 1])
assertEqual(forInteractiveUse, desc_numbers, [1, 20, 50, 100]);

%four
[burn_calories] = get_burn_calories_by_activity_type('sleep', 15)
assertEqual(forInteractiveUse, burn_calories, 16.05);
[burn_calories] = get_burn_calories_by_activity_type('sit', 15)
assertEqual(forInteractiveUse, burn_calories, 24.9);

%five
[work_utility] = get_work_utility_by_years(.5, 500)
assertEqual(forInteractiveUse, work_utility, 525);
[work_utility] = get_work_utility_by_years(1, 500)
assertEqual(forInteractiveUse, work_utility, 535);
[work_utility] = get_work_utility_by_years(3, 500)
assertEqual(forInteractiveUse, work_utility, 550);
[work_utility] = get_work_utility_by_years(6, 500)
assertEqual(forInteractiveUse, work_utility, 575);
[work_utility] = get_work_utility_by_years(11, 500)
assertEqual(forInteractiveUse, work_utility, 600);

%seven
[total_purch] = get_total_purchase_of_computers(11000, 4)
assertEqual(forInteractiveUse, total_purch, 39600);
[total_purch] = get_total_purchase_of_computers(11000, 8)
assertEqual(forInteractiveUse, total_purch, 70400);
[total_purch] = get_total_purchase_of_computers(11000, 10)
assertEqual(forInteractiveUse, total_purch, 66000);

%ten
[vector] = create_vector()
assertEqual(forInteractiveUse, vector(1), 55);
assertEqual(forInteractiveUse, vector(end), 480);
assertEqual(forInteractiveUse, vector(2), 60);
assertEqual(forInteractiveUse, vector(3), 65);
[vector_with_all_sqrt] = get_sqrt_vector(vector)
assertEqual(forInteractiveUse, vector_with_all_sqrt, sqrt([55:5:480]));
[multiply_vector] = multiply_vector(vector, vector_with_all_sqrt)
assertEqual(forInteractiveUse, vector_with_all_sqrt, [55:5:480] .* sqrt([55:5:480]));
[divided_vector]=  divide_vector(vector, vector_with_all_sqrt)
assertEqual(forInteractiveUse, vector_with_all_sqrt, sqrt([55:5:480]) ./ [55:5:480]);

%twelve
[same_value_matrix] = get_same_value_matrix(13)
expected_matrix = ones(4, 7) * 13
assertEqual(forInteractiveUse, same_value_matrix, expected_matrix);
