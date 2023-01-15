.class public Llt/diginet/app/MainActivity$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llt/diginet/app/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Llt/diginet/app/MainActivity;


# direct methods
.method constructor <init>(Llt/diginet/app/MainActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Llt/diginet/app/MainActivity$a;->b:Llt/diginet/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Llt/diginet/app/MainActivity$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public toggleShareDialog(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Llt/diginet/app/MainActivity$a;->b:Llt/diginet/app/MainActivity;

    iget-object v0, v0, Llt/diginet/app/MainActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Llt/diginet/app/MainActivity$a$1;

    invoke-direct {v1, p0, p1}, Llt/diginet/app/MainActivity$a$1;-><init>(Llt/diginet/app/MainActivity$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
