.class Lcom/crashlytics/android/a/ae;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:La/a/a/a/a/b/p;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;La/a/a/a/a/b/p;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/a/ae;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/crashlytics/android/a/ae;->b:La/a/a/a/a/b/p;

    iput-object p3, p0, Lcom/crashlytics/android/a/ae;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/crashlytics/android/a/ae;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/crashlytics/android/a/ac;
    .locals 15

    iget-object v0, p0, Lcom/crashlytics/android/a/ae;->b:La/a/a/a/a/b/p;

    invoke-virtual {v0}, La/a/a/a/a/b/p;->h()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/a/ae;->b:La/a/a/a/a/b/p;

    invoke-virtual {v1}, La/a/a/a/a/b/p;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/crashlytics/android/a/ae;->b:La/a/a/a/a/b/p;

    invoke-virtual {v1}, La/a/a/a/a/b/p;->b()Ljava/lang/String;

    move-result-object v5

    sget-object v1, La/a/a/a/a/b/p$a;->d:La/a/a/a/a/b/p$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    sget-object v1, La/a/a/a/a/b/p$a;->g:La/a/a/a/a/b/p$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/a/ae;->b:La/a/a/a/a/b/p;

    invoke-virtual {v1}, La/a/a/a/a/b/p;->j()Ljava/lang/Boolean;

    move-result-object v8

    sget-object v1, La/a/a/a/a/b/p$a;->c:La/a/a/a/a/b/p$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    iget-object v0, p0, Lcom/crashlytics/android/a/ae;->a:Landroid/content/Context;

    invoke-static {v0}, La/a/a/a/a/b/i;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/crashlytics/android/a/ae;->b:La/a/a/a/a/b/p;

    invoke-virtual {v0}, La/a/a/a/a/b/p;->d()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/crashlytics/android/a/ae;->b:La/a/a/a/a/b/p;

    invoke-virtual {v0}, La/a/a/a/a/b/p;->g()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/crashlytics/android/a/ac;

    iget-object v13, p0, Lcom/crashlytics/android/a/ae;->c:Ljava/lang/String;

    iget-object v14, p0, Lcom/crashlytics/android/a/ae;->d:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/crashlytics/android/a/ac;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
