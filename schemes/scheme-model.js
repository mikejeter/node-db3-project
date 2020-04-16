const db = require('../data/db-config.js');

function find() {
    return db('schemes');
}

// function find() {
//     return db('steps');
// }

function findById(id) {
    return db('schemes')
    .where({id})
    .first();
}

function findSteps(id) {
    return db('steps')
}

module.exports = {
    find,
    findById,
    findSteps
};