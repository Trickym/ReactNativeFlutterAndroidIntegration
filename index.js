import React, { useState } from "react";
import {
  AppRegistry,
  StyleSheet,
  Text,
  TextInput,
  Pressable,
  View,
} from "react-native";
import DateTimePickerModal from "react-native-modal-datetime-picker";
import DropDownPicker from "react-native-dropdown-picker";
import RadioGroup from "react-native-radio-buttons-group";
const UselessTextInput = (props) => {
  return <TextInput {...props} editable maxLength={40} />;
};
const HelloWorld = () => {
  const radioButtonsData = [
    {
      id: "1", // acts as primary key, should be unique and non-empty string
      label: "Beginner",
      value: "1",
    },
    {
      id: "2",
      label: "Amateur",
      value: "2",
    },
    {
      id: "3",
      label: "Pro",
      value: "3",
    },
  ];
  const [show, setShow] = useState(false);
  const [date, setDate] = useState("Enter D.O.B");
  const [open, setOpen] = useState(false);
  const [value, setValue] = useState(null);
  const [items, setItems] = useState([
    { label: "Male", value: "male" },
    { label: "Female", value: "female" },
    { label: "Others", value: "others" },
  ]);
  const [radioButtons, setRadioButtons] = useState(radioButtonsData);
  const [isDatePickerVisible, setDatePickerVisibility] = useState(false);

  const showDatePicker = () => {
    setDatePickerVisibility(true);
  };

  const hideDatePicker = () => {
    setDatePickerVisibility(false);
  };

  const handleConfirm = (selectedDate) => {
    setDate(
      (
        selectedDate.getDate() +
        "/" +
        (selectedDate.getMonth() + 1) +
        "/" +
        selectedDate.getFullYear()
      ).toString()
    );
    hideDatePicker();
  };
  function onPressRadioButton(radioButtonsArray) {
    setRadioButtons(radioButtonsArray);
  }
  return (
    <View style={styles.container}>
      <Text style={{ margin: 12, textAlign: "center", fontSize: 18 }}>
        Register
      </Text>
      <View
        style={{
          display: "flex",
          flexDirection: "row",
          width: "100%",
          justifyContent: "space-between",
        }}
      >
        <View style={{ width: "48%" }}>
          <TextInput placeholder="First Name" style={styles.inputName} />
        </View>
        <View style={{ width: "48%" }}>
          <TextInput placeholder="Last Name" style={styles.inputName} />
        </View>
      </View>
      <View
        style={{
          display: "flex",
          flexDirection: "row",
          width: "100%",
          justifyContent: "space-between",
        }}
      >
        <View style={{ width: "48%" }}>
          <Text
            style={{
              height: 51,
              fontSize: 16,
              borderWidth: 1,
              padding: 10,
              borderRadius: 5,
              marginVertical: 12,
            }}
            onPress={showDatePicker}
          >
            {date}
          </Text>
          <DateTimePickerModal
            isVisible={isDatePickerVisible}
            mode="date"
            onConfirm={handleConfirm}
            onCancel={hideDatePicker}
          />
        </View>
        <View style={{ width: "48%" }}>
          <DropDownPicker
            style={styles.inputName}
            open={open}
            value={value}
            items={items}
            placeholder="Gender"
            setOpen={setOpen}
            setValue={setValue}
            setItems={setItems}
          />
        </View>
      </View>
      <TextInput
        style={styles.input}
        keyboardType={"email-address"}
        placeholder={"Email Address"}
      />
      <TextInput
        style={styles.input}
        keyboardType={"phone-pad"}
        placeholder={"Mobile Number"}
      />
      <UselessTextInput
        multiline
        numberOfLines={3}
        placeholder={"Address"}
        style={styles.textArea}
      />
      <View
        style={{
          display: "flex",
          flexDirection: "row",
          width: "100%",
          justifyContent: "space-between",
        }}
      >
        <View style={{ width: "48%" }}>
          <TextInput placeholder="State" style={styles.inputName} />
        </View>
        <View style={{ width: "48%" }}>
          <TextInput placeholder="City" style={styles.inputName} />
        </View>
      </View>
      <View
        style={{
          display: "flex",
          flexDirection: "row",
          width: "100%",
          justifyContent: "space-between",
        }}
      >
        <View style={{ width: "48%" }}>
          <TextInput
            placeholder="Postal Code"
            keyboardType="number-pad"
            style={styles.inputName}
          />
        </View>
        <View style={{ width: "48%" }}>
          <TextInput placeholder="Country" style={styles.inputName} />
        </View>
      </View>
      <RadioGroup
        layout="row"
        radioButtons={radioButtons}
        onPress={onPressRadioButton}
      />
      <Pressable
        onPress={() => {
          ToastAndroid.show("React Native Form", ToastAndroid.SHORT);
        }}
        style={styles.button}
      >
        <Text style={{ color: "white", fontSize: 16, fontWeight: "600" }}>
          Submit
        </Text>
      </Pressable>
    </View>
  );
};
// var styles = StyleSheet.create({
//   container: {
//     flex: 1,
//     justifyContent: 'center'
//   },
//   hello: {
//     fontSize: 20,
//     textAlign: 'center',
//     margin: 10
//   }
// });
const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fff",
    alignItems: "center",
    justifyContent: "center",
    padding: 20,
  },
  button: {
    width: "100%",
    backgroundColor: "#764ABC",
    height: 40,
    borderRadius: 5,
    margin: 12,
    alignItems: "center",
    justifyContent: "center",
    elevation: 8,
  },
  text: {
    marginTop: 12,
    fontSize: 16,
    fontWeight: "600",
  },
  textArea: {
    width: "100%",
    fontSize: 16,
    margin: 12,
    borderWidth: 1,
    padding: 10,
    borderRadius: 5,
  },
  input: {
    width: "100%",
    height: 40,
    fontSize: 16,
    margin: 12,
    borderWidth: 1,
    padding: 10,
    borderRadius: 5,
  },
  inputName: {
    height: 40,
    fontSize: 16,
    borderWidth: 1,
    padding: 10,
    borderRadius: 5,
    marginVertical: 12,
  },
});
AppRegistry.registerComponent("ReactNativeScreen", () => HelloWorld);
