.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x2f5, %rsi
lea addresses_UC_ht+0xe859, %rdi
nop
nop
add %r13, %r13
mov $106, %rcx
rep movsw
xor $30019, %r8
lea addresses_WC_ht+0x1723d, %r11
nop
nop
nop
nop
nop
sub $12252, %rsi
and $0xffffffffffffffc0, %r11
movntdqa (%r11), %xmm4
vpextrq $1, %xmm4, %r8
nop
nop
inc %r13
lea addresses_D_ht+0xb63d, %rsi
nop
nop
nop
nop
inc %r14
movw $0x6162, (%rsi)
cmp $24044, %rcx
lea addresses_A_ht+0xa081, %r13
nop
and %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, (%r13)
nop
add $32772, %rsi
lea addresses_D_ht+0xf67d, %rsi
nop
nop
dec %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x1de41, %rsi
lea addresses_UC_ht+0x1b78c, %rdi
and %rax, %rax
mov $93, %rcx
rep movsw
nop
add %rsi, %rsi
lea addresses_D_ht+0x86d9, %rax
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
nop
dec %r11
lea addresses_A_ht+0x1363d, %rsi
lea addresses_D_ht+0x186fd, %rdi
sub $5659, %r11
mov $59, %rcx
rep movsq
nop
nop
nop
nop
and %r8, %r8
lea addresses_UC_ht+0x9ae3, %r11
nop
dec %r8
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
nop
dec %rax
lea addresses_UC_ht+0x11be5, %r13
cmp %r14, %r14
and $0xffffffffffffffc0, %r13
vmovntdqa (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
dec %r14
lea addresses_normal_ht+0x17e36, %rsi
lea addresses_WT_ht+0xbc3d, %rdi
nop
nop
nop
xor $47462, %r14
mov $63, %rcx
rep movsl
nop
nop
nop
mfence
lea addresses_D_ht+0x3e9d, %r14
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x989b, %rsi
lea addresses_A_ht+0x1b93d, %rdi
nop
nop
nop
sub $14521, %r11
mov $99, %rcx
rep movsl
nop
inc %rsi
lea addresses_WC_ht+0xac3d, %rsi
lea addresses_D_ht+0x1723d, %rdi
clflush (%rdi)
nop
and %r13, %r13
mov $117, %rcx
rep movsb
nop
cmp %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x87c9, %rdx
nop
nop
nop
nop
nop
add $48497, %rbx
movw $0x5152, (%rdx)
nop
nop
sub $14875, %rdx

// Faulty Load
lea addresses_PSE+0xc23d, %rbx
nop
nop
nop
nop
cmp $48196, %r15
mov (%rbx), %rdx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
