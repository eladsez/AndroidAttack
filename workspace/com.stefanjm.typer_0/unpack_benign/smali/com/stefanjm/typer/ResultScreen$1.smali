.class Lcom/stefanjm/typer/ResultScreen$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stefanjm/typer/ResultScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/stefanjm/typer/ResultScreen;


# direct methods
.method constructor <init>(Lcom/stefanjm/typer/ResultScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/stefanjm/typer/ResultScreen$1;->a:Lcom/stefanjm/typer/ResultScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/stefanjm/typer/ResultScreen$1;->a:Lcom/stefanjm/typer/ResultScreen;

    const-class v1, Lcom/stefanjm/typer/GameSelection;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/stefanjm/typer/ResultScreen$1;->a:Lcom/stefanjm/typer/ResultScreen;

    invoke-virtual {v0, p1}, Lcom/stefanjm/typer/ResultScreen;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/stefanjm/typer/ResultScreen$1;->a:Lcom/stefanjm/typer/ResultScreen;

    invoke-virtual {p1}, Lcom/stefanjm/typer/ResultScreen;->finish()V

    return-void
.end method
