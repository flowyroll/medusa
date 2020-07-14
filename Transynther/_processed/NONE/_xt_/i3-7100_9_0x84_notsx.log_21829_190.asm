.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x3413, %r14
nop
nop
nop
nop
sub $32035, %rdx
vmovups (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
nop
add %rdi, %rdi
lea addresses_WT_ht+0x6673, %r9
nop
nop
nop
sub %rdx, %rdx
movups (%r9), %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
inc %rax
lea addresses_WT_ht+0x3f93, %r14
nop
nop
dec %rcx
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
sub %r14, %r14
lea addresses_A_ht+0x1b803, %rsi
lea addresses_D_ht+0x15393, %rdi
nop
and $22276, %r12
mov $6, %rcx
rep movsb
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0x1d93, %rax
nop
nop
sub %rsi, %rsi
mov (%rax), %r9d
nop
nop
nop
nop
nop
add $5291, %rdx
lea addresses_UC_ht+0x7633, %r14
nop
nop
nop
nop
nop
xor %rcx, %rcx
movups (%r14), %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
inc %r9
lea addresses_D_ht+0x16593, %rsi
lea addresses_normal_ht+0x1c163, %rdi
nop
nop
nop
nop
dec %rdx
mov $38, %rcx
rep movsq
nop
nop
cmp $34291, %rcx
lea addresses_normal_ht+0x18f6b, %rsi
lea addresses_A_ht+0x1856a, %rdi
nop
nop
nop
nop
lfence
mov $42, %rcx
rep movsw
nop
xor $65348, %rcx
lea addresses_D_ht+0x9ef7, %rax
nop
nop
nop
nop
dec %rsi
mov (%rax), %r9d
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0x7a77, %rsi
lea addresses_WT_ht+0x1a093, %rdi
nop
nop
add $11895, %rdx
mov $56, %rcx
rep movsl
nop
nop
nop
nop
sub %rax, %rax
lea addresses_D_ht+0xe093, %rsi
lea addresses_A_ht+0x10bfb, %rdi
nop
nop
nop
xor $55411, %r14
mov $27, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x9027, %rsi
lea addresses_A_ht+0x15f47, %rdi
nop
xor $41285, %r12
mov $18, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_D_ht+0x1c993, %r12
nop
xor $62063, %rcx
and $0xffffffffffffffc0, %r12
vmovntdqa (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
nop
add $49824, %rcx
lea addresses_normal_ht+0x686b, %rsi
lea addresses_UC_ht+0x1ad3, %rdi
nop
nop
nop
nop
nop
and $35329, %r14
mov $45, %rcx
rep movsq
add $56268, %r12
lea addresses_WC_ht+0x97a3, %rsi
lea addresses_UC_ht+0x1e593, %rdi
nop
nop
nop
nop
xor $53682, %rdx
mov $80, %rcx
rep movsq
nop
nop
nop
nop
cmp $54664, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x8b3, %r14
nop
inc %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_WC+0x3393, %r10
nop
nop
inc %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
nop
nop
and $40817, %rsi

// Load
lea addresses_US+0x15a53, %r10
nop
nop
nop
inc %r14
mov (%r10), %rcx
nop
nop
add $25764, %r14

// Store
lea addresses_WT+0x18d93, %rsi
clflush (%rsi)
nop
nop
nop
cmp $58134, %rdi
movb $0x51, (%rsi)
nop
nop
nop
dec %r10

// Load
lea addresses_normal+0x1e313, %r10
nop
nop
add $53104, %rcx
mov (%r10), %rdi
nop
cmp $11675, %r11

// Store
lea addresses_D+0x1fcd3, %rdi
nop
nop
nop
cmp $5389, %r8
movb $0x51, (%rdi)
and $20299, %r11

// Store
mov $0xfa74a00000000f3, %r10
sub %rcx, %rcx
movb $0x51, (%r10)
nop
nop
nop
add $57385, %r14

// Store
lea addresses_WT+0x11349, %rdi
nop
nop
nop
nop
and $37822, %r8
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
nop
nop
and $42986, %rcx

// Faulty Load
lea addresses_PSE+0x1ed93, %r10
nop
nop
xor %r14, %r14
mov (%r10), %ecx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 32, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
