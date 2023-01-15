.class public Lcom/google/a/a/a/au;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/au;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/a/a/a/au;
    .locals 3

    invoke-static {}, Lcom/google/a/a/a/am;->a()Lcom/google/a/a/a/am;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/an;->H:Lcom/google/a/a/a/an;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/am;->a(Lcom/google/a/a/a/an;)V

    new-instance v0, Lcom/google/a/a/a/au;

    invoke-direct {v0}, Lcom/google/a/a/a/au;-><init>()V

    const-string v1, "&t"

    const-string v2, "exception"

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;

    const-string v1, "&exd"

    invoke-virtual {v0, v1, p0}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;

    const-string v1, "&exf"

    invoke-static {p1}, Lcom/google/a/a/a/au;->a(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/a/a/a/au;
    .locals 5

    invoke-static {}, Lcom/google/a/a/a/am;->a()Lcom/google/a/a/a/am;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/an;->Y:Lcom/google/a/a/a/an;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/am;->a(Lcom/google/a/a/a/an;)V

    new-instance v1, Lcom/google/a/a/a/au;

    invoke-direct {v1}, Lcom/google/a/a/a/au;-><init>()V

    const-string v0, "&t"

    const-string v2, "event"

    invoke-virtual {v1, v0, v2}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;

    const-string v0, "&ec"

    invoke-virtual {v1, v0, p0}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;

    const-string v0, "&ea"

    invoke-virtual {v1, v0, p1}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;

    const-string v0, "&el"

    invoke-virtual {v1, v0, p2}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;

    const-string v2, "&ev"

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;

    return-object v1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/a/a/a/au;
    .locals 3

    invoke-static {}, Lcom/google/a/a/a/am;->a()Lcom/google/a/a/a/am;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/an;->d:Lcom/google/a/a/a/an;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/am;->a(Lcom/google/a/a/a/an;)V

    invoke-static {p1}, Lcom/google/a/a/a/bj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/google/a/a/a/bj;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "&cc"

    const-string v0, "utm_content"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;

    const-string v2, "&cm"

    const-string v0, "utm_medium"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;

    const-string v2, "&cn"

    const-string v0, "utm_campaign"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;

    const-string v2, "&cs"

    const-string v0, "utm_source"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;

    const-string v2, "&ck"

    const-string v0, "utm_term"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;

    const-string v2, "&ci"

    const-string v0, "utm_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;

    const-string v2, "&gclid"

    const-string v0, "gclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;

    const-string v2, "&dclid"

    const-string v0, "dclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;

    const-string v2, "&gmob_t"

    const-string v0, "gmob_t"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/a/a/au;
    .locals 2

    invoke-static {}, Lcom/google/a/a/a/am;->a()Lcom/google/a/a/a/am;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/an;->a:Lcom/google/a/a/a/an;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/am;->a(Lcom/google/a/a/a/an;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/au;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0

    :cond_0
    const-string v0, " MapBuilder.set() called with a null paramName."

    invoke-static {v0}, Lcom/google/a/a/a/ar;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/a/a/a/au;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
