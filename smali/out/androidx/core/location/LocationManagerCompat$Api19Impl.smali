.class Landroidx/core/location/LocationManagerCompat$Api19Impl;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# static fields
.field private static sLocationRequestClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1209
    return-void
.end method

.method static tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationListenerCompat;Landroid/os/Looper;)Z
    .registers 13
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationRequest"    # Landroidx/core/location/LocationRequestCompat;
    .param p3, "listener"    # Landroidx/core/location/LocationListenerCompat;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 1256
    nop

    .line 1258
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    if-nez v1, :cond_e

    .line 1259
    const-string v1, "android.location.LocationRequest"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    .line 1262
    :cond_e
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v1, :cond_31

    .line 1263
    const-class v1, Landroid/location/LocationManager;

    const-string/jumbo v5, "requestLocationUpdates"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    aput-object v7, v6, v0

    const-class v7, Landroid/location/LocationListener;

    aput-object v7, v6, v4

    const-class v7, Landroid/os/Looper;

    aput-object v7, v6, v2

    .line 1264
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    .line 1268
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1271
    :cond_31
    invoke-virtual {p2, p1}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v1

    .line 1272
    .local v1, "request":Landroid/location/LocationRequest;
    if-eqz v1, :cond_45

    .line 1273
    sget-object v5, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    aput-object p3, v3, v4

    aput-object p4, v3, v2

    invoke-virtual {v5, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_44} :catch_4e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_44} :catch_4c
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_44} :catch_4a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_44} :catch_48
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_44} :catch_46

    .line 1275
    return v4

    .line 1283
    .end local v1    # "request":Landroid/location/LocationRequest;
    :cond_45
    goto :goto_4f

    .line 1277
    :catch_46
    move-exception v1

    goto :goto_4f

    :catch_48
    move-exception v1

    goto :goto_4f

    :catch_4a
    move-exception v1

    goto :goto_4f

    :catch_4c
    move-exception v1

    goto :goto_4f

    :catch_4e
    move-exception v1

    .line 1285
    :goto_4f
    return v0
.end method

.method static tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)Z
    .registers 12
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationRequest"    # Landroidx/core/location/LocationRequestCompat;
    .param p3, "transport"    # Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    .line 1217
    nop

    .line 1219
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    if-nez v1, :cond_e

    .line 1220
    const-string v1, "android.location.LocationRequest"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    .line 1222
    :cond_e
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v1, :cond_31

    .line 1223
    const-class v1, Landroid/location/LocationManager;

    const-string/jumbo v5, "requestLocationUpdates"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    aput-object v7, v6, v0

    const-class v7, Landroid/location/LocationListener;

    aput-object v7, v6, v4

    const-class v7, Landroid/os/Looper;

    aput-object v7, v6, v2

    .line 1224
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    .line 1228
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1231
    :cond_31
    invoke-virtual {p2, p1}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v1

    .line 1232
    .local v1, "request":Landroid/location/LocationRequest;
    if-eqz v1, :cond_53

    .line 1233
    sget-object v5, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    monitor-enter v5
    :try_end_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_3a} :catch_5c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_3a} :catch_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_3a} :catch_58
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_3a} :catch_56
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_3a} :catch_54

    .line 1234
    :try_start_3a
    sget-object v6, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    aput-object p3, v3, v4

    .line 1235
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    aput-object v7, v3, v2

    .line 1234
    invoke-virtual {v6, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    invoke-static {p0, p3}, Landroidx/core/location/LocationManagerCompat;->registerLocationListenerTransport(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)V

    .line 1237
    monitor-exit v5

    return v4

    .line 1238
    :catchall_50
    move-exception v2

    monitor-exit v5
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_50

    .end local p0    # "locationManager":Landroid/location/LocationManager;
    .end local p1    # "provider":Ljava/lang/String;
    .end local p2    # "locationRequest":Landroidx/core/location/LocationRequestCompat;
    .end local p3    # "transport":Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
    :try_start_52
    throw v2
    :try_end_53
    .catch Ljava/lang/NoSuchMethodException; {:try_start_52 .. :try_end_53} :catch_5c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_52 .. :try_end_53} :catch_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_52 .. :try_end_53} :catch_58
    .catch Ljava/lang/ClassNotFoundException; {:try_start_52 .. :try_end_53} :catch_56
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_52 .. :try_end_53} :catch_54

    .line 1246
    .end local v1    # "request":Landroid/location/LocationRequest;
    .restart local p0    # "locationManager":Landroid/location/LocationManager;
    .restart local p1    # "provider":Ljava/lang/String;
    .restart local p2    # "locationRequest":Landroidx/core/location/LocationRequestCompat;
    .restart local p3    # "transport":Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
    :cond_53
    goto :goto_5d

    .line 1240
    :catch_54
    move-exception v1

    goto :goto_5d

    :catch_56
    move-exception v1

    goto :goto_5d

    :catch_58
    move-exception v1

    goto :goto_5d

    :catch_5a
    move-exception v1

    goto :goto_5d

    :catch_5c
    move-exception v1

    .line 1248
    :goto_5d
    return v0
.end method
