.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1e2ad, %r11
nop
cmp $61181, %rax
movb $0x61, (%r11)
nop
nop
nop
nop
cmp $2115, %r8
lea addresses_D_ht+0x7aa5, %rdx
nop
nop
sub $42551, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rdx)
nop
add %r11, %r11
lea addresses_A_ht+0x17a2d, %r8
nop
nop
nop
and $15112, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
and $0xffffffffffffffc0, %r8
vmovntdq %ymm6, (%r8)
nop
nop
nop
nop
nop
and $15262, %rdx
lea addresses_normal_ht+0x705d, %rax
nop
nop
dec %r8
movb (%rax), %bl
sub $42282, %rcx
lea addresses_A_ht+0x1e51d, %rsi
lea addresses_UC_ht+0x38ad, %rdi
clflush (%rdi)
nop
nop
xor %r8, %r8
mov $40, %rcx
rep movsq
sub $42867, %rcx
lea addresses_A_ht+0x132b9, %rsi
lea addresses_A_ht+0x26ad, %rdi
nop
nop
nop
xor %rbx, %rbx
mov $3, %rcx
rep movsl
nop
cmp %rax, %rax
lea addresses_D_ht+0xd2ed, %rax
nop
nop
nop
sub %r8, %r8
movw $0x6162, (%rax)
nop
nop
nop
nop
sub $10389, %rdi
lea addresses_A_ht+0xc9ad, %rsi
lea addresses_UC_ht+0xd7ed, %rdi
nop
nop
nop
xor %rax, %rax
mov $69, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x128ad, %rsi
nop
nop
nop
nop
nop
and $59137, %rcx
movb (%rsi), %r11b
nop
nop
nop
nop
xor $64413, %rax
lea addresses_A_ht+0x1b0ad, %rsi
lea addresses_WT_ht+0x135a5, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $5, %rcx
rep movsb
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0xf8ad, %rdi
nop
nop
add $25582, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rdi)
nop
nop
cmp %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_RW+0xf0ad, %rbp
nop
cmp $39321, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%rbp)
xor $59409, %rbp

// Store
lea addresses_UC+0x20ad, %r11
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x51, (%r11)
nop
nop
xor $18443, %r11

// Store
mov $0x2f3e850000000a2d, %r13
nop
nop
nop
add $32343, %r11
movb $0x51, (%r13)
cmp $58286, %rcx

// Store
lea addresses_PSE+0x50ad, %rsi
cmp $52488, %rax
movb $0x51, (%rsi)
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_PSE+0x1361d, %r11
nop
and $10501, %rdi
movb $0x51, (%r11)
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_RW+0x12d2d, %rbp
nop
add %r13, %r13
movw $0x5152, (%rbp)
nop
cmp %rcx, %rcx

// Store
lea addresses_D+0x16dad, %r13
clflush (%r13)
nop
nop
xor $36698, %r11
mov $0x5152535455565758, %rbp
movq %rbp, (%r13)
nop
nop
nop
add $6599, %rax

