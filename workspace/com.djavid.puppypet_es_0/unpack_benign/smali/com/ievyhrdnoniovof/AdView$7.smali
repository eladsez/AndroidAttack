.class Lcom/ievyhrdnoniovof/AdView$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdView;->playVideoImpl(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdView;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdView;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView$7;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const-string v0, "LBAdView"

    const-string v1, "0\u00081\u00025\u001b=\u001c<\rr\u001d=\u001c1\u0001r\n3\u0005>\u000c6"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
