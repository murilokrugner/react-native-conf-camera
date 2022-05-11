import { NativeModules, Platform } from 'react-native';

const LINKING_ERROR =
  `The package 'react-native-conf-camera' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo managed workflow\n';

const ConfCamera = NativeModules.ConfCamera
  ? NativeModules.ConfCamera
  : new Proxy(
      {},
      {
        get() {
          throw new Error(LINKING_ERROR);
        },
      }
    );

export function openCamera(): Promise<string> {
  return ConfCamera.openCamera();
}
