.class Lcom/stefanjm/typer/MainActivity$2$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stefanjm/typer/MainActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/stefanjm/typer/MainActivity$2;


# direct methods
.method constructor <init>(Lcom/stefanjm/typer/MainActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/stefanjm/typer/MainActivity$2$4;->a:Lcom/stefanjm/typer/MainActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/stefanjm/typer/MainActivity$2$4;->a:Lcom/stefanjm/typer/MainActivity$2;

    iget-object p1, p1, Lcom/stefanjm/typer/MainActivity$2;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->callOnClick()Z

    return-void
.end method
