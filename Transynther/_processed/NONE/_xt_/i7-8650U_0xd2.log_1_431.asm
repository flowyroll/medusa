.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xad31, %rsi
lea addresses_WT_ht+0xdef1, %rdi
add %r9, %r9
mov $40, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $4406, %r10
lea addresses_WT_ht+0xe72d, %r8
nop
nop
nop
nop
nop
cmp $41110, %rbp
movw $0x6162, (%r8)
nop
nop
nop
cmp $55957, %rdi
lea addresses_D_ht+0x16f1, %r8
nop
nop
nop
dec %rdi
movb (%r8), %cl
nop
nop
nop
nop
nop
inc %rbp
lea addresses_D_ht+0xcc71, %rsi
lea addresses_UC_ht+0x6071, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $119, %rcx
rep movsl
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x18871, %rsi
nop
cmp %rcx, %rcx
movb (%rsi), %r13b
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_PSE+0x7071, %r14
sub $51798, %rsi
mov (%r14), %r10d
nop
and %r9, %r9

// REPMOV
lea addresses_A+0x3071, %rsi
lea addresses_RW+0x9471, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $119, %rcx
rep movsw
nop
nop
sub $56631, %r9

// Faulty Load
lea addresses_D+0x10871, %r13
nop
nop
nop
nop
nop
add %r9, %r9
vmovups (%r13), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'36': 1}
36
*/
