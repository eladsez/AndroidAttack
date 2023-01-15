.class public Lcom/a/a/a;
.super Lcom/a/a/t;


# instance fields
.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/t;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/a/a/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/t;-><init>(Lcom/a/a/k;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "User needs to (re)enter credentials."

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/a/a/t;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
