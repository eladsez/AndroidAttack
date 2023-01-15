.class public Lcom/google/a/a/a/ar;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/a/a/a/ao;


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/a/a/a/ar;->b()Lcom/google/a/a/a/as;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/a/a/a/as;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    invoke-static {}, Lcom/google/a/a/a/ar;->b()Lcom/google/a/a/a/as;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/a/a/a/at;->a:Lcom/google/a/a/a/at;

    invoke-static {}, Lcom/google/a/a/a/ar;->b()Lcom/google/a/a/a/as;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/a/a/a/as;->a()Lcom/google/a/a/a/at;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/at;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Lcom/google/a/a/a/as;
    .locals 1

    sget-object v0, Lcom/google/a/a/a/ar;->a:Lcom/google/a/a/a/ao;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/a/a/a/ao;->a()Lcom/google/a/a/a/ao;

    move-result-object v0

    sput-object v0, Lcom/google/a/a/a/ar;->a:Lcom/google/a/a/a/ao;

    :cond_0
    sget-object v0, Lcom/google/a/a/a/ar;->a:Lcom/google/a/a/a/ao;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/a/a/a/ar;->a:Lcom/google/a/a/a/ao;

    invoke-virtual {v0}, Lcom/google/a/a/a/ao;->d()Lcom/google/a/a/a/as;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/a/a/a/ar;->b()Lcom/google/a/a/a/as;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/a/a/a/as;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/a/a/a/ar;->b()Lcom/google/a/a/a/as;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/a/a/a/as;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/a/a/a/ar;->b()Lcom/google/a/a/a/as;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/a/a/a/as;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
