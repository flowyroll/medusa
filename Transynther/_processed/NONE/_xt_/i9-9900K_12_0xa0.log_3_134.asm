.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rax
lea addresses_WT_ht+0x19e7b, %r9
nop
nop
add $23932, %r11
vmovups (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
nop
nop
dec %r12
pop %rax
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x1c27b, %rsi
lea addresses_normal+0xc07b, %rdi
nop
nop
and $17608, %r9
mov $97, %rcx
rep movsl
nop
sub $37884, %rdi

// REPMOV
lea addresses_PSE+0x1b07b, %rsi
lea addresses_US+0x13bb, %rdi
nop
nop
cmp $52549, %r13
mov $13, %rcx
rep movsl
nop
nop
nop
nop
sub $64951, %r14

// Faulty Load
lea addresses_PSE+0x1b07b, %rdi
nop
nop
nop
inc %r11
mov (%rdi), %si
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal'}}
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'33': 3}
33 33 33
*/
