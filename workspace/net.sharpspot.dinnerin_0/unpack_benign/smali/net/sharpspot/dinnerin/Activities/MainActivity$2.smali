.class Lnet/sharpspot/dinnerin/Activities/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sharpspot/dinnerin/Activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sharpspot/dinnerin/Activities/MainActivity;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/Activities/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity$2;->this$0:Lnet/sharpspot/dinnerin/Activities/MainActivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity$2;->this$0:Lnet/sharpspot/dinnerin/Activities/MainActivity;

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->onSearchRequested()Z

    .line 91
    return-void
.end method
