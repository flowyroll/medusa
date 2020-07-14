.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1910f, %rsi
lea addresses_D_ht+0x113f, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov $80, %rcx
rep movsb
nop
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x1242f, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub %r9, %r9
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
add $58772, %rcx
lea addresses_D_ht+0xa3cf, %r9
clflush (%r9)
nop
nop
nop
xor %r15, %r15
movb $0x61, (%r9)
nop
nop
dec %rdi
lea addresses_normal_ht+0xaf0f, %rdi
nop
nop
nop
add %r9, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%rdi)
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rbp
push %rdi
push %rsi

// Load
lea addresses_PSE+0x57cf, %rbp
nop
nop
and %r13, %r13
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
sub %r14, %r14

// Store
lea addresses_A+0xb04f, %rsi
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
add %r14, %r14

// Load
mov $0xd6204000000054f, %r8
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r8), %di
nop
nop
nop
nop
nop
add $41164, %r11

// Store
lea addresses_WT+0xe7cf, %r8
nop
nop
nop
nop
nop
cmp $34709, %r11
movl $0x51525354, (%r8)
add $26936, %rdi

// Store
lea addresses_normal+0x183cf, %rsi
nop
nop
nop
nop
nop
inc %r13
movb $0x51, (%rsi)
cmp $45213, %r11

// Store
lea addresses_PSE+0x1c2f, %r11
nop
nop
nop
nop
dec %rsi
movl $0x51525354, (%r11)
nop
nop
nop
nop
add $58959, %r14

// Store
lea addresses_PSE+0x57cf, %r11
nop
nop
nop
nop
nop
and $4773, %r13
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
xor $24231, %rsi

// Store
lea addresses_WC+0x13e5f, %rdi
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%rdi)
nop
nop
dec %rsi

// Faulty Load
lea addresses_PSE+0x57cf, %rsi
nop
cmp %rbp, %rbp
mov (%rsi), %di
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'54': 229}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
