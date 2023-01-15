.class Lcom/stefanjm/typer/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stefanjm/typer/a;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/stefanjm/typer/a;


# direct methods
.method constructor <init>(Lcom/stefanjm/typer/a;)V
    .locals 0

    iput-object p1, p0, Lcom/stefanjm/typer/a$1;->a:Lcom/stefanjm/typer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p1, Lcom/stefanjm/typer/a;

    iget-object p2, p0, Lcom/stefanjm/typer/a$1;->a:Lcom/stefanjm/typer/a;

    invoke-static {p2}, Lcom/stefanjm/typer/a;->a(Lcom/stefanjm/typer/a;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/stefanjm/typer/a;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/stefanjm/typer/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
