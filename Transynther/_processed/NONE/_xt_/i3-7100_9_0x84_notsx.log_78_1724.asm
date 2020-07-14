.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x97cf, %r10
xor $9668, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x468f, %rsi
lea addresses_WC_ht+0x1548f, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $13876, %r9
mov $35, %rcx
rep movsl
nop
nop
and $17668, %r12
lea addresses_A_ht+0x1046f, %rsi
lea addresses_D_ht+0xed8f, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $11736, %r12
mov $68, %rcx
rep movsl
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x1b22f, %rsi
lea addresses_normal_ht+0x1903f, %rdi
inc %rax
mov $97, %rcx
rep movsb
sub %r10, %r10
lea addresses_normal_ht+0x13a8f, %r9
sub %rcx, %rcx
movups (%r9), %xmm1
vpextrq $0, %xmm1, %r12
nop
and $737, %rsi
lea addresses_WC_ht+0x158e1, %rax
nop
nop
nop
cmp $26705, %rdi
mov (%rax), %r12d
nop
nop
xor %rax, %rax
lea addresses_A_ht+0x368, %rsi
lea addresses_normal_ht+0x8403, %rdi
nop
sub $24640, %r11
mov $38, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0xa78f, %rax
nop
nop
nop
nop
sub %r12, %r12
mov (%rax), %esi
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x1b18f, %rsi
lea addresses_WC_ht+0x682f, %rdi
add $57466, %r9
mov $27, %rcx
rep movsw
sub $29656, %rsi
lea addresses_D_ht+0xfd4f, %rsi
lea addresses_D_ht+0x18f, %rdi
xor %rax, %rax
mov $98, %rcx
rep movsq
nop
add %rsi, %rsi
lea addresses_WT_ht+0xcd8f, %rsi
lea addresses_WT_ht+0x5b8f, %rdi
nop
nop
cmp $550, %rax
mov $66, %rcx
rep movsl
nop
nop
and $38645, %r11
lea addresses_UC_ht+0x5f8f, %rsi
lea addresses_A_ht+0xd44f, %rdi
nop
nop
nop
add $57253, %r11
mov $103, %rcx
rep movsb
nop
nop
nop
dec %r9
lea addresses_A_ht+0xcf8f, %rsi
nop
nop
nop
xor $32115, %r11
mov (%rsi), %r12
nop
nop
nop
nop
nop
sub %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbx
push %rdi
push %rdx

// Load
mov $0x53135c0000000c0f, %rdx
cmp %rdi, %rdi
mov (%rdx), %r14w
nop
nop
nop
nop
sub $10348, %r13

// Faulty Load
lea addresses_PSE+0x518f, %rdi
nop
inc %r10
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 78}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
