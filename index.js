
import { NativeModules } from 'react-native';

const { RNRoiToast } = NativeModules;

export default {
    show: function(text) {
        RNRoiToast.show(text);
    }
};

export default RNRoiToast;
