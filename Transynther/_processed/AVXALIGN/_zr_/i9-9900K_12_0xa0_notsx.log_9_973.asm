.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xc8f0, %rcx
cmp %rbp, %rbp
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r14
nop
add $37461, %r8
lea addresses_WC_ht+0xec80, %rsi
lea addresses_UC_ht+0x12068, %rdi
and %r11, %r11
mov $93, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0x5223, %rsi
inc %rdi
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
and $63022, %rsi
lea addresses_WC_ht+0x13010, %rsi
lea addresses_WT_ht+0x1a30, %rdi
nop
xor %r9, %r9
mov $87, %rcx
rep movsl
sub $28714, %rbp
lea addresses_A_ht+0x113f0, %r8
nop
nop
nop
xor %rdi, %rdi
movl $0x61626364, (%r8)
nop
cmp %r11, %r11
lea addresses_WT_ht+0xe778, %rdi
nop
nop
nop
nop
and $24785, %r11
movl $0x61626364, (%rdi)
nop
sub %r11, %r11
lea addresses_WC_ht+0x16253, %rdi
nop
nop
and $30668, %r14
movl $0x61626364, (%rdi)
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x18070, %rsi
lea addresses_normal_ht+0x12460, %rdi
clflush (%rsi)
nop
nop
nop
and $24853, %r14
mov $78, %rcx
rep movsb
nop
nop
nop
nop
sub $18555, %r9
lea addresses_normal_ht+0xadf0, %rcx
nop
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
add $31400, %r11
lea addresses_normal_ht+0x81b0, %r11
nop
nop
nop
nop
xor $32805, %rcx
movb (%r11), %r14b
nop
nop
nop
and $18717, %r9
lea addresses_normal_ht+0xe1fe, %r9
nop
nop
nop
nop
nop
sub $17757, %rbp
mov (%r9), %r8
nop
nop
nop
inc %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0xd150, %rbx
nop
nop
nop
nop
cmp %rdx, %rdx
movl $0x51525354, (%rbx)
nop
nop
and %rdi, %rdi

// Store
lea addresses_UC+0x13510, %rsi
nop
nop
xor %r15, %r15
movb $0x51, (%rsi)
nop
add %rsi, %rsi

// Store
lea addresses_UC+0x8f0, %r11
nop
add %r14, %r14
movl $0x51525354, (%r11)
nop
nop
nop
nop
and $33673, %r11

// Store
lea addresses_PSE+0x11ff0, %rdi
nop
nop
inc %r14
mov $0x5152535455565758, %rdx
movq %rdx, (%rdi)
dec %rdi

// Store
lea addresses_A+0x1dec7, %rbx
sub %r11, %r11
movl $0x51525354, (%rbx)
inc %r14

// Store
mov $0x3dc3b00000000810, %r15
nop
nop
nop
nop
sub $45467, %rbx
movb $0x51, (%r15)
nop
nop
nop
nop
nop
inc %r15

// Store
lea addresses_US+0xbdf0, %r11
nop
nop
and %r15, %r15
movl $0x51525354, (%r11)
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_A+0xf8c0, %r14
nop
nop
nop
cmp $13936, %r11
movb $0x51, (%r14)
nop
nop
nop
nop
nop
and %rbx, %rbx

// Faulty Load
mov $0x12305700000003f0, %rsi
nop
nop
nop
nop
nop
sub $4537, %r14
vmovntdqa (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
