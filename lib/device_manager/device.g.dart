// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rssiHash() => r'8ee600f40887629b80da91c83a7ea016f4499386';

/// See also [rssi].
@ProviderFor(rssi)
final rssiProvider = AutoDisposeStreamProvider<int>.internal(
  rssi,
  name: r'rssiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$rssiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RssiRef = AutoDisposeStreamProviderRef<int>;
String _$batteryHash() => r'd011c05bf7bb23f1a99136fa9e2a1262b02d61d4';

/// See also [battery].
@ProviderFor(battery)
final batteryProvider = AutoDisposeStreamProvider<int>.internal(
  battery,
  name: r'batteryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$batteryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BatteryRef = AutoDisposeStreamProviderRef<int>;
String _$currentDeviceHash() => r'7703f30584c43d9e1723f63fb0159d7d89aaa179';

/// See also [CurrentDevice].
@ProviderFor(CurrentDevice)
final currentDeviceProvider =
    AutoDisposeNotifierProvider<CurrentDevice, Device?>.internal(
  CurrentDevice.new,
  name: r'currentDeviceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentDeviceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CurrentDevice = AutoDisposeNotifier<Device?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
