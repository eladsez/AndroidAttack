.class Lcom/stefanjm/typer/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stefanjm/typer/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/stefanjm/typer/b;


# direct methods
.method constructor <init>(Lcom/stefanjm/typer/b;)V
    .locals 0

    iput-object p1, p0, Lcom/stefanjm/typer/b$2;->a:Lcom/stefanjm/typer/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p1, Lcom/stefanjm/typer/a;

    iget-object p2, p0, Lcom/stefanjm/typer/b$2;->a:Lcom/stefanjm/typer/b;

    invoke-static {p2}, Lcom/stefanjm/typer/b;->a(Lcom/stefanjm/typer/b;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/stefanjm/typer/a;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/stefanjm/typer/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
