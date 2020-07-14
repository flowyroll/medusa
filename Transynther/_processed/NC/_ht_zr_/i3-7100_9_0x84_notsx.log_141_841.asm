.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x166b5, %rsi
lea addresses_D_ht+0x1a5b5, %rdi
nop
nop
nop
and $16174, %r13
mov $89, %rcx
rep movsb
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_A_ht+0x18335, %r10
nop
cmp %r12, %r12
movb $0x61, (%r10)
nop
nop
sub $23886, %r12
lea addresses_A_ht+0x17f75, %rcx
nop
nop
nop
nop
cmp $36667, %rsi
movl $0x61626364, (%rcx)
cmp %rsi, %rsi
lea addresses_WT_ht+0xa35, %r10
nop
and %rsi, %rsi
and $0xffffffffffffffc0, %r10
movntdqa (%r10), %xmm2
vpextrq $0, %xmm2, %rbx
add $38609, %rdi
lea addresses_normal_ht+0xd1b5, %r10
nop
nop
dec %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
nop
nop
nop
xor $17131, %r13
lea addresses_D_ht+0x109b5, %rcx
nop
nop
nop
nop
nop
and $9149, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x1d5b5, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm5
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm5, (%rsi)
xor $60168, %rsi
lea addresses_normal_ht+0x6cb5, %rsi
lea addresses_D_ht+0x2155, %rdi
nop
nop
nop
nop
xor $48162, %rbp
mov $103, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $10490, %r13
lea addresses_normal_ht+0x189b5, %rsi
lea addresses_normal_ht+0x5d2b, %rdi
clflush (%rsi)
xor %rbx, %rbx
mov $69, %rcx
rep movsw
inc %r13
lea addresses_WT_ht+0x11f5, %rsi
lea addresses_normal_ht+0x15cf7, %rdi
nop
sub $52605, %r12
mov $38, %rcx
rep movsq
nop
nop
nop
xor $33641, %r12
lea addresses_normal_ht+0x14db5, %rbx
nop
nop
sub %r10, %r10
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x179b5, %r12
clflush (%r12)
nop
nop
add $16416, %rcx
movups (%r12), %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
nop
sub $27672, %r13
lea addresses_normal_ht+0x16b35, %rbx
clflush (%rbx)
nop
nop
nop
nop
dec %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1b5f9, %r10
nop
nop
add %rsi, %rsi
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
nop
nop
nop
dec %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x134b5, %r11
nop
nop
nop
nop
xor $11931, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovaps %ymm4, (%r11)
nop
nop
nop
nop
nop
sub $39387, %r14

// Store
lea addresses_WT+0x10345, %r13
nop
nop
nop
nop
nop
dec %rdx
movw $0x5152, (%r13)
nop
and %r11, %r11

// Faulty Load
mov $0x10106b00000005b5, %rsi
nop
nop
nop
nop
nop
and $44492, %r15
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %rdx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'49': 22, '00': 113, '44': 6}
49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 44 00 00 00 00 00 00 00 00 00 49 00 49 00 44 00 49 00 49 00 00 00 00 00 49 00 49 44 00 49 00 00 49 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 44 00 00 00 00 49 00 00 44 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 44 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 49 49 00 00 00 00 00
*/
