.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1efc4, %rbx
nop
nop
nop
cmp $38644, %r15
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r8
nop
nop
nop
nop
nop
xor $27502, %r12
lea addresses_WC_ht+0x146c4, %rsi
lea addresses_WC_ht+0x1e564, %rdi
nop
nop
nop
nop
nop
and $42265, %rbx
mov $55, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $52837, %r12
lea addresses_WT_ht+0x4e93, %rsi
lea addresses_A_ht+0x1515c, %rdi
nop
nop
dec %rbx
mov $81, %rcx
rep movsq
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x40c4, %r8
clflush (%r8)
nop
sub $49644, %rbx
mov (%r8), %cx
nop
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x102b4, %rsi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov (%rsi), %r12d
nop
nop
add $7221, %r12
lea addresses_WC_ht+0x164c4, %r8
clflush (%r8)
nop
nop
nop
inc %rbx
movups (%r8), %xmm2
vpextrq $1, %xmm2, %r15
nop
and $62379, %rdi
lea addresses_UC_ht+0xac4, %rsi
lea addresses_A_ht+0x30c4, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $101, %rcx
rep movsb
nop
xor $54735, %rcx
lea addresses_D_ht+0xc0c4, %rsi
lea addresses_A_ht+0x5114, %rdi
sub $982, %r15
mov $36, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x190c4, %rsi
lea addresses_WT_ht+0x106c4, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $40, %rcx
rep movsw
nop
add $31941, %rdi
lea addresses_D_ht+0x1d4c4, %rbx
nop
nop
nop
nop
nop
cmp $5817, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%rbx)
nop
and $2624, %r9
lea addresses_UC_ht+0x1dec4, %r9
dec %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r9)
cmp %rsi, %rsi
lea addresses_WT_ht+0x5024, %r9
nop
xor $27773, %rbx
movw $0x6162, (%r9)
nop
nop
nop
nop
cmp $52281, %r12
lea addresses_WC_ht+0x177fa, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $65448, %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
nop
mfence
lea addresses_D_ht+0x1e3a4, %r15
nop
nop
nop
nop
and %rdi, %rdi
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbx
nop
nop
nop
nop
nop
xor %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_normal+0x128c4, %rcx
nop
nop
add %r14, %r14
movb (%rcx), %dl
nop
nop
nop
nop
nop
sub $38558, %rdx

// Store
mov $0x52243700000007c8, %r14
nop
add $42849, %r10
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
nop
nop
nop
nop
cmp %rdi, %rdi

// Load
lea addresses_WC+0x17cc4, %rdi
nop
cmp $21067, %rax
mov (%rdi), %r10
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_WC+0x17db8, %rsi
nop
nop
nop
sub %rdi, %rdi
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
inc %rax

// Load
lea addresses_US+0x7144, %rdi
nop
nop
nop
cmp $49302, %rcx
movb (%rdi), %r10b
nop
nop
nop
xor $12369, %rax

// Store
lea addresses_RW+0x6804, %rcx
nop
xor %rdi, %rdi
movl $0x51525354, (%rcx)
nop
nop
xor %r14, %r14

// Load
mov $0x5e26b600000004c4, %rax
nop
nop
inc %rdi
vmovups (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
inc %rdi

// Load
lea addresses_WT+0x18c4, %rdi
xor %rdx, %rdx
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %r14
nop
nop
xor $3202, %rdi

// Faulty Load
lea addresses_A+0xe4c4, %rax
nop
nop
nop
nop
inc %rsi
mov (%rax), %dx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': True, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 38}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
