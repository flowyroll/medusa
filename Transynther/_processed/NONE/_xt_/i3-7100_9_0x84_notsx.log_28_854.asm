.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x36fb, %rbx
nop
nop
nop
nop
inc %rax
movl $0x61626364, (%rbx)
nop
nop
nop
sub $8156, %rbp
lea addresses_WC_ht+0xbde7, %rsi
lea addresses_WT_ht+0x863, %rdi
nop
add %r8, %r8
mov $115, %rcx
rep movsl
nop
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x1babb, %rsi
lea addresses_UC_ht+0x9efb, %rdi
nop
nop
nop
nop
nop
add $42135, %r9
mov $62, %rcx
rep movsq
nop
nop
nop
nop
nop
add $25160, %rdi
lea addresses_normal_ht+0x1bdb, %rsi
lea addresses_UC_ht+0x707b, %rdi
cmp $58322, %r8
mov $93, %rcx
rep movsw
xor $1658, %r8
lea addresses_WC_ht+0xeafb, %rbp
nop
nop
nop
nop
inc %rdi
vmovups (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
nop
add %r8, %r8
lea addresses_WC_ht+0x755b, %r9
nop
nop
cmp $17437, %rbp
vmovups (%r9), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
and $21632, %r9
lea addresses_normal_ht+0x10bfb, %r9
inc %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%r9)
nop
nop
nop
nop
nop
and $32586, %rbx
lea addresses_normal_ht+0x6d7b, %r8
clflush (%r8)
nop
nop
nop
nop
nop
inc %rsi
movl $0x61626364, (%r8)
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0xefb, %rbx
cmp %r9, %r9
vmovups (%rbx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbp
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_WC_ht+0x192fb, %rbx
nop
nop
nop
nop
add $55841, %rbp
mov (%rbx), %rcx
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x18147, %rcx
nop
nop
nop
nop
cmp $27614, %r9
mov (%rcx), %bp
nop
nop
inc %r9
lea addresses_A_ht+0x1c7f3, %rsi
lea addresses_A_ht+0x92db, %rdi
nop
nop
nop
and $9109, %r8
mov $13, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0xe2fb, %r9
nop
cmp $6141, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rdi
push %rsi

// Store
mov $0x2020560000000cfb, %rsi
nop
nop
nop
dec %r8
movw $0x5152, (%rsi)
nop
nop
and $48194, %rdi

// Store
lea addresses_WC+0x6443, %rsi
nop
nop
sub $9987, %r15
movw $0x5152, (%rsi)
nop
nop
nop
cmp %r8, %r8

// Load
lea addresses_US+0xd9db, %rdi
nop
and %r15, %r15
mov (%rdi), %rbx
nop
nop
nop
nop
cmp $15310, %rbx

// Load
lea addresses_D+0x4afb, %r15
nop
nop
nop
nop
nop
add $14444, %rbp
mov (%r15), %r8w
nop
nop
nop
nop
and $7787, %r8

// Faulty Load
lea addresses_RW+0x17efb, %rbp
nop
nop
nop
cmp %rsi, %rsi
mov (%rbp), %edi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'32': 28}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
