FROM alpine

COPY admissionController /admissionController

ENTRYPOINT [ "./admissionController" ]