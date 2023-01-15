.class Lcom/stefanjm/typer/b$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/github/angads25/filepicker/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stefanjm/typer/b$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/stefanjm/typer/b$1;


# direct methods
.method constructor <init>(Lcom/stefanjm/typer/b$1;)V
    .locals 0

    iput-object p1, p0, Lcom/stefanjm/typer/b$1$1;->a:Lcom/stefanjm/typer/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;)V
    .locals 4

    const-string v0, "file manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/stefanjm/typer/b$1$1;->a:Lcom/stefanjm/typer/b$1;

    iget-object v0, v0, Lcom/stefanjm/typer/b$1;->a:Lcom/stefanjm/typer/b;

    invoke-static {v0}, Lcom/stefanjm/typer/b;->a(Lcom/stefanjm/typer/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "saved_vars"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wordsFileLocation"

    aget-object p1, p1, v2

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/stefanjm/typer/b$1$1;->a:Lcom/stefanjm/typer/b$1;

    iget-object v0, v0, Lcom/stefanjm/typer/b$1;->a:Lcom/stefanjm/typer/b;

    invoke-static {v0}, Lcom/stefanjm/typer/b;->a(Lcom/stefanjm/typer/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/stefanjm/typer/b$1$1;->a:Lcom/stefanjm/typer/b$1;

    iget-object v1, v1, Lcom/stefanjm/typer/b$1;->a:Lcom/stefanjm/typer/b;

    invoke-static {v1}, Lcom/stefanjm/typer/b;->a(Lcom/stefanjm/typer/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/stefanjm/typer/b$1$1;->a:Lcom/stefanjm/typer/b$1;

    iget-object v0, v0, Lcom/stefanjm/typer/b$1;->a:Lcom/stefanjm/typer/b;

    invoke-static {v0}, Lcom/stefanjm/typer/b;->a(Lcom/stefanjm/typer/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
