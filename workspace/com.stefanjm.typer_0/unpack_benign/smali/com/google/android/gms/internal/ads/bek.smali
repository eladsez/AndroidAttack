.class public final Lcom/google/android/gms/internal/ads/bek;
.super Lcom/google/android/gms/internal/ads/bdu;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/mediation/l;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bdu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/b/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/l;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/b/a;Lcom/google/android/gms/b/a;Lcom/google/android/gms/b/a;)V
    .locals 1

    invoke-static {p2}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p3}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/ads/mediation/l;->a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/b/c$b;

    new-instance v3, Lcom/google/android/gms/internal/ads/atv;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/b/c$b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/ads/b/c$b;->b()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/ads/b/c$b;->c()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/atv;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final b(Lcom/google/android/gms/b/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/l;->b(Landroid/view/View;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/avf;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->d()Lcom/google/android/gms/ads/b/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/atv;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/c$b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/c$b;->b()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/c$b;->c()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/atv;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()D
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->g()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->g()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/aqv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->j()Lcom/google/android/gms/ads/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->j()Lcom/google/android/gms/ads/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/j;->a()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/avb;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->l()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->m()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->n()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final o()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->o()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->p()Z

    move-result v0

    return v0
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->q()Z

    move-result v0

    return v0
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bek;->a:Lcom/google/android/gms/ads/mediation/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->r()V

    return-void
.end method
