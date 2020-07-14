.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xaf09, %rsi
lea addresses_UC_ht+0xff09, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $7141, %r14
mov $28, %rcx
rep movsw
nop
nop
nop
nop
and %r14, %r14
lea addresses_WC_ht+0x1b249, %r10
nop
nop
xor $9800, %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r10)
nop
nop
nop
xor %r10, %r10
lea addresses_WT_ht+0xac39, %rsi
lea addresses_normal_ht+0x10f1d, %rdi
nop
cmp $62819, %rdx
mov $55, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x1dbb5, %rsi
lea addresses_A_ht+0xb071, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $14890, %r14
mov $68, %rcx
rep movsl
nop
nop
nop
inc %rdx
lea addresses_WT_ht+0x1ba9, %rdx
dec %rbp
movb (%rdx), %r10b
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x1bc89, %rsi
lea addresses_UC_ht+0x9589, %rdi
nop
nop
nop
sub $1534, %r14
mov $97, %rcx
rep movsw
cmp %rsi, %rsi
lea addresses_WC_ht+0x1d949, %rdi
nop
nop
xor %rdx, %rdx
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %rsi
nop
sub $47784, %rsi
lea addresses_D_ht+0x1cb09, %rcx
nop
nop
nop
nop
nop
add %r10, %r10
movl $0x61626364, (%rcx)
nop
xor %r10, %r10
lea addresses_WC_ht+0xa709, %rsi
lea addresses_UC_ht+0x13489, %rdi
nop
nop
nop
nop
nop
and $26727, %rdx
mov $63, %rcx
rep movsl
nop
nop
nop
nop
nop
and $27554, %rdi
lea addresses_UC_ht+0x6429, %rcx
nop
nop
nop
nop
and %r14, %r14
mov (%rcx), %dx
nop
and %r10, %r10
lea addresses_D_ht+0x1709, %rbp
nop
nop
nop
nop
sub %r10, %r10
movw $0x6162, (%rbp)
nop
lfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rbx
push %rsi

// Store
lea addresses_normal+0x8309, %r11
nop
nop
nop
xor $4621, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%r11)
add $19117, %r15

// Store
mov $0x5b260b0000000721, %rbx
dec %r9
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
cmp %r10, %r10

// Load
lea addresses_WT+0x1ed89, %r10
nop
nop
nop
nop
nop
sub $23733, %rsi
mov (%r10), %r9
nop
nop
and %r12, %r12

// Load
mov $0x2b9bf60000000d89, %r10
nop
add $62352, %rbx
mov (%r10), %rsi
nop
nop
nop
and $49794, %r9

// Store
mov $0x4d79760000000157, %r11
nop
nop
nop
nop
add %rbx, %rbx
movw $0x5152, (%r11)
nop
add %r12, %r12

// Store
lea addresses_A+0xe709, %r9
nop
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r9)
cmp $64135, %r12

// Faulty Load
lea addresses_A+0xe709, %r9
nop
nop
nop
nop
nop
add $3934, %r12
vmovups (%r9), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r10
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rsi
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 17}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
