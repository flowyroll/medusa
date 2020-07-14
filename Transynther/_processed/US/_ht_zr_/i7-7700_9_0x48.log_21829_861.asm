.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1e799, %rsi
lea addresses_normal_ht+0x13979, %rdi
nop
nop
nop
sub %r11, %r11
mov $38, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $21823, %rcx
lea addresses_normal_ht+0xe650, %rsi
lea addresses_D_ht+0x8449, %rdi
nop
nop
nop
and %r13, %r13
mov $2, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xbb79, %rbp
nop
nop
nop
dec %rax
vmovups (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
cmp $39857, %rcx
lea addresses_UC_ht+0x1479, %rcx
nop
xor %rax, %rax
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r13
nop
cmp $64310, %rdi
lea addresses_WC_ht+0x63d9, %rcx
nop
nop
inc %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
xor $44231, %r13
lea addresses_A_ht+0x129dd, %r11
nop
xor %rax, %rax
movb $0x61, (%r11)
nop
nop
nop
nop
add $45878, %rsi
lea addresses_UC_ht+0x6179, %rax
nop
nop
add %rdi, %rdi
movb $0x61, (%rax)
nop
dec %rbp
lea addresses_WC_ht+0x66b9, %r13
add %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, (%r13)
nop
nop
nop
nop
xor $10477, %rax
lea addresses_WT_ht+0xc361, %rdi
xor $36772, %rbp
movl $0x61626364, (%rdi)
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x14c79, %rsi
nop
nop
nop
nop
add %rbp, %rbp
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x5c79, %rax
nop
nop
sub $56389, %rcx
mov (%rax), %r11
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0xa479, %r13
nop
nop
nop
sub %rax, %rax
vmovups (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
sub %r11, %r11
lea addresses_A_ht+0x6c79, %rcx
nop
nop
nop
nop
xor %r13, %r13
mov (%rcx), %rax
nop
and %rcx, %rcx
lea addresses_normal_ht+0x19799, %r13
nop
nop
nop
nop
nop
inc %rcx
mov (%r13), %di
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x19b79, %rsi
lea addresses_A_ht+0x10879, %rdi
nop
nop
nop
nop
add $8511, %r12
mov $108, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rsi

// Faulty Load
lea addresses_US+0xb479, %r9
nop
nop
nop
nop
nop
and $62950, %rsi
vmovups (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rsi
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 2, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'49': 880, '47': 3302, '48': 4687, '45': 8878, '00': 4082}
48 48 45 49 00 48 45 48 47 48 00 49 45 00 47 45 45 45 47 00 45 00 47 45 00 47 45 45 48 00 00 47 48 48 00 00 47 00 48 47 45 45 45 48 45 45 47 45 00 48 45 45 48 45 45 00 00 45 45 45 00 45 47 49 00 45 48 00 47 45 45 48 45 45 48 00 45 48 45 45 45 47 45 45 00 48 00 45 00 45 49 47 48 45 49 00 47 48 45 45 48 48 45 48 47 45 47 45 00 47 45 45 45 45 47 45 00 47 49 48 45 48 47 00 49 48 45 45 45 48 47 45 00 47 49 48 45 45 48 45 45 47 45 48 00 48 45 45 00 45 45 45 48 47 00 00 45 48 47 45 45 48 49 00 48 47 49 48 45 00 45 00 45 45 45 00 45 45 45 47 45 45 48 47 45 48 48 45 48 45 48 00 45 48 47 45 45 48 45 45 48 45 00 45 00 48 45 47 47 45 48 45 45 48 47 49 48 45 45 47 47 45 00 00 45 00 45 45 47 45 47 49 00 45 47 45 48 45 45 00 00 49 45 48 45 45 45 48 45 45 47 45 45 45 00 45 00 47 45 45 48 45 48 45 48 45 47 00 47 45 00 47 00 45 48 45 45 47 45 47 45 45 48 48 45 45 45 45 45 48 45 48 45 45 45 00 45 48 45 00 45 00 45 47 45 45 48 00 48 45 45 47 45 48 00 47 49 00 45 45 00 45 48 48 48 47 45 00 45 48 45 00 48 45 45 48 45 49 48 00 45 48 47 45 48 45 45 48 45 48 48 45 45 45 00 47 48 48 45 45 48 45 45 45 45 00 47 00 48 45 48 47 45 45 48 45 49 48 00 45 47 45 45 45 45 45 00 47 45 00 45 00 00 48 45 48 00 47 45 00 45 49 49 45 47 00 45 49 47 45 45 48 45 48 47 45 00 45 45 47 45 45 00 00 45 48 45 45 47 45 00 45 47 45 48 00 49 45 48 45 45 48 49 48 47 45 48 47 45 47 49 48 47 45 45 47 45 47 48 45 48 48 48 47 00 48 48 45 48 47 45 00 47 00 48 45 45 48 47 45 45 47 45 45 48 48 48 47 47 45 48 47 00 48 45 47 00 48 45 48 48 47 47 45 48 45 00 45 48 47 45 48 00 45 48 45 48 48 45 45 00 47 00 45 47 48 47 45 48 45 48 45 00 45 45 47 45 48 48 00 45 00 48 47 48 00 47 45 00 45 00 47 45 45 00 00 48 45 00 47 48 45 48 47 45 49 00 47 48 45 00 47 45 45 00 48 00 48 00 47 47 45 45 48 45 00 00 00 47 45 45 48 45 49 00 47 45 00 45 45 45 00 48 00 45 45 45 47 45 48 45 00 47 45 45 45 49 00 45 00 47 00 47 45 48 47 45 49 00 00 45 45 00 47 00 48 45 00 47 00 48 47 47 47 49 45 48 45 45 48 00 47 45 47 00 48 47 45 00 00 45 45 00 45 45 48 47 00 00 47 45 45 45 48 47 00 45 00 47 45 00 00 47 45 48 45 45 47 45 00 48 45 45 48 45 45 45 48 47 45 48 48 45 45 45 48 48 45 49 45 45 45 47 45 45 48 45 45 45 48 45 00 48 45 45 00 45 48 00 45 45 00 47 45 49 45 00 45 45 00 48 45 48 45 00 47 45 00 45 45 00 48 48 45 47 45 45 00 47 45 45 47 45 45 48 49 45 48 00 48 45 45 48 49 00 47 45 00 47 45 45 47 45 00 47 45 48 45 00 48 47 00 45 45 45 00 48 45 45 45 45 49 45 48 49 00 45 00 49 45 48 47 45 00 48 45 00 47 00 45 00 48 45 48 48 48 00 47 48 45 48 47 45 48 45 48 48 45 45 45 48 47 45 00 00 00 48 45 45 47 00 45 00 47 00 45 45 48 45 45 48 47 00 45 45 45 48 45 45 47 45 48 45 48 45 00 45 48 45 00 48 49 48 47 49 45 48 49 00 47 45 00 45 48 45 45 47 47 45 45 45 00 45 45 47 47 45 45 48 47 48 48 00 47 45 00 47 45 00 45 45 45 00 47 47 45 48 48 45 45 45 00 45 48 45 45 48 45 47 45 00 47 47 45 45 00 47 48 48 45 00 47 45 00 48 48 48 48 45 45 45 48 45 48 45 48 48 00 45 45 48 48 45 00 45 45 45 48 48 45 48 47 00 45 48 45 45 47 45 48 00 45 49 45 47 49 00 00 47 45
*/
