.class Lorg/g_oku/intruderdetection/MyGalleryActivity$9;
.super Ljava/lang/Object;
.source "MyGalleryActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/g_oku/intruderdetection/MyGalleryActivity;->alertNotifyDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;


# direct methods
.method constructor <init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$9;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 299
    iget-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$9;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    iput-boolean p2, v0, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mDisplayFlag:Z

    .line 300
    return-void
.end method
