import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/delete_pill_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'a9_pill_reminder_copy_model.dart';
export 'a9_pill_reminder_copy_model.dart';

class A9PillReminderCopyWidget extends StatefulWidget {
  const A9PillReminderCopyWidget({super.key});

  static String routeName = 'A9PillReminderCopy';
  static String routePath = '/a9PillReminderCopy';

  @override
  State<A9PillReminderCopyWidget> createState() =>
      _A9PillReminderCopyWidgetState();
}

class _A9PillReminderCopyWidgetState extends State<A9PillReminderCopyWidget> {
  late A9PillReminderCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A9PillReminderCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: Color(0xFF4D94F2),
            automaticallyImplyLeading: false,
            leading: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(A6HomePageWidget.routeName);
              },
              child: Icon(
                Icons.navigate_before,
                color: Colors.white,
                size: 24.0,
              ),
            ),
            actions: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).alternate,
                      icon: Icon(
                        Icons.home,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(A6HomePageWidget.routeName);
                      },
                    ),
                  ),
                ],
              ),
            ],
            centerTitle: true,
            elevation: 0.0,
          ),
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
                  child: FlutterFlowCalendar(
                    color: Color(0xFF4080F2),
                    iconColor: FlutterFlowTheme.of(context).secondaryText,
                    weekFormat: true,
                    weekStartsMonday: true,
                    rowHeight: 48.0,
                    onChange: (DateTimeRange? newSelectedDate) {
                      safeSetState(
                          () => _model.calendarSelectedDay = newSelectedDate);
                    },
                    titleStyle:
                        FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter Tight',
                              color: Color(0xFF4080F2),
                              letterSpacing: 0.0,
                            ),
                    dayOfWeekStyle:
                        FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                    dateStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          fontSize: 21.0,
                          letterSpacing: 0.0,
                        ),
                    selectedDateStyle:
                        FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Inter Tight',
                              letterSpacing: 0.0,
                            ),
                    inactiveDateStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Your Reminder',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 25.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                PagedListView<DocumentSnapshot<Object?>?, PilldetailsRecord>(
                  pagingController: _model.setListViewController(
                    PilldetailsRecord.collection
                        .where(
                          'uid',
                          isEqualTo: currentUserUid,
                        )
                        .where(
                          'date',
                          isEqualTo: _model.calendarSelectedDay?.start,
                        )
                        .orderBy('time1', descending: true),
                  ),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  reverse: false,
                  scrollDirection: Axis.vertical,
                  builderDelegate: PagedChildBuilderDelegate<PilldetailsRecord>(
                    // Customize what your widget looks like when it's loading the first page.
                    firstPageProgressIndicatorBuilder: (_) => Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    ),
                    // Customize what your widget looks like when it's loading another page.
                    newPageProgressIndicatorBuilder: (_) => Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    ),

                    itemBuilder: (context, _, listViewIndex) {
                      final listViewPilldetailsRecord = _model
                          .listViewPagingController!.itemList![listViewIndex];
                      return Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 30.0, 20.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.instantTimer = InstantTimer.periodic(
                                    duration: Duration(milliseconds: 60000),
                                    callback: (timer) async {
                                      if (dateTimeFormat(
                                              "jm", getCurrentTimestamp) ==
                                          dateTimeFormat(
                                              "jm",
                                              listViewPilldetailsRecord
                                                  .time1)) {
                                        await actions.localNotification();
                                        _model.soundPlayer1 ??= AudioPlayer();
                                        if (_model.soundPlayer1!.playing) {
                                          await _model.soundPlayer1!.stop();
                                        }
                                        _model.soundPlayer1!.setVolume(1.0);
                                        _model.soundPlayer1!
                                            .setAsset(
                                                'assets/audios/medicati_07d8a80a5112420_(1).mp3')
                                            .then((_) =>
                                                _model.soundPlayer1!.play());
                                      } else if (dateTimeFormat(
                                              "jm", getCurrentTimestamp) ==
                                          dateTimeFormat(
                                              "jm",
                                              listViewPilldetailsRecord
                                                  .time2)) {
                                        await actions.localNotification();
                                        _model.soundPlayer2 ??= AudioPlayer();
                                        if (_model.soundPlayer2!.playing) {
                                          await _model.soundPlayer2!.stop();
                                        }
                                        _model.soundPlayer2!.setVolume(1.0);
                                        _model.soundPlayer2!
                                            .setAsset(
                                                'assets/audios/medicati_07d8a80a5112420_(1).mp3')
                                            .then((_) =>
                                                _model.soundPlayer2!.play());
                                      } else if (dateTimeFormat(
                                              "jm", getCurrentTimestamp) ==
                                          dateTimeFormat(
                                              "jm",
                                              listViewPilldetailsRecord
                                                  .time3)) {
                                        await actions.localNotification();
                                        _model.soundPlayer3 ??= AudioPlayer();
                                        if (_model.soundPlayer3!.playing) {
                                          await _model.soundPlayer3!.stop();
                                        }
                                        _model.soundPlayer3!.setVolume(1.0);
                                        _model.soundPlayer3!
                                            .setAsset(
                                                'assets/audios/medicati_07d8a80a5112420_(1).mp3')
                                            .then((_) =>
                                                _model.soundPlayer3!.play());
                                      } else if (dateTimeFormat(
                                              "jm", getCurrentTimestamp) ==
                                          dateTimeFormat(
                                              "jm",
                                              listViewPilldetailsRecord
                                                  .time4)) {
                                        await actions.localNotification();
                                        _model.soundPlayer4 ??= AudioPlayer();
                                        if (_model.soundPlayer4!.playing) {
                                          await _model.soundPlayer4!.stop();
                                        }
                                        _model.soundPlayer4!.setVolume(1.0);
                                        _model.soundPlayer4!
                                            .setAsset(
                                                'assets/audios/medicati_07d8a80a5112420_(1).mp3')
                                            .then((_) =>
                                                _model.soundPlayer4!.play());
                                      }
                                    },
                                    startImmediately: true,
                                  );
                                },
                                child: Material(
                                  color: Colors.transparent,
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.error,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    title: Text(
                                      listViewPilldetailsRecord.pillname,
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    subtitle: Text(
                                      '${dateTimeFormat("jm", listViewPilldetailsRecord.time1)} ${dateTimeFormat("jm", listViewPilldetailsRecord.time2)} ${dateTimeFormat("jm", listViewPilldetailsRecord.time3)} ${dateTimeFormat("jm", listViewPilldetailsRecord.time4)}',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    dense: false,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.75, -1.21),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 50.0, 30.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return GestureDetector(
                                        onTap: () {
                                          FocusScope.of(context).unfocus();
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus();
                                        },
                                        child: Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: DeletePillWidget(),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Icon(
                                  Icons.delete,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 27.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 40.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 8.0,
                        buttonSize: 40.0,
                        fillColor: Color(0xFF4080F2),
                        icon: Icon(
                          Icons.add,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            AMed1aWidget.routeName,
                            queryParameters: {
                              'date': serializeParam(
                                _model.calendarSelectedDay?.start,
                                ParamType.DateTime,
                              ),
                            }.withoutNulls,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
