.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1b1a0, %rsi
lea addresses_UC_ht+0xc382, %rdi
nop
nop
cmp $26610, %r11
mov $102, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_UC_ht+0x3a82, %rsi
nop
nop
nop
nop
nop
sub %r10, %r10
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm0
vpextrq $0, %xmm0, %r9
cmp %rsi, %rsi
lea addresses_WC_ht+0x1005a, %r10
nop
xor %r9, %r9
movw $0x6162, (%r10)
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0xef72, %r11
nop
nop
nop
nop
nop
xor $39872, %rbp
vmovups (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x1b9e2, %rsi
lea addresses_A_ht+0x8a0, %rdi
nop
nop
nop
nop
nop
sub $6535, %r8
mov $72, %rcx
rep movsl
nop
nop
nop
dec %r8
lea addresses_WT_ht+0x12f5a, %rsi
lea addresses_A_ht+0x1d5c2, %rdi
nop
nop
and $59831, %r8
mov $109, %rcx
rep movsl
nop
and %r8, %r8
lea addresses_UC_ht+0x7b8e, %r10
nop
nop
nop
inc %rcx
movups (%r10), %xmm7
vpextrq $1, %xmm7, %r8
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x1bd3a, %rsi
lea addresses_A_ht+0x8ec2, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %r11, %r11
mov $59, %rcx
rep movsb
nop
xor $8206, %r9
lea addresses_D_ht+0xb042, %rsi
lea addresses_D_ht+0xdec2, %rdi
clflush (%rsi)
sub $6092, %rbp
mov $124, %rcx
rep movsq
nop
nop
nop
nop
inc %r11
lea addresses_D_ht+0xb764, %r8
nop
nop
add $26504, %rcx
mov (%r8), %r11w
nop
and $44944, %rdi
lea addresses_WT_ht+0xa63e, %r10
nop
nop
nop
xor %r9, %r9
mov (%r10), %rsi
nop
nop
nop
sub %r9, %r9
lea addresses_A_ht+0x175c2, %rbp
clflush (%rbp)
nop
nop
nop
sub $17746, %r11
mov (%rbp), %rsi
nop
nop
nop
and $60553, %rcx
lea addresses_A_ht+0x10482, %rsi
lea addresses_A_ht+0x263c, %rdi
clflush (%rsi)
and %r9, %r9
mov $82, %rcx
rep movsw
nop
nop
cmp $64928, %rcx
lea addresses_D_ht+0xfac2, %r9
clflush (%r9)
nop
nop
and $46551, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r9)
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0xf122, %r10
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov (%r10), %di
nop
sub %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rax
push %rcx

// Store
lea addresses_WT+0x1bec2, %r13
nop
nop
inc %r8
movb $0x51, (%r13)
nop
nop
nop
nop
nop
add $29729, %rcx

// Load
mov $0x262, %r9
nop
nop
xor $7123, %r13
movb (%r9), %r8b
add %rcx, %rcx

// Load
lea addresses_A+0x27e6, %rcx
clflush (%rcx)
nop
add %r13, %r13
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
nop
xor %r13, %r13

// Store
lea addresses_WC+0x1eec2, %rax
xor %r10, %r10
movw $0x5152, (%rax)
and %rcx, %rcx

// Store
lea addresses_D+0x122c2, %r8
nop
nop
and $12717, %rcx
movw $0x5152, (%r8)

// Exception!!!
mov (0), %r13
nop
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_D+0x11442, %r13
clflush (%r13)
nop
nop
nop
sub $34664, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
nop
nop
inc %r13

// Store
lea addresses_RW+0x1f442, %r13
clflush (%r13)
add %r8, %r8
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
and $37243, %r9

// Store
lea addresses_normal+0x4a02, %rcx
nop
nop
nop
nop
nop
inc %rax
mov $0x5152535455565758, %r10
movq %r10, (%rcx)
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_A+0xeec2, %r9
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_UC+0xf2c2, %r11
nop
nop
nop
nop
add %rcx, %rcx
movl $0x51525354, (%r11)
nop
nop
cmp $45317, %rcx

// Faulty Load
lea addresses_PSE+0x116c2, %rcx
nop
nop
nop
nop
cmp $30020, %r11
movb (%rcx), %r10b
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 3282}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
