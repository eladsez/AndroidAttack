.class Lcom/ievyhrdnoniovof/AdView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdView;->l(Lcom/ievyhrdnoniovof/AdController$Dimensions;)Landroid/widget/FrameLayout;
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
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView$3;->k:Lcom/ievyhrdnoniovof/AdView;

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

    const-string v1, "\u0011\"\u0010(\u00141\u001c6\u001d\'S7\u001c6\u0010+S \u0012/\u001f&\u0017"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
