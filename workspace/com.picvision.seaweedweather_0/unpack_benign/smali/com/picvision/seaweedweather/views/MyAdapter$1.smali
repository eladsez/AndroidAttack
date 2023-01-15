.class Lcom/picvision/seaweedweather/views/MyAdapter$1;
.super Ljava/lang/Object;
.source "MyAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/views/MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/views/MyAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/views/MyAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/MyAdapter$1;->this$0:Lcom/picvision/seaweedweather/views/MyAdapter;

    iput p2, p0, Lcom/picvision/seaweedweather/views/MyAdapter$1;->val$position:I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 71
    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    :cond_0
    :goto_0
    return v2

    .line 73
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 74
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/MyAdapter$1;->this$0:Lcom/picvision/seaweedweather/views/MyAdapter;

    invoke-static {v0}, Lcom/picvision/seaweedweather/views/MyAdapter;->access$0(Lcom/picvision/seaweedweather/views/MyAdapter;)Lcom/picvision/seaweedweather/main;

    move-result-object v0

    iget v1, p0, Lcom/picvision/seaweedweather/views/MyAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/main;->CitysSpinner(I)V

    .line 76
    const v0, -0xbbbbbc

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
