.class public Llt/diginet/app/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-static {p1}, Lcom/a/a/a/m;->a(Landroid/content/Context;)Lcom/a/a/n;

    move-result-object v0

    new-instance v9, Llt/diginet/app/a/a$3;

    const v1, 0x7f0d0021

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Llt/diginet/app/a/a$1;

    invoke-direct {v5, p0}, Llt/diginet/app/a/a$1;-><init>(Llt/diginet/app/a/a;)V

    new-instance v6, Llt/diginet/app/a/a$2;

    invoke-direct {v6, p0}, Llt/diginet/app/a/a$2;-><init>(Llt/diginet/app/a/a;)V

    const/4 v3, 0x1

    move-object v1, v9

    move-object v2, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Llt/diginet/app/a/a$3;-><init>(Llt/diginet/app/a/a;ILjava/lang/String;Lcom/a/a/o$b;Lcom/a/a/o$a;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/a/a/e;

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/16 v1, 0x61a8

    invoke-direct {p1, v1, p3, p2}, Lcom/a/a/e;-><init>(IIF)V

    invoke-virtual {v9, p1}, Lcom/a/a/a/l;->a(Lcom/a/a/q;)Lcom/a/a/m;

    new-instance p1, Lcom/a/a/e;

    invoke-direct {p1, p3, p3, p2}, Lcom/a/a/e;-><init>(IIF)V

    invoke-virtual {v9, p1}, Lcom/a/a/a/l;->a(Lcom/a/a/q;)Lcom/a/a/m;

    invoke-virtual {v0, v9}, Lcom/a/a/n;->a(Lcom/a/a/m;)Lcom/a/a/m;

    return-void
.end method
