.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rsi
lea addresses_A_ht+0xdfe7, %rsi
nop
sub %r14, %r14
mov (%rsi), %r9d
nop
nop
nop
nop
nop
xor $43521, %r10
pop %rsi
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rdi

// Load
lea addresses_D+0x18d6d, %r14
nop
nop
nop
dec %r13
mov (%r14), %r8w
inc %rbp

// Load
lea addresses_D+0x152d, %r14
nop
nop
nop
nop
nop
and $43222, %r15
mov (%r14), %di
nop
nop
add $40252, %rbp

// Load
lea addresses_A+0x3aed, %r13
sub %r8, %r8
movaps (%r13), %xmm6
vpextrq $0, %xmm6, %rdi
nop
add $11222, %rbp

// Load
lea addresses_RW+0x176ed, %r9
clflush (%r9)
nop
xor %rdi, %rdi
movb (%r9), %r14b
nop
nop
nop
sub $2567, %r8

// Faulty Load
lea addresses_PSE+0xed, %r13
nop
nop
inc %r14
vmovaps (%r13), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r8
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'00': 88}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
