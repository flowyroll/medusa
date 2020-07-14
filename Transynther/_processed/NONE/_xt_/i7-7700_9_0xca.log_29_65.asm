.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xcf3d, %rsi
lea addresses_A_ht+0x1a23d, %rdi
nop
nop
sub $42841, %r13
mov $47, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r15
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rsi

// Load
lea addresses_D+0x118bd, %r15
nop
nop
nop
inc %r14
movups (%r15), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
nop
and $38694, %r15

// Store
lea addresses_WT+0x61ed, %rbp
and %r14, %r14
movw $0x5152, (%rbp)
nop
nop
nop
nop
xor %r13, %r13

// Store
mov $0xf3d, %r13
nop
nop
nop
nop
nop
cmp $22559, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
and $14386, %r13

// Faulty Load
lea addresses_RW+0x1c73d, %r14
clflush (%r14)
and $39483, %r12
mov (%r14), %r13
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rsi
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}}
{'32': 29}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
