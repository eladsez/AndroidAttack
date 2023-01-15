.class Llt/diginet/app/MainActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llt/diginet/app/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llt/diginet/app/MainActivity;


# direct methods
.method constructor <init>(Llt/diginet/app/MainActivity;)V
    .locals 0

    iput-object p1, p0, Llt/diginet/app/MainActivity$3;->a:Llt/diginet/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    iget-object v0, p0, Llt/diginet/app/MainActivity$3;->a:Llt/diginet/app/MainActivity;

    iget-object v0, v0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llt/diginet/app/MainActivity$3;->a:Llt/diginet/app/MainActivity;

    iget-object v0, v0, Llt/diginet/app/MainActivity;->b:Landroid/support/v4/widget/n;

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/n;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Llt/diginet/app/MainActivity$3;->a:Llt/diginet/app/MainActivity;

    iget-object v0, v0, Llt/diginet/app/MainActivity;->b:Landroid/support/v4/widget/n;

    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method
