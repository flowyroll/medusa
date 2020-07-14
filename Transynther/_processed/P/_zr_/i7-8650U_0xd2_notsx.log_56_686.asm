.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x15039, %rbx
inc %r14
movups (%rbx), %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1a545, %r12
nop
nop
nop
inc %r10
movb (%r12), %dl
nop
nop
nop
nop
nop
and $52912, %rdx
lea addresses_normal_ht+0x19745, %r10
nop
dec %r14
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x7b45, %rsi
lea addresses_D_ht+0x9f45, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $31310, %rdx
mov $52, %rcx
rep movsw
nop
sub $39266, %rdi
lea addresses_WT_ht+0x17545, %rsi
lea addresses_D_ht+0x1d405, %rdi
and %r12, %r12
mov $4, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $9822, %rsi
lea addresses_D_ht+0xcfb3, %rsi
nop
nop
sub $63879, %rdx
movb (%rsi), %r10b
nop
nop
nop
lfence
lea addresses_A_ht+0x17b45, %rsi
lea addresses_UC_ht+0xbb45, %rdi
nop
cmp %r12, %r12
mov $66, %rcx
rep movsl
nop
nop
nop
and $17487, %rcx
lea addresses_A_ht+0x4385, %rsi
dec %rdx
mov (%rsi), %r12
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x8345, %rbx
nop
sub %rcx, %rcx
mov (%rbx), %rdx
nop
nop
nop
nop
xor $27648, %rdi
lea addresses_WT_ht+0x13b45, %rsi
lea addresses_WC_ht+0x194c3, %rdi
clflush (%rsi)
nop
nop
nop
dec %rbx
mov $82, %rcx
rep movsw
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x10945, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov (%rdi), %rcx
and $57510, %r14
lea addresses_normal_ht+0x1423, %r14
nop
nop
nop
dec %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%r14)
nop
nop
xor $59676, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rbx
push %rdx

// Faulty Load
mov $0xb45, %rdx
nop
nop
nop
and %r10, %r10
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %r12
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'00': 56}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
