.class Lcom/stefanjm/typer/MainActivity$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stefanjm/typer/MainActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/stefanjm/typer/MainActivity$3;


# direct methods
.method constructor <init>(Lcom/stefanjm/typer/MainActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/stefanjm/typer/MainActivity$3$2;->a:Lcom/stefanjm/typer/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Lcom/stefanjm/typer/a;

    iget-object v0, p0, Lcom/stefanjm/typer/MainActivity$3$2;->a:Lcom/stefanjm/typer/MainActivity$3;

    iget-object v0, v0, Lcom/stefanjm/typer/MainActivity$3;->b:Lcom/stefanjm/typer/MainActivity;

    invoke-direct {p1, v0}, Lcom/stefanjm/typer/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/stefanjm/typer/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
