.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1b448, %rsi
lea addresses_WC_ht+0xca38, %rdi
clflush (%rsi)
nop
nop
nop
sub %r10, %r10
mov $86, %rcx
rep movsw
nop
xor $36728, %r9
lea addresses_WC_ht+0x20d8, %rbp
clflush (%rbp)
nop
cmp $56288, %r14
movups (%rbp), %xmm5
vpextrq $1, %xmm5, %r10
nop
add %r14, %r14
lea addresses_WT_ht+0x2fd8, %rsi
lea addresses_UC_ht+0x9cd8, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $16, %rcx
rep movsl
nop
nop
sub %r12, %r12
lea addresses_A_ht+0x18d8, %r14
sub $38375, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r14)
and $26563, %r12
lea addresses_A_ht+0x128d8, %r9
nop
and $50633, %rcx
movw $0x6162, (%r9)
nop
nop
nop
xor $56462, %r10
lea addresses_WT_ht+0x4688, %r10
nop
nop
nop
nop
add $46170, %r9
mov $0x6162636465666768, %rbp
movq %rbp, (%r10)
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x1be58, %rdi
nop
nop
inc %rbp
movb $0x61, (%rdi)
xor $12275, %r14
lea addresses_WT_ht+0x2e18, %rsi
lea addresses_WT_ht+0x12cd8, %rdi
nop
cmp %r14, %r14
mov $11, %rcx
rep movsq
nop
nop
and %r9, %r9
lea addresses_A_ht+0x3d38, %rsi
lea addresses_WT_ht+0x1c8d8, %rdi
nop
inc %r10
mov $65, %rcx
rep movsq
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x1ceb8, %rsi
lea addresses_D_ht+0x19748, %rdi
nop
nop
cmp %r12, %r12
mov $1, %rcx
rep movsb
nop
nop
dec %r9
lea addresses_A_ht+0x64d8, %rsi
lea addresses_UC_ht+0x166d8, %rdi
nop
nop
nop
nop
xor $51846, %r10
mov $53, %rcx
rep movsw
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x7468, %r10
nop
and $44408, %r12
mov (%r10), %r9d
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x5cd8, %r9
nop
add $7738, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
add $43185, %r14
lea addresses_UC_ht+0x174d8, %rcx
nop
nop
nop
nop
nop
sub %rbp, %rbp
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
xor %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdx
push %rsi

// Load
lea addresses_PSE+0x1eff8, %r11
nop
sub $464, %rdx
mov (%r11), %r8
nop
nop
add %r11, %r11

// Store
lea addresses_RW+0x142d8, %r8
nop
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)
nop
nop
nop
add $6867, %rdx

// Store
mov $0x1c03100000000d58, %r15
sub %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r15)
nop
and %r11, %r11

// Store
lea addresses_PSE+0x1ecd8, %rsi
nop
nop
nop
cmp $40439, %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
add $65205, %r11

// Store
lea addresses_WT+0x1090, %rsi
nop
nop
nop
nop
nop
sub %r15, %r15
movl $0x51525354, (%rsi)
nop
nop
nop
nop
cmp $29755, %r8

// Faulty Load
lea addresses_PSE+0x1ecd8, %rcx
dec %rsi
vmovntdqa (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 5}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'40': 1, '45': 607, '48': 9, '49': 1454, '07': 36, '00': 19665, '08': 6, '80': 1, '01': 8, 'f0': 42}
00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 45 00 49 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 45 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 07 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 45 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 45 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 49 00 45 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 45 00 49 49 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f0 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 49 45 49 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 45 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 49 00 00 00 00 45 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 07 49 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 49 49 49 49 49 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 45 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 45 00 49 00 49 49 00 00 45 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00
*/
