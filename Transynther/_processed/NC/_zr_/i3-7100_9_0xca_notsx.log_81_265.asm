.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xff3c, %rbp
dec %r13
mov (%rbp), %cx
xor %r15, %r15
lea addresses_WC_ht+0x4, %r11
nop
nop
nop
inc %r12
vmovups (%r11), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
nop
cmp $57297, %rcx
lea addresses_D_ht+0xe604, %rbp
nop
nop
nop
nop
xor $20288, %r11
movl $0x61626364, (%rbp)
lfence
lea addresses_A_ht+0x11d38, %rcx
nop
nop
and $63958, %r13
movb $0x61, (%rcx)
nop
nop
inc %r11
lea addresses_A_ht+0x17c04, %r13
nop
nop
add %r11, %r11
vmovups (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
inc %r11
lea addresses_normal_ht+0x494, %rsi
lea addresses_A_ht+0x9c04, %rdi
nop
nop
nop
xor $58924, %r13
mov $88, %rcx
rep movsq
add $35159, %rcx
lea addresses_normal_ht+0x1a214, %r15
clflush (%r15)
nop
nop
add %r11, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
nop
and $27726, %r11
lea addresses_normal_ht+0x4ec, %rdi
nop
nop
nop
xor %r15, %r15
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r12
nop
dec %r15
lea addresses_UC_ht+0x6804, %r12
clflush (%r12)
nop
nop
nop
dec %rsi
vmovups (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
add %rsi, %rsi
lea addresses_normal_ht+0xa344, %r15
nop
add %r11, %r11
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
nop
cmp %r15, %r15
lea addresses_D_ht+0xa004, %rdi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov (%rdi), %si
nop
nop
nop
sub %rax, %rax
lea addresses_D_ht+0xb634, %rsi
lea addresses_A_ht+0xc484, %rdi
nop
and %r12, %r12
mov $53, %rcx
rep movsw
nop
nop
nop
cmp $23081, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi

// Store
mov $0x5936fe0000000e54, %rax
nop
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rax)
nop
cmp %r15, %r15

// Load
lea addresses_WC+0xd804, %rcx
nop
dec %r11
mov (%rcx), %eax
nop
inc %r15

// Store
lea addresses_UC+0x15204, %rax
nop
cmp $22779, %rdi
movw $0x5152, (%rax)
nop
nop
nop
add $43427, %rbp

// Store
lea addresses_A+0x17404, %r11
nop
and $30196, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%r11)
sub $209, %rdi

// Store
mov $0xb04, %r14
nop
and %rdi, %rdi
movw $0x5152, (%r14)
nop
nop
nop
and %r14, %r14

// Load
lea addresses_A+0x6004, %rax
nop
nop
nop
nop
sub $16863, %rdi
movups (%rax), %xmm4
vpextrq $0, %xmm4, %r14
nop
dec %rax

// Store
lea addresses_RW+0x13104, %rcx
xor $12206, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rcx)
nop
cmp %r15, %r15

// Faulty Load
mov $0x2d26010000000804, %r11
nop
cmp $14716, %rdi
mov (%r11), %r14d
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'00': 81}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
