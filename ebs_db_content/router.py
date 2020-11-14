class CheckerRouter:

    def db_for_read(self, model, **hints):
        if model._meta.app_label == 'EBS':
            return 'ebs_db'
        elif model._meta.app_label == 'HANA':
            return 'hana_db'
        return 'default'

    def db_for_write(self, model, **hints):
        if model._meta.app_label == 'EBS':
            return 'ebs_db'
        elif model._meta.app_label == 'HANA':
            return 'hana_db'
        return 'default'

    def allow_relation(self, obj1, obj2, **hints):
        if obj1._meta.app_label == 'EBS' or obj2._meta.app_label == 'EBS':
            return True
        elif 'EBS' not in [obj1._meta.app_label, obj2._meta.app_label]:
            return True
        elif obj1._meta.app_label == 'HANA' or obj2._meta.app_label == 'HANA':
            return True
        elif 'HANA' not in [obj1._meta.app_label, obj2._meta.app_label]:
            return True
        return False

    def allow_migrate(self, db, app_label, model_name=None, **hints):
        if app_label == 'EBS':
            return db == 'ebs_db'
        elif app_label == 'HANA':
            return db == 'hana_db'
        return None
