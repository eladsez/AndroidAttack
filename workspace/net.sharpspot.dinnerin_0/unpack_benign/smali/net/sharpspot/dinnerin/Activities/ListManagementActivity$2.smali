.class Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$2;
.super Ljava/lang/Object;
.source "ListManagementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->InitializeComponets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$2;->this$0:Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$2;->this$0:Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->AddItem()V

    .line 71
    return-void
.end method
