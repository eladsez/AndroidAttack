.class Lnet/sharpspot/dinnerin/Activities/ImportActivity$1;
.super Ljava/lang/Thread;
.source "ImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sharpspot/dinnerin/Activities/ImportActivity;->ParseRecipeAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sharpspot/dinnerin/Activities/ImportActivity;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/Activities/ImportActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$1;->this$0:Lnet/sharpspot/dinnerin/Activities/ImportActivity;

    .line 64
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$1;->this$0:Lnet/sharpspot/dinnerin/Activities/ImportActivity;

    invoke-static {v0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->access$3(Lnet/sharpspot/dinnerin/Activities/ImportActivity;)V

    .line 69
    return-void
.end method
