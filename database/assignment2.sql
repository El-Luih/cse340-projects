-- 1. First statement.
INSERT INTO public.account (
        account_firstname,
        account_lastname,
        account_email,
        account_password
    )
VALUES (
        'Tony',
        'Stark',
        'tony@starkent.com',
        'Iam1ronM@n'
    );
-- 2. Second statement.
UPDATE public.account
SET account_type = 'Admin'
WHERE account_id = 1;
-- 3. Third statement.
DELETE FROM public.account
WHERE account_id = 1;
-- 4. Fourth statement.
UPDATE public.inventory
SET inv_description = REPLACE(
        inv_description,
        'the small interiors',
        'a huge interior'
    )
WHERE inv_id = 10;
-- 5. Fifth statement.
SELECT inv_make,
    inv_model,
    classification_name
FROM public.inventory AS pi
    JOIN public.classification AS pc ON pi.classification_id = pc.classification_id
WHERE pc.classification_id = 2;
-- 6. Sixth statement.
UPDATE public.inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');