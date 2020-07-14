.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a811, %rsi
lea addresses_D_ht+0xbb31, %rdi
sub $57121, %r11
mov $45, %rcx
rep movsb
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0xcab1, %rsi
lea addresses_A_ht+0x14819, %rdi
xor %rbx, %rbx
mov $58, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $62722, %rbx
lea addresses_A_ht+0x182b1, %r11
nop
nop
nop
nop
nop
dec %r9
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
nop
nop
xor $7104, %rbx
lea addresses_WT_ht+0x32b1, %rdi
clflush (%rdi)
and %r11, %r11
movb (%rdi), %bl
nop
nop
nop
nop
nop
lfence
lea addresses_A_ht+0x16cb1, %r11
sub %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
nop
nop
and %r11, %r11
lea addresses_UC_ht+0xacb1, %rsi
lea addresses_D_ht+0x165d1, %rdi
nop
nop
xor %rbx, %rbx
mov $27, %rcx
rep movsw
nop
and $63480, %rbx
lea addresses_WT_ht+0x5af1, %rsi
lea addresses_WC_ht+0x13f21, %rdi
nop
nop
nop
add %r9, %r9
mov $127, %rcx
rep movsl
nop
nop
nop
sub $16282, %r13
lea addresses_UC_ht+0x1c1, %rsi
lea addresses_WT_ht+0x19af1, %rdi
nop
add $5981, %r15
mov $103, %rcx
rep movsl
mfence
lea addresses_A_ht+0xbeb1, %r15
nop
nop
nop
nop
cmp $24829, %r11
movb $0x61, (%r15)
sub $36894, %rsi
lea addresses_UC_ht+0x9058, %rsi
lea addresses_A_ht+0xbab1, %rdi
nop
nop
nop
nop
nop
cmp $17418, %r9
mov $99, %rcx
rep movsq
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0x19871, %rbx
nop
xor %r9, %r9
mov (%rbx), %r11w
nop
cmp %r11, %r11
lea addresses_WT_ht+0xe873, %r13
nop
nop
nop
and $36842, %rbx
movl $0x61626364, (%r13)
nop
nop
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0x3ab1, %rsi
lea addresses_A_ht+0x17a7f, %rdi
nop
nop
and $10190, %rbx
mov $19, %rcx
rep movsw
and %rbx, %rbx
lea addresses_normal_ht+0x8207, %rbx
nop
nop
nop
nop
nop
xor %r11, %r11
mov (%rbx), %r15d
and $45681, %rbx
lea addresses_normal_ht+0x148b1, %rsi
lea addresses_WC_ht+0x197e3, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $47, %rcx
rep movsb
xor $23320, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0xda9, %rsi
nop
nop
nop
nop
nop
xor $38560, %r13
movl $0x51525354, (%rsi)
nop
nop
nop
dec %rsi

// Load
lea addresses_A+0xb2b1, %rcx
nop
nop
xor $45871, %r11
mov (%rcx), %rsi
nop
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_WC+0x51f1, %r14
nop
inc %rsi
movl $0x51525354, (%r14)
and %r13, %r13

// REPMOV
lea addresses_A+0xaeb1, %rsi
lea addresses_WT+0xc675, %rdi
nop
nop
add $41136, %rdx
mov $25, %rcx
rep movsw
xor %rsi, %rsi

// Store
lea addresses_A+0x12e31, %rcx
nop
nop
nop
nop
nop
sub $49862, %rdi
movw $0x5152, (%rcx)
nop
nop
inc %r13

// Store
mov $0x4b1, %rdi
nop
nop
and %r12, %r12
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
and $50744, %r13

// Store
mov $0x3fed490000000eb1, %rsi
cmp %r14, %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rsi)
nop
inc %rdx

// Store
lea addresses_WC+0x72b1, %rsi
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
add %rcx, %rcx

// Store
mov $0x1bc61500000005b1, %rsi
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
cmp $45774, %r14

// Faulty Load
lea addresses_A+0xb2b1, %r12
and $28991, %r11
mov (%r12), %cx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'dst': {'same': True, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 3}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'dst': {'same': True, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