// Faulty Load
lea addresses_RW+0xf0ad, %rcx
nop
nop
nop
add %rax, %rax
vmovntdqa (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'08': 4, 'd6': 1, '40': 2, '45': 10870, '07': 1, '00': 10949, 'ff': 2}
45 00 45 45 45 00 45 00 45 00 00 00 45 45 45 00 00 45 00 00 45 45 45 45 00 00 00 45 00 00 00 45 45 45 00 00 45 00 00 00 45 00 00 00 00 00 45 00 00 45 45 45 00 00 00 45 45 00 00 45 00 00 45 45 45 45 45 00 45 00 45 45 45 00 00 00 00 45 00 45 45 45 45 45 45 00 00 00 00 00 00 45 00 45 45 45 00 00 00 45 00 45 00 00 00 00 45 00 45 45 00 00 45 45 45 00 00 45 00 45 00 00 00 45 45 00 00 00 45 45 45 45 00 45 45 00 00 00 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 45 00 00 00 00 00 00 00 00 45 45 00 45 00 45 45 00 00 00 00 00 45 45 00 00 45 00 45 45 00 45 00 45 00 00 00 00 45 45 00 45 00 00 45 45 00 45 00 00 45 45 45 45 45 00 45 00 45 00 00 00 45 00 45 45 45 45 00 00 45 45 00 00 00 45 45 45 00 45 45 45 45 00 45 00 45 45 45 45 00 45 45 00 00 45 45 00 45 45 45 00 00 00 00 45 00 45 45 45 45 00 00 00 00 00 00 00 00 00 45 00 45 00 45 45 00 45 45 45 45 45 00 00 00 00 45 45 45 00 45 00 45 00 00 00 00 00 45 00 00 45 00 00 45 00 00 00 00 45 45 00 00 45 00 45 00 00 45 45 00 45 45 45 00 45 00 00 45 00 45 00 00 00 00 45 45 45 45 45 45 45 45 45 00 00 00 00 00 45 45 45 45 45 45 45 45 00 00 45 00 45 00 00 45 00 45 00 45 45 45 00 45 45 00 00 00 45 00 00 45 00 45 00 00 45 00 45 45 00 00 45 45 00 45 45 45 45 45 00 45 00 45 00 00 45 00 45 45 00 00 00 00 00 00 45 45 00 00 45 00 00 45 00 45 00 45 45 45 00 00 00 45 00 45 00 00 45 00 00 45 45 45 45 00 00 00 45 00 00 45 00 45 00 45 45 00 00 45 45 45 45 00 45 45 00 45 45 00 00 00 00 45 00 45 45 45 45 00 00 45 00 00 00 45 00 00 45 45 00 00 45 00 45 00 45 00 00 45 00 00 45 45 00 00 00 45 00 45 45 45 45 00 00 45 45 45 00 45 45 00 45 00 45 00 00 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 00 00 45 45 45 45 00 00 00 00 45 45 45 00 45 45 00 45 45 00 00 00 00 45 00 45 45 45 45 45 00 45 45 45 45 00 45 00 45 45 00 00 00 00 45 00 00 45 00 00 00 00 00 45 45 45 00 00 45 00 45 45 45 00 00 45 45 45 45 45 00 45 00 00 00 45 00 45 45 00 00 00 00 00 00 45 45 00 45 45 45 45 00 00 45 00 45 45 45 45 45 45 00 45 00 00 00 00 00 00 45 00 45 00 45 45 45 00 45 45 00 45 45 45 00 00 45 00 45 00 00 00 45 00 45 45 00 00 45 00 00 45 00 00 00 00 45 00 45 00 00 00 45 45 00 45 00 00 00 00 00 45 00 00 00 45 00 00 00 00 45 45 00 45 45 45 45 45 00 45 45 00 45 45 00 00 45 00 00 00 45 45 45 00 45 00 45 00 00 45 45 00 00 00 45 00 00 00 45 45 45 00 00 00 45 00 45 00 00 45 45 45 45 00 45 00 45 00 45 45 45 00 45 00 00 00 00 45 45 00 45 45 00 00 45 00 45 00 00 00 45 45 45 00 45 00 00 45 45 45 45 45 45 00 00 45 00 45 00 45 45 00 00 00 45 00 45 45 00 45 45 00 45 45 00 45 00 00 45 00 45 45 00 00 00 45 00 00 00 45 45 00 45 45 00 45 45 45 45 00 00 45 00 45 00 00 00 00 45 45 00 00 00 45 45 45 00 45 45 00 45 00 45 00 45 00 45 45 00 45 00 00 00 45 45 00 00 00 45 00 00 00 45 00 45 45 00 00 45 00 00 00 45 00 45 45 45 45 45 45 00 45 00 45 00 00 00 00 45 00 45 00 00 00 00 45 00 00 45 00 00 00 00 00 45 00 45 00 00 45 00 45 00 45 45 00 45 45 45 00 45 45 00 00 45 00 00 45 00 45 00 45 45 00 45 00 45 45 00 45 00 45 45 00 00 00 00 00 00 45 00 45 45 45 45 00 00 45 00 00 00 00 00 00 00
*/
