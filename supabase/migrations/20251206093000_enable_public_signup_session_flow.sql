-- Allow pre-auth onboarding flow (anon role) to manage signup_sessions rows.
-- These policies rely on auth.uid() being NULL for anon tokens so authenticated users
-- still use the stricter existing policies.

CREATE POLICY signup_sessions_anon_insert
ON public.signup_sessions
FOR INSERT
TO anon
WITH CHECK (auth.uid() IS NULL);

CREATE POLICY signup_sessions_anon_update
ON public.signup_sessions
FOR UPDATE
TO anon
USING (auth.uid() IS NULL)
WITH CHECK (auth.uid() IS NULL);

CREATE POLICY signup_sessions_anon_select
ON public.signup_sessions
FOR SELECT
TO anon
USING (auth.uid() IS NULL);

CREATE POLICY signup_sessions_anon_delete
ON public.signup_sessions
FOR DELETE
TO anon
USING (auth.uid() IS NULL);


