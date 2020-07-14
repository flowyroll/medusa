.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x15e34, %rdx
nop
nop
cmp %r14, %r14
movb (%rdx), %bl
nop
nop
nop
nop
and $695, %r13
lea addresses_WC_ht+0xd2a9, %r9
cmp %rsi, %rsi
movups (%r9), %xmm5
vpextrq $1, %xmm5, %r14
xor $54893, %rdx
lea addresses_normal_ht+0x18869, %r14
nop
nop
nop
nop
add $61158, %r10
vmovups (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
nop
cmp $1978, %r14
lea addresses_WC_ht+0x15319, %rsi
lea addresses_WC_ht+0x1bfa9, %rdi
nop
nop
nop
nop
add $25551, %r14
mov $21, %rcx
rep movsw
inc %r14
lea addresses_WT_ht+0x7e29, %rbx
nop
nop
nop
inc %r14
movb (%rbx), %r10b
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x7669, %rdx
nop
and $59310, %r14
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0x197a9, %r14
nop
nop
nop
and $3296, %rbx
movw $0x6162, (%r14)
nop
nop
nop
xor $22782, %rcx
lea addresses_D_ht+0x1c809, %rbx
nop
dec %rdi
movw $0x6162, (%rbx)
add $6480, %rdi
lea addresses_WT_ht+0xaaa9, %rdx
nop
nop
nop
nop
xor $53535, %r13
movb (%rdx), %r14b
nop
nop
nop
nop
nop
add $46172, %rdi
lea addresses_UC_ht+0x187a9, %rsi
lea addresses_WC_ht+0x7be9, %rdi
nop
add %r10, %r10
mov $12, %rcx
rep movsq
nop
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x431f, %rsi
nop
nop
nop
nop
nop
sub $59424, %rdi
mov (%rsi), %rdx
xor %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rbp
push %rdx
push %rsi

// Store
lea addresses_A+0xb029, %rax
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, (%rax)

// Exception!!!
nop
nop
mov (0), %rax
nop
nop
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_RW+0x173a9, %rdx
nop
nop
nop
add %r13, %r13
mov (%rdx), %esi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'32': 274}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
