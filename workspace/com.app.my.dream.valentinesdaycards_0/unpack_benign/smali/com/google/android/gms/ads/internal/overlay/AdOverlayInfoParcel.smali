.class public final Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzha;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/ads/internal/overlay/zzf;


# instance fields
.field public final orientation:I

.field public final url:Ljava/lang/String;

.field public final versionCode:I

.field public final zzDA:Lcom/google/android/gms/ads/internal/client/zza;

.field public final zzDB:Lcom/google/android/gms/ads/internal/overlay/zzg;

.field public final zzDC:Lcom/google/android/gms/internal/zzjn;

.field public final zzDD:Lcom/google/android/gms/internal/zzdh;

.field public final zzDE:Ljava/lang/String;

.field public final zzDF:Z

.field public final zzDG:Ljava/lang/String;

.field public final zzDH:Lcom/google/android/gms/ads/internal/overlay/zzn;

.field public final zzDI:I

.field public final zzDJ:Lcom/google/android/gms/internal/zzdn;

.field public final zzDK:Ljava/lang/String;

.field public final zzDL:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

.field public final zzDz:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

.field public final zzqR:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/overlay/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->CREATOR:Lcom/google/android/gms/ads/internal/overlay/zzf;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/IBinder;Ljava/lang/String;Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "adLauncherIntentInfo"    # Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;
    .param p3, "wrappedAdClickListener"    # Landroid/os/IBinder;
    .param p4, "wrappedAdOverlayListener"    # Landroid/os/IBinder;
    .param p5, "wrappedAdWebView"    # Landroid/os/IBinder;
    .param p6, "wrappedAppEventGmsgListener"    # Landroid/os/IBinder;
    .param p7, "baseUrl"    # Ljava/lang/String;
    .param p8, "customClose"    # Z
    .param p9, "html"    # Ljava/lang/String;
    .param p10, "wrappedLeaveApplicationListener"    # Landroid/os/IBinder;
    .param p11, "orientation"    # I
    .param p12, "overlayType"    # I
    .param p13, "url"    # Ljava/lang/String;
    .param p14, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .param p15, "wrappedInAppPurchaseGmsgListener"    # Landroid/os/IBinder;
    .param p16, "debugMessage"    # Ljava/lang/String;
    .param p17, "interstitialAdParameter"    # Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDz:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzd$zza;->zzbs(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/client/zza;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDA:Lcom/google/android/gms/ads/internal/client/zza;

    invoke-static {p4}, Lcom/google/android/gms/dynamic/zzd$zza;->zzbs(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/overlay/zzg;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDB:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-static {p5}, Lcom/google/android/gms/dynamic/zzd$zza;->zzbs(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzjn;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDC:Lcom/google/android/gms/internal/zzjn;

    invoke-static {p6}, Lcom/google/android/gms/dynamic/zzd$zza;->zzbs(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdh;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDD:Lcom/google/android/gms/internal/zzdh;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDE:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDF:Z

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDG:Ljava/lang/String;

    invoke-static {p10}, Lcom/google/android/gms/dynamic/zzd$zza;->zzbs(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDH:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput p11, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    iput p12, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDI:I

    iput-object p13, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzqR:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static/range {p15 .. p15}, Lcom/google/android/gms/dynamic/zzd$zza;->zzbs(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdn;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDJ:Lcom/google/android/gms/internal/zzdn;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDK:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDL:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/internal/zzjn;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;)V
    .locals 2
    .param p1, "adClickListener"    # Lcom/google/android/gms/ads/internal/client/zza;
    .param p2, "adOverlayListener"    # Lcom/google/android/gms/ads/internal/overlay/zzg;
    .param p3, "leaveApplicationListener"    # Lcom/google/android/gms/ads/internal/overlay/zzn;
    .param p4, "adWebView"    # Lcom/google/android/gms/internal/zzjn;
    .param p5, "orientation"    # I
    .param p6, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .param p7, "debugMessage"    # Ljava/lang/String;
    .param p8, "interstitialAdParameter"    # Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->versionCode:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDz:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDA:Lcom/google/android/gms/ads/internal/client/zza;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDB:Lcom/google/android/gms/ads/internal/overlay/zzg;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDC:Lcom/google/android/gms/internal/zzjn;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDD:Lcom/google/android/gms/internal/zzdh;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDE:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDF:Z

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDG:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDH:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDI:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzqR:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDJ:Lcom/google/android/gms/internal/zzdn;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDK:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDL:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/internal/zzjn;ZILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 2
    .param p1, "adClickListener"    # Lcom/google/android/gms/ads/internal/client/zza;
    .param p2, "adOverlayListener"    # Lcom/google/android/gms/ads/internal/overlay/zzg;
    .param p3, "leaveApplicationListener"    # Lcom/google/android/gms/ads/internal/overlay/zzn;
    .param p4, "adWebView"    # Lcom/google/android/gms/internal/zzjn;
    .param p5, "customClose"    # Z
    .param p6, "orientation"    # I
    .param p7, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->versionCode:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDz:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDA:Lcom/google/android/gms/ads/internal/client/zza;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDB:Lcom/google/android/gms/ads/internal/overlay/zzg;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDC:Lcom/google/android/gms/internal/zzjn;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDD:Lcom/google/android/gms/internal/zzdh;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDE:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDF:Z

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDG:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDH:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDI:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzqR:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDJ:Lcom/google/android/gms/internal/zzdn;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDK:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDL:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzdh;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/internal/zzjn;ZILjava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdn;)V
    .locals 2
    .param p1, "adClickListener"    # Lcom/google/android/gms/ads/internal/client/zza;
    .param p2, "adOverlayListener"    # Lcom/google/android/gms/ads/internal/overlay/zzg;
    .param p3, "appEventGmsgListener"    # Lcom/google/android/gms/internal/zzdh;
    .param p4, "leaveApplicationListener"    # Lcom/google/android/gms/ads/internal/overlay/zzn;
    .param p5, "adWebView"    # Lcom/google/android/gms/internal/zzjn;
    .param p6, "customClose"    # Z
    .param p7, "orientation"    # I
    .param p8, "url"    # Ljava/lang/String;
    .param p9, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .param p10, "inAppPurchaseGmsgListener"    # Lcom/google/android/gms/internal/zzdn;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->versionCode:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDz:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDA:Lcom/google/android/gms/ads/internal/client/zza;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDB:Lcom/google/android/gms/ads/internal/overlay/zzg;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDC:Lcom/google/android/gms/internal/zzjn;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDD:Lcom/google/android/gms/internal/zzdh;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDE:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDF:Z

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDG:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDH:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDI:I

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzqR:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDJ:Lcom/google/android/gms/internal/zzdn;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDK:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDL:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzdh;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/internal/zzjn;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdn;)V
    .locals 2
    .param p1, "adClickListener"    # Lcom/google/android/gms/ads/internal/client/zza;
    .param p2, "adOverlayListener"    # Lcom/google/android/gms/ads/internal/overlay/zzg;
    .param p3, "appEventGmsgListener"    # Lcom/google/android/gms/internal/zzdh;
    .param p4, "leaveApplicationListener"    # Lcom/google/android/gms/ads/internal/overlay/zzn;
    .param p5, "adWebView"    # Lcom/google/android/gms/internal/zzjn;
    .param p6, "customClose"    # Z
    .param p7, "orientation"    # I
    .param p8, "html"    # Ljava/lang/String;
    .param p9, "baseUrl"    # Ljava/lang/String;
    .param p10, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .param p11, "inAppPurchaseGmsgListener"    # Lcom/google/android/gms/internal/zzdn;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->versionCode:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDz:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDA:Lcom/google/android/gms/ads/internal/client/zza;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDB:Lcom/google/android/gms/ads/internal/overlay/zzg;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDC:Lcom/google/android/gms/internal/zzjn;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDD:Lcom/google/android/gms/internal/zzdh;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDE:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDF:Z

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDG:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDH:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDI:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzqR:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDJ:Lcom/google/android/gms/internal/zzdn;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDK:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDL:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 3
    .param p1, "adLauncherIntentInfo"    # Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;
    .param p2, "adClickListener"    # Lcom/google/android/gms/ads/internal/client/zza;
    .param p3, "adOverlayListener"    # Lcom/google/android/gms/ads/internal/overlay/zzg;
    .param p4, "leaveApplicationListener"    # Lcom/google/android/gms/ads/internal/overlay/zzn;
    .param p5, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDz:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDA:Lcom/google/android/gms/ads/internal/client/zza;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDB:Lcom/google/android/gms/ads/internal/overlay/zzg;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDC:Lcom/google/android/gms/internal/zzjn;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDD:Lcom/google/android/gms/internal/zzdh;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDE:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDF:Z

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDG:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDH:Lcom/google/android/gms/ads/internal/overlay/zzn;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDI:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzqR:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDJ:Lcom/google/android/gms/internal/zzdn;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDK:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDL:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    return-void
.end method

.method public static zza(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method

.method public static zzb(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;
    .locals 2

    :try_start_0
    const-string v0, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzf;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzfh()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDA:Lcom/google/android/gms/ads/internal/client/zza;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzB(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzfi()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDB:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzB(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzfj()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDC:Lcom/google/android/gms/internal/zzjn;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzB(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzfk()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDD:Lcom/google/android/gms/internal/zzdh;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzB(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzfl()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDJ:Lcom/google/android/gms/internal/zzdn;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzB(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzfm()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzDH:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzB(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
