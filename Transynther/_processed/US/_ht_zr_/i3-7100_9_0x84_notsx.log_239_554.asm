.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x5829, %rsi
lea addresses_A_ht+0xf3b5, %rdi
nop
nop
xor $6698, %r11
mov $90, %rcx
rep movsw
nop
nop
sub $46206, %r12
lea addresses_A_ht+0xc529, %rsi
lea addresses_UC_ht+0xa129, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $29, %rcx
rep movsl
nop
cmp $1645, %r8
lea addresses_A_ht+0x1537, %r11
nop
inc %r15
mov (%r11), %r8w
nop
nop
xor %r12, %r12
lea addresses_A_ht+0x1c3a9, %r12
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm0
and $0xffffffffffffffc0, %r12
movntdq %xmm0, (%r12)
sub $46543, %r11
lea addresses_WT_ht+0xfa9, %rsi
nop
nop
cmp $44794, %rcx
mov (%rsi), %r15w
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x184a9, %rcx
clflush (%rcx)
nop
nop
nop
cmp $13369, %rsi
mov (%rcx), %r12d
nop
nop
xor %r11, %r11
lea addresses_A_ht+0x16e5, %rsi
lea addresses_normal_ht+0x1b7a9, %rdi
nop
nop
and %rbp, %rbp
mov $37, %rcx
rep movsq
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0xef29, %r8
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, (%r8)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0x4a09, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
sub $20986, %rsi
lea addresses_WT_ht+0x7ba9, %rsi
lea addresses_WC_ht+0x19ba9, %rdi
clflush (%rsi)
nop
nop
nop
dec %r11
mov $25, %rcx
rep movsb
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0xeabd, %r11
nop
nop
cmp $45052, %rcx
movups (%r11), %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
nop
nop
nop
inc %r15
lea addresses_D_ht+0x2a41, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
nop
inc %r12
lea addresses_WC_ht+0x57a9, %rsi
lea addresses_D_ht+0x6cd9, %rdi
nop
nop
nop
nop
and $1363, %r11
mov $117, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $63367, %rdi
lea addresses_WC_ht+0x169d, %rsi
lea addresses_A_ht+0xbc9, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %r11, %r11
mov $96, %rcx
rep movsb
nop
nop
nop
nop
nop
and $19336, %rbp
lea addresses_WT_ht+0x1763f, %r11
nop
nop
nop
nop
dec %r15
mov $0x6162636465666768, %r8
movq %r8, (%r11)
nop
nop
nop
nop
nop
sub $5987, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_D+0x121a9, %r12
add %rcx, %rcx
movw $0x5152, (%r12)
nop
nop
xor %rbp, %rbp

// Store
lea addresses_US+0x14749, %rax
nop
sub %r15, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movaps %xmm6, (%rax)
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_US+0x113a9, %rcx
nop
nop
nop
nop
nop
xor $21908, %rbp
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'49': 27, '00': 61, '48': 82, '45': 28, '46': 41}
49 48 49 48 46 49 00 49 46 48 46 46 45 00 46 48 46 48 00 48 46 48 45 48 48 46 48 48 49 00 00 00 45 48 48 48 00 00 45 00 00 00 00 00 48 48 00 49 48 45 48 46 46 46 46 00 48 48 46 46 46 48 48 49 49 46 45 49 46 00 48 00 48 46 48 48 00 00 48 46 49 49 00 45 00 48 48 48 48 49 48 48 46 46 48 48 48 00 49 45 00 45 48 48 48 48 00 00 48 48 48 00 00 00 48 00 45 00 45 00 45 48 48 48 49 49 49 48 49 00 48 46 49 45 48 46 48 48 45 46 46 49 48 00 00 45 00 49 48 00 48 46 48 46 00 00 48 48 48 45 00 49 00 45 48 48 45 00 49 00 48 00 48 48 45 00 00 00 46 46 48 48 45 49 45 49 46 48 46 49 00 49 46 48 49 48 48 46 46 45 48 48 00 00 46 48 45 45 00 00 45 00 48 48 48 45 48 00 00 48 00 45 48 00 00 48 45 46 00 00 00 46 46 46 46 46 48 48 00
*/
