.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x5edf, %rsi
nop
nop
nop
nop
add $23763, %r13
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
sub $50090, %rcx
lea addresses_WT_ht+0xf2df, %rsi
nop
nop
nop
nop
nop
cmp $28636, %rdi
mov (%rsi), %r9
nop
nop
and $35758, %r13
lea addresses_D_ht+0x83ef, %rcx
clflush (%rcx)
nop
nop
nop
nop
and $47231, %r14
movb $0x61, (%rcx)
nop
nop
dec %r13
lea addresses_D_ht+0xc25f, %r13
clflush (%r13)
nop
nop
and %rsi, %rsi
mov (%r13), %edi
nop
nop
nop
and $43496, %rdi
lea addresses_WC_ht+0x191a3, %rsi
clflush (%rsi)
nop
nop
nop
nop
dec %rcx
movb $0x61, (%rsi)
nop
and $33378, %r14
lea addresses_D_ht+0x12f5f, %rsi
nop
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%rsi)
add $795, %r9
lea addresses_UC_ht+0x2a1f, %rdi
nop
nop
nop
cmp $43924, %rcx
movb $0x61, (%rdi)
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0xe1df, %r13
xor $58096, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %r13
movntdq %xmm6, (%r13)
nop
and $26497, %r13
lea addresses_A_ht+0x117df, %rcx
dec %r13
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
nop
add $64091, %rbp
lea addresses_A_ht+0x1ac3, %rcx
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rcx)
nop
add $46391, %rbp
lea addresses_A_ht+0x1145f, %r13
nop
mfence
mov (%r13), %cx
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0xfdf, %r13
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
dec %r14
lea addresses_D_ht+0x11b81, %r13
nop
nop
dec %rsi
movb (%r13), %r9b
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_WT_ht+0xb48f, %rdi
nop
cmp $59742, %r14
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0xcc79, %rsi
nop
nop
nop
xor %r13, %r13
mov (%rsi), %r14d
nop
cmp $32327, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rbx
push %rdi
push %rdx

// Store
lea addresses_D+0x9f2d, %r12
nop
nop
nop
nop
and $31954, %r14
movl $0x51525354, (%r12)
dec %r8

// Store
lea addresses_A+0x1aedf, %rbx
nop
nop
nop
dec %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movntdq %xmm4, (%rbx)
add $53882, %r11

// Store
lea addresses_UC+0x9bf3, %rbx
nop
add %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
nop
nop
nop
xor $50863, %rdx

// Store
mov $0x4373ba000000060f, %rbx
nop
nop
nop
nop
nop
inc %rdi
movl $0x51525354, (%rbx)
nop
nop
nop
and $16683, %r14

// Load
mov $0x2492cb00000008af, %r12
sub %r8, %r8
mov (%r12), %r11

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r11
nop
nop
sub %r11, %r11

// Store
lea addresses_US+0x1c7ab, %r12
dec %rdx
movl $0x51525354, (%r12)
nop
nop
inc %r8

// Store
lea addresses_PSE+0x5aff, %r8
xor $38548, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r8)
nop
nop
sub %r14, %r14

// Store
lea addresses_A+0x1aedf, %rdx
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, (%rdx)
nop
nop
nop
nop
and %r8, %r8

// Faulty Load
lea addresses_A+0x1aedf, %r11
nop
nop
nop
nop
nop
sub %rdi, %rdi
vmovups (%r11), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_NC', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'00': 1}
00
*/
