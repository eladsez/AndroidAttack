.class Lcom/ievyhrdnoniovof/AdView$ScrollEater;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollEater"
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdView;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdView;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView$ScrollEater;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    const/4 v0, 0x1

    return v0
.end method
