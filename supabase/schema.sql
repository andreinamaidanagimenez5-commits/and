-- Schema applied to the live Supabase project.
create table if not exists public.contact_inquiries (
  id bigint generated always as identity primary key,
  name text not null check (char_length(name) between 2 and 120),
  email text not null check (char_length(email) between 3 and 254),
  subject text not null default 'Consulta desde portfolio',
  message text not null check (char_length(message) between 10 and 5000),
  created_at timestamptz not null default now()
);
alter table public.contact_inquiries enable row level security;
revoke all on table public.contact_inquiries from anon, authenticated;
-- Inserts are performed only by the Supabase Edge Function using its server-side secret.
