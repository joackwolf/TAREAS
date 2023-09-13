module.exports = (sequelize, dataTypes) => {
    let alias = 'Task';
    let cols = {
        id: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            autoIncrement: true,
            primaryKey: true,
            allowNull: false,
        },
        titulo: {
            type: dataTypes.STRING(100),
            allowNull: false,
        },
        descripcion: {
            type: dataTypes.STRING(100),
            allowNull: false,
        },
        estado: {
            type: dataTypes.STRING(100),
            allowNull: false,
        }
    };
    let config = {
        timestamps: true,
        createdAt: 'createdAt',
        updatedAt: 'updatedAt',
        deletedAt: 'deletedAt',
		paranoid: true
    }
    
    const Task = sequelize.define(alias, cols, config);

return Task
}