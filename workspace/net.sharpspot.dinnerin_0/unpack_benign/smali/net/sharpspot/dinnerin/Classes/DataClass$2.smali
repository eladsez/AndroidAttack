.class Lnet/sharpspot/dinnerin/Classes/DataClass$2;
.super Ljava/lang/Thread;
.source "DataClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sharpspot/dinnerin/Classes/DataClass;->DeleteAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sharpspot/dinnerin/Classes/DataClass;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/Classes/DataClass;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/DataClass$2;->this$0:Lnet/sharpspot/dinnerin/Classes/DataClass;

    .line 175
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/DataClass$2;->this$0:Lnet/sharpspot/dinnerin/Classes/DataClass;

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->Delete()V

    .line 180
    return-void
.end method
