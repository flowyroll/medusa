.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x4e34, %rsi
lea addresses_normal_ht+0xdb34, %rdi
nop
nop
inc %r15
mov $37, %rcx
rep movsq
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x30b4, %rdi
nop
cmp %r11, %r11
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r10
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x1baec, %r15
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r15)
nop
nop
nop
nop
nop
xor $45135, %r11
lea addresses_D_ht+0xe074, %rdi
nop
nop
nop
nop
sub $38087, %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x13fb4, %r11
clflush (%r11)
dec %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r11)
nop
cmp $37381, %r15
lea addresses_WC_ht+0x8bb4, %rcx
nop
xor %r11, %r11
movl $0x61626364, (%rcx)
dec %rcx
lea addresses_WT_ht+0x9424, %rdi
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
nop
add $7923, %r11
lea addresses_A_ht+0x3fb4, %rsi
nop
add $52286, %r10
movw $0x6162, (%rsi)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x7fb4, %r15
nop
nop
xor $20352, %rax
mov (%r15), %r10d
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x13b94, %r10
nop
nop
dec %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r10)
nop
nop
nop
nop
xor $30173, %rcx
lea addresses_D_ht+0x2b30, %rcx
clflush (%rcx)
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x61, (%rcx)
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x984, %rsi
lea addresses_normal_ht+0x1fb4, %rdi
nop
nop
and %r13, %r13
mov $89, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0xed14, %rcx
nop
nop
and $57615, %r15
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
nop
nop
cmp $9999, %rsi
lea addresses_UC_ht+0xeb74, %r15
nop
nop
add %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r15)
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x1db4, %rsi
nop
nop
nop
nop
nop
sub $49298, %r11
mov (%rsi), %ecx
nop
nop
and %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rdi

// Store
lea addresses_WT+0x1fd74, %rax
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
nop
nop
and $12667, %r11

// Store
lea addresses_UC+0x16da1, %r8
add %r14, %r14
movb $0x51, (%r8)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_normal+0x12fb4, %r8
nop
nop
nop
nop
nop
sub %rbp, %rbp
movw $0x5152, (%r8)
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_D+0xf3b4, %rax
nop
nop
nop
nop
nop
cmp %r8, %r8
movb $0x51, (%rax)
nop
nop
dec %r15

// Store
mov $0xdf4, %r8
nop
nop
nop
nop
nop
sub $62573, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movups %xmm1, (%r8)
nop
cmp %r11, %r11

// Store
lea addresses_WC+0x1fbb4, %r11
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
inc %rax

// Faulty Load
lea addresses_A+0x107b4, %r8
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%r8), %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
