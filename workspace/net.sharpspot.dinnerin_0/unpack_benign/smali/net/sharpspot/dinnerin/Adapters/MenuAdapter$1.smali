.class Lnet/sharpspot/dinnerin/Adapters/MenuAdapter$1;
.super Ljava/lang/Object;
.source "MenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Adapters/MenuAdapter$1;->this$0:Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Activities/MenuActivity;

    .line 50
    .local v0, "activity":Lnet/sharpspot/dinnerin/Activities/MenuActivity;
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Adapters/MenuAdapter$1;->this$0:Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/sharpspot/dinnerin/Adapters/MenuAdapter;->getItem(I)Lnet/sharpspot/dinnerin/Classes/MenuClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sharpspot/dinnerin/Activities/MenuActivity;->OnImageClick(Lnet/sharpspot/dinnerin/Classes/MenuClass;)V

    .line 51
    return-void
.end method
