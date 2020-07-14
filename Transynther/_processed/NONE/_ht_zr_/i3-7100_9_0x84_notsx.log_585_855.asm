.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xb9aa, %r8
sub %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
nop
dec %r12
lea addresses_D_ht+0xe6da, %rsi
nop
nop
nop
xor $19399, %rdi
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
and %r12, %r12
lea addresses_normal_ht+0xe9aa, %r12
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r12)
nop
nop
nop
nop
cmp $48914, %r8
lea addresses_D_ht+0x1760a, %r12
nop
nop
nop
nop
nop
cmp %r8, %r8
movups (%r12), %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0x1bfcc, %r8
and %r9, %r9
movb $0x61, (%r8)
nop
nop
nop
nop
nop
add $57431, %r9
lea addresses_WC_ht+0x14caa, %rsi
lea addresses_D_ht+0x10e6a, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $117, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $15025, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_RW+0x1650a, %rax
clflush (%rax)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movups %xmm7, (%rax)
sub %rbp, %rbp

// Store
lea addresses_UC+0x1892a, %r8
nop
nop
nop
nop
nop
sub $9899, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovaps %ymm6, (%r8)
nop
nop
sub %r11, %r11

// Load
lea addresses_PSE+0x1ceaa, %rax
nop
nop
nop
nop
cmp %r8, %r8
mov (%rax), %r11d
nop
nop
nop
dec %r14

// Faulty Load
lea addresses_A+0x1c5aa, %r9
nop
nop
nop
nop
sub $42224, %r14
vmovups (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'46': 146, '00': 80, '48': 359}
46 48 48 00 00 48 48 00 00 48 46 48 48 48 48 48 48 48 46 48 48 46 46 48 48 46 48 48 46 48 48 48 46 48 46 48 48 48 46 46 48 48 46 48 46 48 46 46 46 48 46 46 48 46 48 48 48 48 00 46 48 00 48 46 48 00 00 00 48 00 00 48 48 48 48 48 48 00 48 00 48 00 00 00 48 00 00 46 48 00 00 00 00 48 48 46 00 48 00 46 00 46 46 00 48 48 48 48 48 48 48 48 48 46 00 48 48 46 48 48 46 48 46 46 48 46 48 46 46 46 46 48 46 00 48 48 48 48 48 46 48 46 48 48 48 48 48 46 48 48 48 48 46 48 48 48 48 48 48 46 48 48 46 48 48 48 48 48 48 48 48 48 48 48 46 48 48 46 48 46 46 48 48 48 48 46 48 46 48 48 48 48 46 46 46 48 46 46 46 48 48 48 48 48 46 48 48 48 46 46 46 48 48 48 48 46 48 48 48 46 48 48 48 48 48 46 48 48 48 48 46 48 46 48 48 48 46 48 48 46 46 48 48 46 48 48 46 48 48 48 48 48 48 46 48 48 48 48 48 48 48 00 48 00 48 00 00 00 48 00 48 48 48 46 48 48 48 46 00 48 48 46 00 00 00 00 00 00 48 48 48 48 46 48 48 48 48 48 48 48 46 48 48 46 48 48 48 48 48 46 46 46 48 48 46 48 46 46 48 48 48 48 48 48 46 46 46 46 48 46 46 46 46 48 48 46 48 00 48 48 48 48 48 48 46 48 48 48 48 48 48 46 48 48 48 48 48 46 48 48 48 46 48 46 48 48 48 48 46 46 00 48 48 46 48 46 48 48 48 46 46 46 48 00 00 48 00 46 48 48 00 48 00 00 00 48 48 48 00 46 46 48 00 48 48 00 00 48 48 48 48 48 00 48 00 00 48 00 48 48 46 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 46 48 48 46 48 48 46 48 48 48 46 46 46 48 48 46 48 48 46 48 48 48 46 48 46 46 48 48 46 48 48 48 48 48 48 46 46 48 48 48 48 48 48 48 48 46 46 00 48 46 48 48 48 48 48 48 00 48 48 48 46 48 48 46 48 48 48 48 46 48 46 48 48 48 46 48 46 46 46 48 48 46 48 48 48 48 46 46 48 48 46 00 00 00 00 00 48 00 48 48 00 00 48 48 00 00 00 00 48 00 46 00 48 00 48 48 48 00 00 48 48 48 00 48 48 48 00 00 48 48 46 48 48 48 46 48 48 48 46 48 46 46 46 46 48 48 48 48 46
*/
