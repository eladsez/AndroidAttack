.class Llt/diginet/app/MainActivity$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llt/diginet/app/MainActivity$5;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llt/diginet/app/MainActivity$5;


# direct methods
.method constructor <init>(Llt/diginet/app/MainActivity$5;)V
    .locals 0

    iput-object p1, p0, Llt/diginet/app/MainActivity$5$1;->a:Llt/diginet/app/MainActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Llt/diginet/app/MainActivity$5$1;->a:Llt/diginet/app/MainActivity$5;

    iget-object p1, p1, Llt/diginet/app/MainActivity$5;->a:Llt/diginet/app/MainActivity;

    iget-object p1, p1, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    const/16 v0, 0x82

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->requestFocus(I)Z

    return-void
.end method
