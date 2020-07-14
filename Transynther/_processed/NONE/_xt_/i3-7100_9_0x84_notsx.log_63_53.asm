.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x5966, %rcx
nop
nop
nop
nop
xor $38828, %r10
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
xor $22118, %r10

// Load
lea addresses_UC+0xa0e6, %rcx
nop
nop
cmp $35828, %rax
mov (%rcx), %rsi
nop
inc %rsi

// Store
lea addresses_WT+0x1b86a, %r10
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
sub $54607, %rax

// Load
lea addresses_UC+0x13be6, %rcx
clflush (%rcx)
nop
nop
and $20434, %rdx
mov (%rcx), %r10
nop
nop
and %rsi, %rsi

// REPMOV
lea addresses_PSE+0x1e6, %rsi
mov $0x766, %rdi
nop
nop
nop
nop
and $22804, %r10
mov $54, %rcx
rep movsl
nop
nop
nop
nop
sub %r10, %r10

// Faulty Load
lea addresses_PSE+0x1e6, %r10
nop
nop
nop
nop
nop
and %r11, %r11
movups (%r10), %xmm5
vpextrq $0, %xmm5, %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_P', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'33': 63}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
