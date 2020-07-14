.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xbd38, %r11
dec %r13
movb (%r11), %r8b
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x738, %rbp
nop
nop
nop
inc %rax
mov (%rbp), %dx
nop
nop
and $44643, %rdx
lea addresses_normal_ht+0x1b6a8, %r13
nop
nop
nop
xor $7120, %rdx
mov (%r13), %r8d
nop
nop
nop
nop
and $23969, %rbp
lea addresses_A_ht+0x1a198, %rsi
lea addresses_normal_ht+0x30c8, %rdi
nop
nop
sub $29007, %rdx
mov $55, %rcx
rep movsw
nop
nop
sub $65371, %rdi
lea addresses_A_ht+0xcd38, %rsi
nop
nop
nop
nop
and $39128, %rcx
mov (%rsi), %r13d
nop
inc %r8
lea addresses_A_ht+0x5d38, %r11
nop
nop
nop
nop
xor $46131, %r8
movb $0x61, (%r11)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x17338, %r11
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x61, (%r11)
nop
add $60859, %r11
lea addresses_UC_ht+0x17e9a, %rsi
lea addresses_A_ht+0x14448, %rdi
clflush (%rdi)
nop
nop
sub $55075, %r11
mov $76, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0xdb8, %rdx
and $21207, %r13
movl $0x61626364, (%rdx)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x168d8, %rdi
nop
nop
nop
nop
and $43422, %rax
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r13
nop
nop
and %r13, %r13
lea addresses_A_ht+0x7938, %rsi
lea addresses_UC_ht+0x14b38, %rdi
nop
nop
nop
nop
add $42248, %rdx
mov $42, %rcx
rep movsl
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0xa678, %rcx
nop
nop
nop
dec %r8
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
cmp $21129, %rsi
lea addresses_WT_ht+0x16f38, %rsi
lea addresses_WC_ht+0x18138, %rdi
nop
nop
nop
nop
nop
xor $27416, %r13
mov $35, %rcx
rep movsl
nop
nop
xor $47400, %rbp
lea addresses_normal_ht+0x166f8, %r8
nop
add %rbp, %rbp
mov (%r8), %r11d
nop
add %rcx, %rcx
lea addresses_UC_ht+0xeadc, %rsi
lea addresses_normal_ht+0x113cc, %rdi
nop
nop
nop
nop
xor $41190, %r8
mov $19, %rcx
rep movsb
sub %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_normal+0x5d38, %r14
clflush (%r14)
nop
sub $44129, %rbp
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_D+0x9338, %rax
nop
nop
sub $56565, %rdi
movw $0x5152, (%rax)
xor %r12, %r12

// Load
lea addresses_RW+0x17738, %r12
cmp $48619, %r14
movups (%r12), %xmm7
vpextrq $1, %xmm7, %rbp
nop
nop
add %r12, %r12

// Store
lea addresses_RW+0x1c938, %rdi
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rax
movq %rax, (%rdi)
nop
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_WC+0x14238, %rax
nop
dec %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rax)
cmp %rdi, %rdi

// Store
lea addresses_normal+0x1a538, %r11
nop
nop
sub $46002, %rax
movb $0x51, (%r11)
nop
sub %r12, %r12

// Load
lea addresses_normal+0x4538, %rbp
nop
nop
nop
nop
xor $26191, %rsi
vmovaps (%rbp), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
add %r12, %r12

// Store
lea addresses_US+0x1d138, %r12
nop
sub $35213, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%r12)
nop
nop
cmp $12037, %rdi

// Store
lea addresses_WT+0xf538, %r12
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%r12)
nop
nop
add %rdi, %rdi

// Store
lea addresses_normal+0x2138, %rax
nop
inc %r12
mov $0x5152535455565758, %r14
movq %r14, (%rax)
nop
nop
nop
nop
nop
sub %r11, %r11

// Load
mov $0x1ab65c0000000538, %r12
nop
nop
nop
nop
nop
inc %rsi
movups (%r12), %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_US+0x19d38, %r11
and $38833, %rbp
vmovups (%r11), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'46': 3, 'f0': 2, '00': 25, '52': 21799}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 46 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 f0 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 f0 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
