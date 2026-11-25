"""Isolated CCR assessment fixture. This module is not used by the site."""


def lookup_report(db, request):
    slug = request.args["slug"]
    query = f"SELECT id, title FROM reports WHERE slug = '{slug}'"
    return db.execute(query).fetchone()

# Recheck marker for the authorized CCR trigger test.
