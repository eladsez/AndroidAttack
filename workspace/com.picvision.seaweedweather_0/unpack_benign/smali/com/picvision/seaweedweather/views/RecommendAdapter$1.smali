.class Lcom/picvision/seaweedweather/views/RecommendAdapter$1;
.super Ljava/lang/Object;
.source "RecommendAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/views/RecommendAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downX:F

.field downY:F

.field final synthetic this$0:Lcom/picvision/seaweedweather/views/RecommendAdapter;

.field private final synthetic val$imgurl:Ljava/lang/String;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/views/RecommendAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$1;->this$0:Lcom/picvision/seaweedweather/views/RecommendAdapter;

    iput-object p2, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$1;->val$imgurl:Ljava/lang/String;

    iput-object p3, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$1;->val$text:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput v0, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$1;->downX:F

    .line 134
    iput v0, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$1;->downY:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x41700000    # 15.0f

    const/4 v6, 0x0

    .line 136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$1;->downX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 138
    .local v2, "moveX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$1;->downY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 140
    .local v3, "moveY":F
    iput v6, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$1;->downX:F

    .line 141
    iput v6, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$1;->downY:F

    .line 142
    cmpg-float v4, v2, v7

    if-gez v4, :cond_0

    cmpg-float v4, v3, v7

    if-gez v4, :cond_0

    .line 143
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "img_url"

    iget-object v5, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$1;->val$imgurl:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v4, "Text"

    iget-object v5, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 148
    iget-object v4, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$1;->this$0:Lcom/picvision/seaweedweather/views/RecommendAdapter;

    invoke-static {v4}, Lcom/picvision/seaweedweather/views/RecommendAdapter;->access$2(Lcom/picvision/seaweedweather/views/RecommendAdapter;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/picvision/seaweedweather/ShowImageActivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 149
    iget-object v4, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$1;->this$0:Lcom/picvision/seaweedweather/views/RecommendAdapter;

    invoke-static {v4}, Lcom/picvision/seaweedweather/views/RecommendAdapter;->access$2(Lcom/picvision/seaweedweather/views/RecommendAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 155
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "moveX":F
    .end local v3    # "moveY":F
    :cond_0
    :goto_0
    return v8

    .line 151
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 152
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$1;->downX:F

    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$1;->downY:F

    goto :goto_0
.end method
