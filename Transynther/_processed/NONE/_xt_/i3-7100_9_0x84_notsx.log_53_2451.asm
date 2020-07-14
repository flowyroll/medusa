.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x45b1, %rsi
lea addresses_UC_ht+0x1ea31, %rdi
cmp $41463, %r8
mov $19, %rcx
rep movsw
and $45030, %rbp
lea addresses_normal_ht+0x1b3d9, %r13
nop
nop
nop
cmp %rax, %rax
movb $0x61, (%r13)
nop
nop
nop
nop
nop
and $27352, %rdi
lea addresses_D_ht+0x3996, %r8
sub $20906, %rbp
movl $0x61626364, (%r8)
nop
nop
cmp $4501, %rax
lea addresses_WC_ht+0x1bdb1, %rsi
lea addresses_WT_ht+0xf5b1, %rdi
clflush (%rsi)
clflush (%rdi)
inc %r15
mov $53, %rcx
rep movsq
nop
and $17919, %r8
lea addresses_A_ht+0xf631, %rdi
nop
nop
nop
sub $57662, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
movups %xmm3, (%rdi)
nop
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_A+0xfbb1, %r12
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%r12)
nop
nop
nop
sub %rsi, %rsi

// Store
mov $0x792b110000000881, %rax
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)
xor %rsi, %rsi

// Store
lea addresses_normal+0x190e1, %rcx
nop
nop
nop
nop
nop
cmp $23837, %rax
movb $0x51, (%rcx)
nop
nop
nop
xor $49939, %rsi

// Load
mov $0x6218900000003b1, %r10
nop
nop
nop
nop
inc %rdx
movups (%r10), %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_normal+0x1bb1, %r12
nop
nop
nop
nop
nop
cmp %rax, %rax
mov (%r12), %r10d
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'34': 53}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
