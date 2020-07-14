.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xd38f, %r15
nop
xor %rax, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm5
vmovups %ymm5, (%r15)
nop
nop
nop
and $24762, %rdx
lea addresses_WT_ht+0x6085, %rsi
lea addresses_WT_ht+0x8305, %rdi
nop
sub $33199, %r12
mov $59, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $25160, %rdx
lea addresses_D_ht+0x1af05, %rax
nop
nop
nop
nop
add %r12, %r12
mov (%rax), %esi
nop
nop
nop
xor %r12, %r12
lea addresses_A_ht+0x7b05, %rsi
nop
sub %rax, %rax
mov (%rsi), %cx
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x12585, %r15
clflush (%r15)
nop
inc %rax
movl $0x61626364, (%r15)
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0xb05, %r12
nop
cmp %r15, %r15
movb (%r12), %cl
nop
nop
dec %rax
lea addresses_WC_ht+0x785d, %rcx
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
nop
cmp $10163, %rdi
lea addresses_normal_ht+0x19565, %rsi
nop
nop
and $35973, %r15
movl $0x61626364, (%rsi)
nop
and %r15, %r15
lea addresses_normal_ht+0xae5, %rdx
nop
nop
nop
nop
dec %r12
movups (%rdx), %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
xor $6029, %rax
lea addresses_WC_ht+0x18cd6, %rdi
clflush (%rdi)
cmp %r15, %r15
movb $0x61, (%rdi)
nop
nop
nop
nop
cmp $45919, %rdx
lea addresses_WT_ht+0x5705, %rsi
nop
nop
add %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x8705, %rsi
lea addresses_WT_ht+0x6775, %rdi
nop
inc %r14
mov $106, %rcx
rep movsw
sub %r15, %r15
lea addresses_D_ht+0x1a39d, %rsi
lea addresses_WC_ht+0xaf95, %rdi
mfence
mov $37, %rcx
rep movsq
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0xa005, %r15
xor %rax, %rax
movups (%r15), %xmm3
vpextrq $1, %xmm3, %r14
nop
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rdi

// Faulty Load
lea addresses_US+0xe305, %r10
nop
and %r9, %r9
mov (%r10), %eax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rdi
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 149}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
