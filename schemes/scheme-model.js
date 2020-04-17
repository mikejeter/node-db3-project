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
    .where({id});
}

function add(schemeData) {
    return db('schemes')
    .insert(schemeData);
}

function addStep(stepData, id) {
    return db('steps')
    .insert(stepData, id);
}

function update(changes, id) {
    return db('schemes')
    .where({id})
    .update(changes);
}

function remove(id) {
    return db('schemes')
        .where({id})
        .del();
}



module.exports = {
    find,
    findById,
    findSteps,
    add,
    addStep,
    update,
    remove
};