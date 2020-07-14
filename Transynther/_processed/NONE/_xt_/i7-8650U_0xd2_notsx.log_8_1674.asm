.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x1bc6e, %rsi
lea addresses_normal+0x1482e, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %r14, %r14
mov $62, %rcx
rep movsb
nop
nop
nop
sub %rsi, %rsi

// REPMOV
lea addresses_UC+0x1ac7e, %rsi
lea addresses_D+0x1fe7e, %rdi
nop
nop
nop
cmp %r14, %r14
mov $108, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r10, %r10

// Store
lea addresses_PSE+0x1d3aa, %r9
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_WT+0x1217e, %r14
nop
nop
nop
nop
nop
sub $58947, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
nop
xor %r10, %r10

// Load
lea addresses_A+0x16221, %rbp
nop
nop
and $43035, %rdi
mov (%rbp), %r10
cmp %r14, %r14

// Store
lea addresses_WT+0x74be, %r10
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%r10)
nop
nop
cmp $27793, %rcx

// Load
lea addresses_normal+0x1b67e, %rdi
nop
nop
nop
nop
nop
and $4037, %rbp
mov (%rdi), %r10w
nop
nop
sub $28862, %rcx

// Load
lea addresses_normal+0x1d00, %rdi
nop
nop
nop
nop
and %r9, %r9
movb (%rdi), %r10b
nop
cmp %r9, %r9

// Store
mov $0x3fe, %r14
nop
cmp %r9, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
xor $40522, %rdi

// Store
lea addresses_normal+0x11e7e, %rdi
nop
nop
sub $37473, %r9
mov $0x5152535455565758, %r10
movq %r10, (%rdi)
nop
nop
nop
nop
nop
and $64865, %rbp

// Faulty Load
lea addresses_normal+0x1b67e, %r9
nop
cmp $44803, %rdi
mov (%r9), %r14w
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'34': 8}
34 34 34 34 34 34 34 34
*/
