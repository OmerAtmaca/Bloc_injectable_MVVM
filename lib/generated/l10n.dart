// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Strings {
  Strings();

  static Strings? _current;

  static Strings get current {
    assert(_current != null,
        'No instance of Strings was loaded. Try to initialize the Strings delegate before accessing Strings.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Strings> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Strings();
      Strings._current = instance;

      return instance;
    });
  }

  static Strings of(BuildContext context) {
    final instance = Strings.maybeOf(context);
    assert(instance != null,
        'No instance of Strings present in the widget tree. Did you add Strings.delegate in localizationsDelegates?');
    return instance!;
  }

  static Strings? maybeOf(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone {
    return Intl.message(
      'Phone Number',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Name Surname`
  String get fullName {
    return Intl.message(
      'Name Surname',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Field cannot be left empty`
  String get fieldEmptyErrorMsg {
    return Intl.message(
      'Field cannot be left empty',
      name: 'fieldEmptyErrorMsg',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get inValidEmailErrorMsg {
    return Intl.message(
      'Please enter a valid email',
      name: 'inValidEmailErrorMsg',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get firstName {
    return Intl.message(
      'Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastName {
    return Intl.message(
      'Last Name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Surname`
  String get surname {
    return Intl.message(
      'Surname',
      name: 'surname',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Password should contain at least 6 characters`
  String get shortPasswordErrorMsg {
    return Intl.message(
      'Password should contain at least 6 characters',
      name: 'shortPasswordErrorMsg',
      desc: '',
      args: [],
    );
  }

  /// `Please check input fields!`
  String get inValidFieldsData {
    return Intl.message(
      'Please check input fields!',
      name: 'inValidFieldsData',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get logInButtonText {
    return Intl.message(
      'Continue',
      name: 'logInButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Welcome, please enter your phone number for login.`
  String get logInInfo {
    return Intl.message(
      'Welcome, please enter your phone number for login.',
      name: 'logInInfo',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your verification code sent via SMS to your phone number {phone}.`
  String otpInfo(Object phone) {
    return Intl.message(
      'Please enter your verification code sent via SMS to your phone number $phone.',
      name: 'otpInfo',
      desc: '',
      args: [phone],
    );
  }

  /// `Login`
  String get otpButtonText {
    return Intl.message(
      'Login',
      name: 'otpButtonText',
      desc: '',
      args: [],
    );
  }

  /// `send again`
  String get otpSendAgain {
    return Intl.message(
      'send again',
      name: 'otpSendAgain',
      desc: '',
      args: [],
    );
  }

  /// `{time} sec`
  String otpTimer(Object time) {
    return Intl.message(
      '$time sec',
      name: 'otpTimer',
      desc: '',
      args: [time],
    );
  }

  /// `SMS Confirmation`
  String get otpTitleText {
    return Intl.message(
      'SMS Confirmation',
      name: 'otpTitleText',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signupPageTitle {
    return Intl.message(
      'Sign Up',
      name: 'signupPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `{step} / {totalStep}`
  String stepAndTotalStep(Object step, Object totalStep) {
    return Intl.message(
      '$step / $totalStep',
      name: 'stepAndTotalStep',
      desc: '',
      args: [step, totalStep],
    );
  }

  /// `Personal Information`
  String get signupPagePersonalInformation {
    return Intl.message(
      'Personal Information',
      name: 'signupPagePersonalInformation',
      desc: '',
      args: [],
    );
  }

  /// `Adress Detail`
  String get signupPageAddressInformation {
    return Intl.message(
      'Adress Detail',
      name: 'signupPageAddressInformation',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get signupPageAppBarSkip {
    return Intl.message(
      'Skip',
      name: 'signupPageAppBarSkip',
      desc: '',
      args: [],
    );
  }

  /// `Address Type`
  String get addressType {
    return Intl.message(
      'Address Type',
      name: 'addressType',
      desc: '',
      args: [],
    );
  }

  /// `Address Title`
  String get addressTitle {
    return Intl.message(
      'Address Title',
      name: 'addressTitle',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get addressCountry {
    return Intl.message(
      'Country',
      name: 'addressCountry',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get addressCity {
    return Intl.message(
      'City',
      name: 'addressCity',
      desc: '',
      args: [],
    );
  }

  /// `District`
  String get addressDistrict {
    return Intl.message(
      'District',
      name: 'addressDistrict',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get signupPageAddress {
    return Intl.message(
      'Address',
      name: 'signupPageAddress',
      desc: '',
      args: [],
    );
  }

  /// `Building Num.`
  String get addressBuildingNumber {
    return Intl.message(
      'Building Num.',
      name: 'addressBuildingNumber',
      desc: '',
      args: [],
    );
  }

  /// `Address Detail`
  String get addressDetail {
    return Intl.message(
      'Address Detail',
      name: 'addressDetail',
      desc: '',
      args: [],
    );
  }

  /// `Address Directions`
  String get addressDirections {
    return Intl.message(
      'Address Directions',
      name: 'addressDirections',
      desc: '',
      args: [],
    );
  }

  /// `Floor`
  String get addressFlor {
    return Intl.message(
      'Floor',
      name: 'addressFlor',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get signupPageTwoButtonTitle {
    return Intl.message(
      'Register',
      name: 'signupPageTwoButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Apartment Num.`
  String get addressApartmentNumber {
    return Intl.message(
      'Apartment Num.',
      name: 'addressApartmentNumber',
      desc: '',
      args: [],
    );
  }

  /// `You can access detailed information about the processing of your personal data (KVKK) here.`
  String get signupPageKVKK {
    return Intl.message(
      'You can access detailed information about the processing of your personal data (KVKK) here.',
      name: 'signupPageKVKK',
      desc: '',
      args: [],
    );
  }

  /// `here`
  String get signupPageKVKKUnderlined {
    return Intl.message(
      'here',
      name: 'signupPageKVKKUnderlined',
      desc: '',
      args: [],
    );
  }

  /// `I approve the Customer Express Consent Form`
  String get signupPageConsentForm {
    return Intl.message(
      'I approve the Customer Express Consent Form',
      name: 'signupPageConsentForm',
      desc: '',
      args: [],
    );
  }

  /// `Customer Express Consent Form`
  String get signupPageConsentFormUnderlined {
    return Intl.message(
      'Customer Express Consent Form',
      name: 'signupPageConsentFormUnderlined',
      desc: '',
      args: [],
    );
  }

  /// `Character List`
  String get characterList {
    return Intl.message(
      'Character List',
      name: 'characterList',
      desc: '',
      args: [],
    );
  }

  /// `Hello,`
  String get profileHello {
    return Intl.message(
      'Hello,',
      name: 'profileHello',
      desc: '',
      args: [],
    );
  }

  /// `Subscriptions`
  String get profileSubscriptions {
    return Intl.message(
      'Subscriptions',
      name: 'profileSubscriptions',
      desc: '',
      args: [],
    );
  }

  /// `Payment Methods`
  String get profilePaymentMethod {
    return Intl.message(
      'Payment Methods',
      name: 'profilePaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Addresses`
  String get profileAddresses {
    return Intl.message(
      'Addresses',
      name: 'profileAddresses',
      desc: '',
      args: [],
    );
  }

  /// `Devices`
  String get profileDevices {
    return Intl.message(
      'Devices',
      name: 'profileDevices',
      desc: '',
      args: [],
    );
  }

  /// `Past Failures`
  String get profilePastFailures {
    return Intl.message(
      'Past Failures',
      name: 'profilePastFailures',
      desc: '',
      args: [],
    );
  }

  /// `Frequently Asked Questions`
  String get profileFrequentlyAskedQuestions {
    return Intl.message(
      'Frequently Asked Questions',
      name: 'profileFrequentlyAskedQuestions',
      desc: '',
      args: [],
    );
  }

  /// `Sign Out`
  String get profileSignOut {
    return Intl.message(
      'Sign Out',
      name: 'profileSignOut',
      desc: '',
      args: [],
    );
  }

  /// `Cebinizdeki usta tek tuşla yanınızda.`
  String get onboardingStepOneTitle {
    return Intl.message(
      'Cebinizdeki usta tek tuşla yanınızda.',
      name: 'onboardingStepOneTitle',
      desc: '',
      args: [],
    );
  }

  /// `Güvenebileceğiniz eğitimli, çatalıyla değil ustalığıyla konuşulan ekipler.`
  String get onboardingStepOneDesc {
    return Intl.message(
      'Güvenebileceğiniz eğitimli, çatalıyla değil ustalığıyla konuşulan ekipler.',
      name: 'onboardingStepOneDesc',
      desc: '',
      args: [],
    );
  }

  /// `7/24 Erişilebilirlik`
  String get onboardingStepTwoTitle {
    return Intl.message(
      '7/24 Erişilebilirlik',
      name: 'onboardingStepTwoTitle',
      desc: '',
      args: [],
    );
  }

  /// `Nerede olursanız olun ve neye ihtiyacınız varsa, ister Tesisatçı, Elektrikçi, Boyacı, Klima vb. Obirusta bunu hızlı hale getirir.`
  String get onboardingStepTwoDesc {
    return Intl.message(
      'Nerede olursanız olun ve neye ihtiyacınız varsa, ister Tesisatçı, Elektrikçi, Boyacı, Klima vb. Obirusta bunu hızlı hale getirir.',
      name: 'onboardingStepTwoDesc',
      desc: '',
      args: [],
    );
  }

  /// `Mükemmel Müşteri Deneyimi`
  String get onboardingStepThreeTitle {
    return Intl.message(
      'Mükemmel Müşteri Deneyimi',
      name: 'onboardingStepThreeTitle',
      desc: '',
      args: [],
    );
  }

  /// `İhtiyacınızı birkaç dokunuşla tamamlayın, elektronik ve güvenli bir şekilde ödeme yapın ve değerli geri bildirimlerinizi bırakın`
  String get onboardingStepThreeDesc {
    return Intl.message(
      'İhtiyacınızı birkaç dokunuşla tamamlayın, elektronik ve güvenli bir şekilde ödeme yapın ve değerli geri bildirimlerinizi bırakın',
      name: 'onboardingStepThreeDesc',
      desc: '',
      args: [],
    );
  }

  /// `Güvenlik & Gizlilik`
  String get onboardingStepFourTitle {
    return Intl.message(
      'Güvenlik & Gizlilik',
      name: 'onboardingStepFourTitle',
      desc: '',
      args: [],
    );
  }

  /// `Soruna özel usta yönlendirme. İster abone olun, ister tek seferlik hizmet alın, herşey kontrol altında!`
  String get onboardingStepFourDesc {
    return Intl.message(
      'Soruna özel usta yönlendirme. İster abone olun, ister tek seferlik hizmet alın, herşey kontrol altında!',
      name: 'onboardingStepFourDesc',
      desc: '',
      args: [],
    );
  }

  /// `Hemen Başla`
  String get onboardingStartNow {
    return Intl.message(
      'Hemen Başla',
      name: 'onboardingStartNow',
      desc: '',
      args: [],
    );
  }

  /// `Welcome, `
  String get welcome {
    return Intl.message(
      'Welcome, ',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `What kind of service do you need?`
  String get WhatKindOfServiceDoYouNeed {
    return Intl.message(
      'What kind of service do you need?',
      name: 'WhatKindOfServiceDoYouNeed',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get seeAll {
    return Intl.message(
      'See All',
      name: 'seeAll',
      desc: '',
      args: [],
    );
  }

  /// `Why should I subscribe?`
  String get whyShouldISubscribe {
    return Intl.message(
      'Why should I subscribe?',
      name: 'whyShouldISubscribe',
      desc: '',
      args: [],
    );
  }

  /// `Find out the advantages of subscribing to Obirusta now!`
  String get subscriptionsAdvantages {
    return Intl.message(
      'Find out the advantages of subscribing to Obirusta now!',
      name: 'subscriptionsAdvantages',
      desc: '',
      args: [],
    );
  }

  /// `Review Now`
  String get reviewNow {
    return Intl.message(
      'Review Now',
      name: 'reviewNow',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Subscriptions`
  String get subscriptions {
    return Intl.message(
      'Subscriptions',
      name: 'subscriptions',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Painting`
  String get painting {
    return Intl.message(
      'Painting',
      name: 'painting',
      desc: '',
      args: [],
    );
  }

  /// `Installation`
  String get installation {
    return Intl.message(
      'Installation',
      name: 'installation',
      desc: '',
      args: [],
    );
  }

  /// `Bath`
  String get bath {
    return Intl.message(
      'Bath',
      name: 'bath',
      desc: '',
      args: [],
    );
  }

  /// `Air Conditioner`
  String get airConditioner {
    return Intl.message(
      'Air Conditioner',
      name: 'airConditioner',
      desc: '',
      args: [],
    );
  }

  /// `Electricity`
  String get electricity {
    return Intl.message(
      'Electricity',
      name: 'electricity',
      desc: '',
      args: [],
    );
  }

  /// `Kitchen`
  String get kitchen {
    return Intl.message(
      'Kitchen',
      name: 'kitchen',
      desc: '',
      args: [],
    );
  }

  /// `Garden`
  String get garden {
    return Intl.message(
      'Garden',
      name: 'garden',
      desc: '',
      args: [],
    );
  }

  /// `Sink`
  String get sink {
    return Intl.message(
      'Sink',
      name: 'sink',
      desc: '',
      args: [],
    );
  }

  /// `Combi Boiler`
  String get combi {
    return Intl.message(
      'Combi Boiler',
      name: 'combi',
      desc: '',
      args: [],
    );
  }

  /// `Elevator`
  String get elevator {
    return Intl.message(
      'Elevator',
      name: 'elevator',
      desc: '',
      args: [],
    );
  }

  /// `Tanıtımı Geç`
  String get skipOnBoarding {
    return Intl.message(
      'Tanıtımı Geç',
      name: 'skipOnBoarding',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone`
  String get inValidPhoneErrorMsg {
    return Intl.message(
      'Please enter a valid phone',
      name: 'inValidPhoneErrorMsg',
      desc: '',
      args: [],
    );
  }

  /// `Cihazlarım`
  String get myDevicesPageTitle {
    return Intl.message(
      'Cihazlarım',
      name: 'myDevicesPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Yeni Cihaz Ekle`
  String get myDevicesEmptyButtonTitle {
    return Intl.message(
      'Yeni Cihaz Ekle',
      name: 'myDevicesEmptyButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Cihazınız bulunmamaktadır.`
  String get myDevicesEmptyBodyDesc {
    return Intl.message(
      'Cihazınız bulunmamaktadır.',
      name: 'myDevicesEmptyBodyDesc',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error occurred`
  String get unexpectedError {
    return Intl.message(
      'An unexpected error occurred',
      name: 'unexpectedError',
      desc: '',
      args: [],
    );
  }

  /// `+ Yeni Cihaz Ekle`
  String get addNewDevice {
    return Intl.message(
      '+ Yeni Cihaz Ekle',
      name: 'addNewDevice',
      desc: '',
      args: [],
    );
  }

  /// `Servisi iptal etme durumunda abonelik kullanım hakkınız düşecektir.`
  String get cancelServiceBottomSheetTitle {
    return Intl.message(
      'Servisi iptal etme durumunda abonelik kullanım hakkınız düşecektir.',
      name: 'cancelServiceBottomSheetTitle',
      desc: '',
      args: [],
    );
  }

  /// `İptal Et`
  String get cancelSubscription {
    return Intl.message(
      'İptal Et',
      name: 'cancelSubscription',
      desc: '',
      args: [],
    );
  }

  /// `Vazgeç`
  String get cancel {
    return Intl.message(
      'Vazgeç',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Bu numaraya ait bir hesap bulunamadı`
  String get accountNotFoundBottomSheetTitle {
    return Intl.message(
      'Bu numaraya ait bir hesap bulunamadı',
      name: 'accountNotFoundBottomSheetTitle',
      desc: '',
      args: [],
    );
  }

  /// `Şimdi Üye Ol`
  String get registerNow {
    return Intl.message(
      'Şimdi Üye Ol',
      name: 'registerNow',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get homeAddressType {
    return Intl.message(
      'Home',
      name: 'homeAddressType',
      desc: '',
      args: [],
    );
  }

  /// `Work`
  String get workAddressType {
    return Intl.message(
      'Work',
      name: 'workAddressType',
      desc: '',
      args: [],
    );
  }

  /// `Arızalarım`
  String get myMalfunctionsPageTitle {
    return Intl.message(
      'Arızalarım',
      name: 'myMalfunctionsPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Servis çağırmak istiyorum`
  String get myMalfunctionsEmptyButtonTitle {
    return Intl.message(
      'Servis çağırmak istiyorum',
      name: 'myMalfunctionsEmptyButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Üzgünüz henüz arıza kaydınız bulunmamaktadır.`
  String get myMalfunctionsEmptyBodyDesc {
    return Intl.message(
      'Üzgünüz henüz arıza kaydınız bulunmamaktadır.',
      name: 'myMalfunctionsEmptyBodyDesc',
      desc: '',
      args: [],
    );
  }

  /// `Aktif Arızalarım`
  String get activeMalfunctions {
    return Intl.message(
      'Aktif Arızalarım',
      name: 'activeMalfunctions',
      desc: '',
      args: [],
    );
  }

  /// `Geçmiş Arızalarım`
  String get pastMalfunctions {
    return Intl.message(
      'Geçmiş Arızalarım',
      name: 'pastMalfunctions',
      desc: '',
      args: [],
    );
  }

  /// `Onarım Tamamlandı`
  String get malfunctionCompletedMsg {
    return Intl.message(
      'Onarım Tamamlandı',
      name: 'malfunctionCompletedMsg',
      desc: '',
      args: [],
    );
  }

  /// `Servis Çağrısı Oluşturuldu`
  String get malfunctionCreatedMsg {
    return Intl.message(
      'Servis Çağrısı Oluşturuldu',
      name: 'malfunctionCreatedMsg',
      desc: '',
      args: [],
    );
  }

  /// `Onarım Tamamlanamadı`
  String get malfunctionFailedMsg {
    return Intl.message(
      'Onarım Tamamlanamadı',
      name: 'malfunctionFailedMsg',
      desc: '',
      args: [],
    );
  }

  /// `The image couldn't upload try again later`
  String get imageCouldntUpload {
    return Intl.message(
      'The image couldn\'t upload try again later',
      name: 'imageCouldntUpload',
      desc: '',
      args: [],
    );
  }

  /// `Usta Aranıyor...`
  String get craftsmanSearchingTitle {
    return Intl.message(
      'Usta Aranıyor...',
      name: 'craftsmanSearchingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Usta Atandı`
  String get craftsmanAppointedTitle {
    return Intl.message(
      'Usta Atandı',
      name: 'craftsmanAppointedTitle',
      desc: '',
      args: [],
    );
  }

  /// `Usta Atandı Ama Yola Çıkmadı`
  String get craftsmanAppointedButDidNotDepart {
    return Intl.message(
      'Usta Atandı Ama Yola Çıkmadı',
      name: 'craftsmanAppointedButDidNotDepart',
      desc: '',
      args: [],
    );
  }

  /// `Usta Adreste.`
  String get craftsmanOnTheAddressTitle {
    return Intl.message(
      'Usta Adreste.',
      name: 'craftsmanOnTheAddressTitle',
      desc: '',
      args: [],
    );
  }

  /// `Usta Yola Çıktı.`
  String get craftsmanOnTheWayTitle {
    return Intl.message(
      'Usta Yola Çıktı.',
      name: 'craftsmanOnTheWayTitle',
      desc: '',
      args: [],
    );
  }

  /// `Usta Onarıma Başladı`
  String get craftsmanStartedTitle {
    return Intl.message(
      'Usta Onarıma Başladı',
      name: 'craftsmanStartedTitle',
      desc: '',
      args: [],
    );
  }

  /// `Bu işlem birkaç dakika alabilir.`
  String get craftsmanSearchingSubtitle {
    return Intl.message(
      'Bu işlem birkaç dakika alabilir.',
      name: 'craftsmanSearchingSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Usta yola çıktığında bilgi vereceğiz`
  String get craftsmanAppointedSubtitle {
    return Intl.message(
      'Usta yola çıktığında bilgi vereceğiz',
      name: 'craftsmanAppointedSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Ustanızı harita üzerinden takip edebilirsiniz.`
  String get craftsmanOnTheWaySubtitle {
    return Intl.message(
      'Ustanızı harita üzerinden takip edebilirsiniz.',
      name: 'craftsmanOnTheWaySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Ustanız Adresinizde.`
  String get craftsmanOnTheAddressSubtitle {
    return Intl.message(
      'Ustanız Adresinizde.',
      name: 'craftsmanOnTheAddressSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Detaylar`
  String get details {
    return Intl.message(
      'Detaylar',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Takip Et`
  String get followCraftsman {
    return Intl.message(
      'Takip Et',
      name: 'followCraftsman',
      desc: '',
      args: [],
    );
  }

  /// `İptal Et`
  String get cancelCraftsman {
    return Intl.message(
      'İptal Et',
      name: 'cancelCraftsman',
      desc: '',
      args: [],
    );
  }

  /// `Bildirimlerim`
  String get notificationsPageTitle {
    return Intl.message(
      'Bildirimlerim',
      name: 'notificationsPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Henüz bir bildiriminiz bulunmamaktadır.`
  String get notificationsEmptyBodyDesc {
    return Intl.message(
      'Henüz bir bildiriminiz bulunmamaktadır.',
      name: 'notificationsEmptyBodyDesc',
      desc: '',
      args: [],
    );
  }

  /// `Memnun Kaldınız mı?`
  String get reviewCraftsmanPageTitle {
    return Intl.message(
      'Memnun Kaldınız mı?',
      name: 'reviewCraftsmanPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `O Bir Usta hizmetini puanlayabilir ve yorum yapabilirsiniz.`
  String get reviewCraftsmanYouCanReview {
    return Intl.message(
      'O Bir Usta hizmetini puanlayabilir ve yorum yapabilirsiniz.',
      name: 'reviewCraftsmanYouCanReview',
      desc: '',
      args: [],
    );
  }

  /// `Puan`
  String get point {
    return Intl.message(
      'Puan',
      name: 'point',
      desc: '',
      args: [],
    );
  }

  /// `Ustaya yorum yap`
  String get reviewCraftsman {
    return Intl.message(
      'Ustaya yorum yap',
      name: 'reviewCraftsman',
      desc: '',
      args: [],
    );
  }

  /// `Ustanıza Bahşiş Bırakabilirsiniz.`
  String get youCanTipCraftsman {
    return Intl.message(
      'Ustanıza Bahşiş Bırakabilirsiniz.',
      name: 'youCanTipCraftsman',
      desc: '',
      args: [],
    );
  }

  /// `Gönder`
  String get sendReview {
    return Intl.message(
      'Gönder',
      name: 'sendReview',
      desc: '',
      args: [],
    );
  }

  /// `Vazgeç`
  String get cancelReview {
    return Intl.message(
      'Vazgeç',
      name: 'cancelReview',
      desc: '',
      args: [],
    );
  }

  /// `₺ {price}`
  String priceWithTrySymbol(Object price) {
    return Intl.message(
      '₺ $price',
      name: 'priceWithTrySymbol',
      desc: '',
      args: [price],
    );
  }

  /// `Not Eklemek İstiyorum`
  String get wannaWriteNote {
    return Intl.message(
      'Not Eklemek İstiyorum',
      name: 'wannaWriteNote',
      desc: '',
      args: [],
    );
  }

  /// `Anlık Servis Çağrısı - Usta Bekleniyor`
  String get malfunctionPendingMsg {
    return Intl.message(
      'Anlık Servis Çağrısı - Usta Bekleniyor',
      name: 'malfunctionPendingMsg',
      desc: '',
      args: [],
    );
  }

  /// `Anlık Servis Çağrısı - Usta Atandı`
  String get malfunctionAssignedMsg {
    return Intl.message(
      'Anlık Servis Çağrısı - Usta Atandı',
      name: 'malfunctionAssignedMsg',
      desc: '',
      args: [],
    );
  }

  /// `Fotoğraf Ekle`
  String get addPhoto {
    return Intl.message(
      'Fotoğraf Ekle',
      name: 'addPhoto',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while picking file`
  String get pickingFileErrorText {
    return Intl.message(
      'An error occurred while picking file',
      name: 'pickingFileErrorText',
      desc: '',
      args: [],
    );
  }

  /// `You already reached the max file count`
  String get maxFileErrorText {
    return Intl.message(
      'You already reached the max file count',
      name: 'maxFileErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Tebrikler`
  String get congrats {
    return Intl.message(
      'Tebrikler',
      name: 'congrats',
      desc: '',
      args: [],
    );
  }

  /// `Ödeme Yöntemlerim`
  String get myPaymentsPageTitle {
    return Intl.message(
      'Ödeme Yöntemlerim',
      name: 'myPaymentsPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Ödeme Yöntemi Ekle`
  String get myPaymentsEmptyButtonTitle {
    return Intl.message(
      'Ödeme Yöntemi Ekle',
      name: 'myPaymentsEmptyButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Üzgünüz henüz bir ödeme yönteminiz bulunmamaktadır.`
  String get myPaymentsEmptyBodyDesc {
    return Intl.message(
      'Üzgünüz henüz bir ödeme yönteminiz bulunmamaktadır.',
      name: 'myPaymentsEmptyBodyDesc',
      desc: '',
      args: [],
    );
  }

  /// `+ Yeni Ödeme Yöntemi Ekle`
  String get addNewPaymentMethod {
    return Intl.message(
      '+ Yeni Ödeme Yöntemi Ekle',
      name: 'addNewPaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Kart Numarası`
  String get creditCardNumber {
    return Intl.message(
      'Kart Numarası',
      name: 'creditCardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Sk. Tarihi`
  String get cardExpDate {
    return Intl.message(
      'Sk. Tarihi',
      name: 'cardExpDate',
      desc: '',
      args: [],
    );
  }

  /// `CVV`
  String get cvv {
    return Intl.message(
      'CVV',
      name: 'cvv',
      desc: '',
      args: [],
    );
  }

  /// `Kartınız iyzico altyapısı ile saklanacaktır`
  String get cardKeptIyzico {
    return Intl.message(
      'Kartınız iyzico altyapısı ile saklanacaktır',
      name: 'cardKeptIyzico',
      desc: '',
      args: [],
    );
  }

  /// `Ödeme Yöntemi Ekle`
  String get addPaymentMethod {
    return Intl.message(
      'Ödeme Yöntemi Ekle',
      name: 'addPaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `AA/YY formatında olmalıdır`
  String get expireDateFormatErrorMsg {
    return Intl.message(
      'AA/YY formatında olmalıdır',
      name: 'expireDateFormatErrorMsg',
      desc: '',
      args: [],
    );
  }

  /// `Kartın son kullanım tarihi geçmiş`
  String get cardExpirationPassedErrorMsg {
    return Intl.message(
      'Kartın son kullanım tarihi geçmiş',
      name: 'cardExpirationPassedErrorMsg',
      desc: '',
      args: [],
    );
  }

  /// `CVV 3 ya da 4 karakter olmalıdır`
  String get cvvFieldLengthErrorMsg {
    return Intl.message(
      'CVV 3 ya da 4 karakter olmalıdır',
      name: 'cvvFieldLengthErrorMsg',
      desc: '',
      args: [],
    );
  }

  /// `Geçersiz kredi kartı numarası`
  String get creditCardFieldInvalidNumberErrorMsg {
    return Intl.message(
      'Geçersiz kredi kartı numarası',
      name: 'creditCardFieldInvalidNumberErrorMsg',
      desc: '',
      args: [],
    );
  }

  /// `Geçersiz ay`
  String get invalidMonthErrorMsg {
    return Intl.message(
      'Geçersiz ay',
      name: 'invalidMonthErrorMsg',
      desc: '',
      args: [],
    );
  }

  /// `Kartınız eklenirken bir hata meydana geldi`
  String get errorAddingPaymentMethod {
    return Intl.message(
      'Kartınız eklenirken bir hata meydana geldi',
      name: 'errorAddingPaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Ödeme yönteminiz başarıyla eklendi`
  String get addPaymentMethodSuccessful {
    return Intl.message(
      'Ödeme yönteminiz başarıyla eklendi',
      name: 'addPaymentMethodSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Ödeme Yöntemi Ekle`
  String get addPaymentMethodPageTitle {
    return Intl.message(
      'Ödeme Yöntemi Ekle',
      name: 'addPaymentMethodPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Kart Sahibi`
  String get cardHolderLabel {
    return Intl.message(
      'Kart Sahibi',
      name: 'cardHolderLabel',
      desc: '',
      args: [],
    );
  }

  /// `AA/YY`
  String get cardExpDateFormatLabel {
    return Intl.message(
      'AA/YY',
      name: 'cardExpDateFormatLabel',
      desc: '',
      args: [],
    );
  }

  /// `Yeni Cihaz Ekle`
  String get addDevicePageTitle {
    return Intl.message(
      'Yeni Cihaz Ekle',
      name: 'addDevicePageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Cihazın Markası`
  String get brandOfDevice {
    return Intl.message(
      'Cihazın Markası',
      name: 'brandOfDevice',
      desc: '',
      args: [],
    );
  }

  /// `Cihazın Modeli`
  String get modelOfDevice {
    return Intl.message(
      'Cihazın Modeli',
      name: 'modelOfDevice',
      desc: '',
      args: [],
    );
  }

  /// `Cihazın Seri Numarası`
  String get serialOfDevice {
    return Intl.message(
      'Cihazın Seri Numarası',
      name: 'serialOfDevice',
      desc: '',
      args: [],
    );
  }

  /// `Cihazın Tipi`
  String get hardwareTypeOfDevice {
    return Intl.message(
      'Cihazın Tipi',
      name: 'hardwareTypeOfDevice',
      desc: '',
      args: [],
    );
  }

  /// `Cihazın Garanti Belgesini Ekle`
  String get addGuaranteeDocOfDevice {
    return Intl.message(
      'Cihazın Garanti Belgesini Ekle',
      name: 'addGuaranteeDocOfDevice',
      desc: '',
      args: [],
    );
  }

  /// `Cihazı Ekle`
  String get addDevice {
    return Intl.message(
      'Cihazı Ekle',
      name: 'addDevice',
      desc: '',
      args: [],
    );
  }

  /// `Adreslerim`
  String get myAddressesPageTitle {
    return Intl.message(
      'Adreslerim',
      name: 'myAddressesPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Yeni Adres Ekle`
  String get addAddressPageTitle {
    return Intl.message(
      'Yeni Adres Ekle',
      name: 'addAddressPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `+ Yeni Adres Ekle`
  String get addNewAddress {
    return Intl.message(
      '+ Yeni Adres Ekle',
      name: 'addNewAddress',
      desc: '',
      args: [],
    );
  }

  /// `Adresi Güncelle`
  String get updateAddressPageTitle {
    return Intl.message(
      'Adresi Güncelle',
      name: 'updateAddressPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Adresi Güncelle`
  String get updateAddressCTA {
    return Intl.message(
      'Adresi Güncelle',
      name: 'updateAddressCTA',
      desc: '',
      args: [],
    );
  }

  /// `What kind of service would you like to receive?`
  String get whatKindOfServiceWouldYouLikeToReceive {
    return Intl.message(
      'What kind of service would you like to receive?',
      name: 'whatKindOfServiceWouldYouLikeToReceive',
      desc: '',
      args: [],
    );
  }

  /// `Adresi Ekle`
  String get addAddressCTA {
    return Intl.message(
      'Adresi Ekle',
      name: 'addAddressCTA',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to remove the address?`
  String get deleteAddressWarning {
    return Intl.message(
      'Are you sure you want to remove the address?',
      name: 'deleteAddressWarning',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to remove the payment method?`
  String get deletePaymentWarning {
    return Intl.message(
      'Are you sure you want to remove the payment method?',
      name: 'deletePaymentWarning',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to remove the device??`
  String get deleteDeviceWarning {
    return Intl.message(
      'Are you sure you want to remove the device??',
      name: 'deleteDeviceWarning',
      desc: '',
      args: [],
    );
  }

  /// `We cannot offer this service to the address you have provided`
  String get weCannotOfferThisServiceToTheAddressYouHaveProvided {
    return Intl.message(
      'We cannot offer this service to the address you have provided',
      name: 'weCannotOfferThisServiceToTheAddressYouHaveProvided',
      desc: '',
      args: [],
    );
  }

  /// `Adres Ekle`
  String get addAddress {
    return Intl.message(
      'Adres Ekle',
      name: 'addAddress',
      desc: '',
      args: [],
    );
  }

  /// `Henüz adres bilginiz bulunmamaktadır.`
  String get addressNotFound {
    return Intl.message(
      'Henüz adres bilginiz bulunmamaktadır.',
      name: 'addressNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Bu hizmet bulunduğunuz bölgede kullanılmamaktadır.`
  String get serviceNotAvailable {
    return Intl.message(
      'Bu hizmet bulunduğunuz bölgede kullanılmamaktadır.',
      name: 'serviceNotAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Bu hizmete erişebilmek için lütfen önce adres ekleyiniz.`
  String get pleaseAddAddressFirst {
    return Intl.message(
      'Bu hizmete erişebilmek için lütfen önce adres ekleyiniz.',
      name: 'pleaseAddAddressFirst',
      desc: '',
      args: [],
    );
  }

  /// `Ön ödeme tutarı`
  String get advancePaymentPrice {
    return Intl.message(
      'Ön ödeme tutarı',
      name: 'advancePaymentPrice',
      desc: '',
      args: [],
    );
  }

  /// `Servis tutarı`
  String get servicePrice {
    return Intl.message(
      'Servis tutarı',
      name: 'servicePrice',
      desc: '',
      args: [],
    );
  }

  /// `Toplam`
  String get totalPrice {
    return Intl.message(
      'Toplam',
      name: 'totalPrice',
      desc: '',
      args: [],
    );
  }

  /// `Servis Çağırmak İstiyorum`
  String get wannaCallService {
    return Intl.message(
      'Servis Çağırmak İstiyorum',
      name: 'wannaCallService',
      desc: '',
      args: [],
    );
  }

  /// `Bu fiyat tahmini fiyattır. Değişiklik gösterebilir.`
  String get advancePaymentTooltipMessage {
    return Intl.message(
      'Bu fiyat tahmini fiyattır. Değişiklik gösterebilir.',
      name: 'advancePaymentTooltipMessage',
      desc: '',
      args: [],
    );
  }

  /// `Servis Zamanını Seç`
  String get chooseServiceTime {
    return Intl.message(
      'Servis Zamanını Seç',
      name: 'chooseServiceTime',
      desc: '',
      args: [],
    );
  }

  /// `Hemen Çağır`
  String get callNow {
    return Intl.message(
      'Hemen Çağır',
      name: 'callNow',
      desc: '',
      args: [],
    );
  }

  /// `Tarih Seç`
  String get chooseDate {
    return Intl.message(
      'Tarih Seç',
      name: 'chooseDate',
      desc: '',
      args: [],
    );
  }

  /// `Tahmini onarım tutarı`
  String get estimatedAmount {
    return Intl.message(
      'Tahmini onarım tutarı',
      name: 'estimatedAmount',
      desc: '',
      args: [],
    );
  }

  /// `Cihazı Güncelle`
  String get editDevice {
    return Intl.message(
      'Cihazı Güncelle',
      name: 'editDevice',
      desc: '',
      args: [],
    );
  }

  /// `Select Location`
  String get selectLocation {
    return Intl.message(
      'Select Location',
      name: 'selectLocation',
      desc: '',
      args: [],
    );
  }

  /// `Location permission is denied.`
  String get locationPermissionDenied {
    return Intl.message(
      'Location permission is denied.',
      name: 'locationPermissionDenied',
      desc: '',
      args: [],
    );
  }

  /// `Failed to Get Current Location`
  String get failedToGetCurrentLocation {
    return Intl.message(
      'Failed to Get Current Location',
      name: 'failedToGetCurrentLocation',
      desc: '',
      args: [],
    );
  }

  /// `Servis Detayı`
  String get confirmMalfunctionTitle {
    return Intl.message(
      'Servis Detayı',
      name: 'confirmMalfunctionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Arıza Notunuz`
  String get malfunctionNotes {
    return Intl.message(
      'Arıza Notunuz',
      name: 'malfunctionNotes',
      desc: '',
      args: [],
    );
  }

  /// `Ekstra Hizmetler`
  String get extraServices {
    return Intl.message(
      'Ekstra Hizmetler',
      name: 'extraServices',
      desc: '',
      args: [],
    );
  }

  /// `Güvenlik Hizmeti`
  String get securityService {
    return Intl.message(
      'Güvenlik Hizmeti',
      name: 'securityService',
      desc: '',
      args: [],
    );
  }

  /// `Ekstra hizmetler ve çıkabilecek ekstra parça masrafları için lütfen ödeme yöntemi seçin`
  String get extraServicesDesc {
    return Intl.message(
      'Ekstra hizmetler ve çıkabilecek ekstra parça masrafları için lütfen ödeme yöntemi seçin',
      name: 'extraServicesDesc',
      desc: '',
      args: [],
    );
  }

  /// `Servis Çağır`
  String get callService {
    return Intl.message(
      'Servis Çağır',
      name: 'callService',
      desc: '',
      args: [],
    );
  }

  /// `Not ekleme alanı boş bırakılamaz.`
  String get emptyUserNoteMessage {
    return Intl.message(
      'Not ekleme alanı boş bırakılamaz.',
      name: 'emptyUserNoteMessage',
      desc: '',
      args: [],
    );
  }

  /// `Onarım talebiniz başarıyla oluşturuldu. Ustamız gerekli incelemeleri sağlayıp adresinize gelecektir. Eğer gerekli görülürse ustamız tarafından aranacaksınız.`
  String get malfunctionCreatedCongratsDesc {
    return Intl.message(
      'Onarım talebiniz başarıyla oluşturuldu. Ustamız gerekli incelemeleri sağlayıp adresinize gelecektir. Eğer gerekli görülürse ustamız tarafından aranacaksınız.',
      name: 'malfunctionCreatedCongratsDesc',
      desc: '',
      args: [],
    );
  }

  /// `Tercih edilen adres yap`
  String get setAsPrimaryAddress {
    return Intl.message(
      'Tercih edilen adres yap',
      name: 'setAsPrimaryAddress',
      desc: '',
      args: [],
    );
  }

  /// `Tercih edilen ödeme yöntemi yap`
  String get setAsPrimaryPaymentMethod {
    return Intl.message(
      'Tercih edilen ödeme yöntemi yap',
      name: 'setAsPrimaryPaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Servis Detayı`
  String get malfunctionDetailPageTitle {
    return Intl.message(
      'Servis Detayı',
      name: 'malfunctionDetailPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Geçmiş Arıza Detay`
  String get pastMalfunctionTitle {
    return Intl.message(
      'Geçmiş Arıza Detay',
      name: 'pastMalfunctionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Onarım Süresi`
  String get malfunctionTime {
    return Intl.message(
      'Onarım Süresi',
      name: 'malfunctionTime',
      desc: '',
      args: [],
    );
  }

  /// `Ödeme`
  String get payment {
    return Intl.message(
      'Ödeme',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Ön Ödeme`
  String get prePayment {
    return Intl.message(
      'Ön Ödeme',
      name: 'prePayment',
      desc: '',
      args: [],
    );
  }

  /// `Kalan Servis Bedeli`
  String get missingServicePrice {
    return Intl.message(
      'Kalan Servis Bedeli',
      name: 'missingServicePrice',
      desc: '',
      args: [],
    );
  }

  /// `Ödemeyi, onarım bittikten sonra ekstra malzeme ihtiyacı hesaplandıktan sonra onaylayabilirsiniz.`
  String get malfunctionDetailExtraPaymentDesc {
    return Intl.message(
      'Ödemeyi, onarım bittikten sonra ekstra malzeme ihtiyacı hesaplandıktan sonra onaylayabilirsiniz.',
      name: 'malfunctionDetailExtraPaymentDesc',
      desc: '',
      args: [],
    );
  }

  /// `Ödemeyi Onayla`
  String get confirmPayment {
    return Intl.message(
      'Ödemeyi Onayla',
      name: 'confirmPayment',
      desc: '',
      args: [],
    );
  }

  /// `Başlangıç:`
  String get startTime {
    return Intl.message(
      'Başlangıç:',
      name: 'startTime',
      desc: '',
      args: [],
    );
  }

  /// `Bitiş:`
  String get endTime {
    return Intl.message(
      'Bitiş:',
      name: 'endTime',
      desc: '',
      args: [],
    );
  }

  /// `Ekstra Hizmet`
  String get extraService {
    return Intl.message(
      'Ekstra Hizmet',
      name: 'extraService',
      desc: '',
      args: [],
    );
  }

  /// `Ekstra Malzeme`
  String get extraTool {
    return Intl.message(
      'Ekstra Malzeme',
      name: 'extraTool',
      desc: '',
      args: [],
    );
  }

  /// `Puanınız`
  String get yourRating {
    return Intl.message(
      'Puanınız',
      name: 'yourRating',
      desc: '',
      args: [],
    );
  }

  /// `Henüz Puanlama Yapmadınız`
  String get notRatedYet {
    return Intl.message(
      'Henüz Puanlama Yapmadınız',
      name: 'notRatedYet',
      desc: '',
      args: [],
    );
  }

  /// `Yorumunuz`
  String get yourComment {
    return Intl.message(
      'Yorumunuz',
      name: 'yourComment',
      desc: '',
      args: [],
    );
  }

  /// `Henüz Yorum Yapmadınız`
  String get notCommentedYet {
    return Intl.message(
      'Henüz Yorum Yapmadınız',
      name: 'notCommentedYet',
      desc: '',
      args: [],
    );
  }

  /// `Ustanızı Şimdi Puanlayın`
  String get rateYourCraftsman {
    return Intl.message(
      'Ustanızı Şimdi Puanlayın',
      name: 'rateYourCraftsman',
      desc: '',
      args: [],
    );
  }

  /// `Ustanızın Notu`
  String get craftsmanNote {
    return Intl.message(
      'Ustanızın Notu',
      name: 'craftsmanNote',
      desc: '',
      args: [],
    );
  }

  /// `Frequently Asked Questions`
  String get frequentlyAskedQuestions {
    return Intl.message(
      'Frequently Asked Questions',
      name: 'frequentlyAskedQuestions',
      desc: '',
      args: [],
    );
  }

  /// `Discover`
  String get discover {
    return Intl.message(
      'Discover',
      name: 'discover',
      desc: '',
      args: [],
    );
  }

  /// `Discover Service Types`
  String get discoverServiceTypes {
    return Intl.message(
      'Discover Service Types',
      name: 'discoverServiceTypes',
      desc: '',
      args: [],
    );
  }

  /// `İçerik bulunamadı.`
  String get faqNotFound {
    return Intl.message(
      'İçerik bulunamadı.',
      name: 'faqNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueButtonText {
    return Intl.message(
      'Continue',
      name: 'continueButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Güncelle`
  String get update {
    return Intl.message(
      'Güncelle',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Please Write Your Location`
  String get pleaseWriteYourLocation {
    return Intl.message(
      'Please Write Your Location',
      name: 'pleaseWriteYourLocation',
      desc: '',
      args: [],
    );
  }

  /// `If you want, you can allow it from the device settings`
  String get ifYouWantYouCanAllowItFromTheDeviceSettings {
    return Intl.message(
      'If you want, you can allow it from the device settings',
      name: 'ifYouWantYouCanAllowItFromTheDeviceSettings',
      desc: '',
      args: [],
    );
  }

  /// `Open App Settings`
  String get openAppSettings {
    return Intl.message(
      'Open App Settings',
      name: 'openAppSettings',
      desc: '',
      args: [],
    );
  }

  /// `Denied Forever`
  String get deniedForever {
    return Intl.message(
      'Denied Forever',
      name: 'deniedForever',
      desc: '',
      args: [],
    );
  }

  /// `Onarımı İptal Ettiniz`
  String get malfunctionCancelledByUser {
    return Intl.message(
      'Onarımı İptal Ettiniz',
      name: 'malfunctionCancelledByUser',
      desc: '',
      args: [],
    );
  }

  /// `Onarımınız İptal Edildi`
  String get malfunctionCancelledByOperation {
    return Intl.message(
      'Onarımınız İptal Edildi',
      name: 'malfunctionCancelledByOperation',
      desc: '',
      args: [],
    );
  }

  /// `Emin misiniz?`
  String get cancelMalfunctionPopupTitle {
    return Intl.message(
      'Emin misiniz?',
      name: 'cancelMalfunctionPopupTitle',
      desc: '',
      args: [],
    );
  }

  /// `Oluşturmuş olduğunuz arıza kaydını iptal etmek istediğinize emin misiniz?`
  String get cancelMalfunctionPopupDesc {
    return Intl.message(
      'Oluşturmuş olduğunuz arıza kaydını iptal etmek istediğinize emin misiniz?',
      name: 'cancelMalfunctionPopupDesc',
      desc: '',
      args: [],
    );
  }

  /// `User not found`
  String get userNoFound {
    return Intl.message(
      'User not found',
      name: 'userNoFound',
      desc: '',
      args: [],
    );
  }

  /// `Password error`
  String get passwordError {
    return Intl.message(
      'Password error',
      name: 'passwordError',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Strings> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'tr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Strings> load(Locale locale) => Strings.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
