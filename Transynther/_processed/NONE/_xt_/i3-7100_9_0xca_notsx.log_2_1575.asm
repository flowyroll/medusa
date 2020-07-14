.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x104ec, %rsi
lea addresses_WC_ht+0x604c, %rdi
nop
nop
xor %r8, %r8
mov $33, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_normal_ht+0xcc6c, %rsi
lea addresses_UC_ht+0xe3ec, %rdi
nop
nop
nop
sub $19337, %r11
mov $103, %rcx
rep movsq
nop
nop
nop
sub $38502, %r8
lea addresses_WT_ht+0x159ec, %rcx
nop
nop
nop
nop
dec %r11
movb (%rcx), %al
cmp $23715, %rsi
lea addresses_D_ht+0xe1ec, %rcx
nop
add $22149, %r11
mov (%rcx), %r8
nop
nop
nop
add $44210, %rax
lea addresses_WC_ht+0xe1dc, %rax
add %r8, %r8
movb (%rax), %cl
nop
add %r11, %r11
lea addresses_D_ht+0x17fec, %rcx
nop
nop
nop
nop
xor %rbp, %rbp
mov (%rcx), %di
cmp $13853, %rax
lea addresses_WT_ht+0x6004, %rsi
lea addresses_A_ht+0x30ac, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $97, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0xd8c2, %rsi
lea addresses_normal_ht+0x344c, %rdi
nop
nop
nop
add %rax, %rax
mov $109, %rcx
rep movsq
nop
sub $61801, %rbp
lea addresses_D_ht+0x136ec, %r11
sub %rax, %rax
movb (%r11), %r12b
nop
sub $46080, %rcx
lea addresses_A_ht+0x1690c, %rsi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
and $0xffffffffffffffc0, %rsi
vmovaps %ymm1, (%rsi)
cmp $24540, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x141ec, %rsi
nop
cmp $34002, %rdi
movb $0x51, (%rsi)
nop
nop
sub $9460, %rdi

// Load
lea addresses_PSE+0x1f9ec, %r11
nop
xor $24917, %rcx
movb (%r11), %r15b
nop
nop
nop
xor %r14, %r14

// Load
mov $0x71a37b00000009ec, %rsi
xor $22283, %r9
mov (%rsi), %r14
nop
nop
xor $61052, %r9

// Store
lea addresses_WT+0x187ec, %r9
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
dec %rsi

// Store
lea addresses_normal+0x98ec, %r14
clflush (%r14)
nop
nop
nop
nop
nop
xor %r15, %r15
movw $0x5152, (%r14)
nop
nop
and %r11, %r11

// Load
mov $0x3553c300000008ec, %r9
nop
nop
nop
sub %r14, %r14
mov (%r9), %r15d
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Load
lea addresses_RW+0xe5ec, %r9
nop
nop
xor %rcx, %rcx
mov (%r9), %r14
nop
nop
xor $43017, %rdi

// Faulty Load
lea addresses_PSE+0x1f9ec, %r14
nop
nop
nop
nop
and $25840, %r11
movb (%r14), %cl
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True}}
{'33': 2}
33 33
*/
