.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x18ca8, %rsi
lea addresses_WT_ht+0xebd8, %rdi
nop
nop
nop
nop
nop
xor $23534, %r11
mov $79, %rcx
rep movsl
nop
nop
nop
nop
xor $24580, %r13
lea addresses_D_ht+0xc59c, %rbp
nop
nop
xor $27965, %rax
movl $0x61626364, (%rbp)
nop
dec %rcx
lea addresses_D_ht+0xa5d0, %rsi
lea addresses_WT_ht+0x5dd0, %rdi
nop
nop
cmp $55747, %r11
mov $114, %rcx
rep movsb
nop
nop
add $47677, %r11
lea addresses_WT_ht+0x18454, %rsi
lea addresses_WC_ht+0x19dd0, %rdi
nop
nop
nop
xor $25767, %r15
mov $85, %rcx
rep movsq
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x13150, %rsi
lea addresses_normal_ht+0x56d0, %rdi
nop
nop
nop
sub %r11, %r11
mov $77, %rcx
rep movsq
nop
add %r15, %r15
lea addresses_UC_ht+0x16bd0, %rsi
lea addresses_normal_ht+0x1ab1c, %rdi
nop
nop
nop
nop
add $12127, %r15
mov $124, %rcx
rep movsl
nop
xor $24775, %r15
lea addresses_UC_ht+0xf450, %rdi
nop
add %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, (%rdi)
and %r15, %r15
lea addresses_A_ht+0x16e30, %r13
nop
nop
add $13729, %rdi
movl $0x61626364, (%r13)
nop
nop
inc %r13
lea addresses_WT_ht+0x12bd3, %rdi
nop
nop
nop
nop
nop
cmp $3583, %rcx
movb $0x61, (%rdi)
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x101d0, %rdi
clflush (%rdi)
cmp %r11, %r11
mov $0x6162636465666768, %rbp
movq %rbp, (%rdi)
add $40756, %rcx
lea addresses_normal_ht+0x7550, %r11
clflush (%r11)
nop
nop
nop
nop
nop
add %r13, %r13
mov (%r11), %ecx
nop
inc %r13
lea addresses_UC_ht+0x13db8, %rax
nop
nop
nop
nop
nop
and $55439, %r15
movw $0x6162, (%rax)
nop
nop
and $9631, %rdi
lea addresses_D_ht+0x1dc14, %r15
nop
nop
dec %rcx
movb $0x61, (%r15)
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x1a610, %rsi
lea addresses_normal_ht+0x14154, %rdi
nop
nop
sub $12573, %rax
mov $105, %rcx
rep movsb
nop
nop
add $46554, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_US+0x1b7d0, %rsi
lea addresses_A+0xf5d0, %rdi
nop
nop
nop
nop
inc %r15
mov $54, %rcx
rep movsb
nop
and $13063, %rsi

// Store
lea addresses_A+0x1e73e, %rcx
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
nop
inc %rdx

// Store
lea addresses_US+0x1a2d0, %r15
nop
nop
nop
nop
nop
cmp $26986, %rdi
movw $0x5152, (%r15)
nop
nop
nop
xor %r12, %r12

// Store
mov $0x4438a90000000785, %rdi
nop
nop
nop
nop
and $62412, %r14
movw $0x5152, (%rdi)
sub $34699, %rcx

// Faulty Load
lea addresses_A+0xf5d0, %rdi
nop
nop
sub $28803, %rdx
mov (%rdi), %r12w
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'9c': 1, 'f6': 1, 'b6': 1, '22': 1, '48': 1, 'a2': 1, '14': 1, 'e4': 1, 'fc': 1, '10': 1, '6c': 1, 'd8': 1, '78': 1, '98': 1, '26': 1, '9e': 1, '6e': 1, '46': 1, '1e': 1, 'a8': 2, '00': 2, '84': 1, 'a0': 1, 'c8': 1, '40': 1, '3c': 1, 'b8': 1, 'ca': 1, 'a4': 1, '94': 2, 'ee': 2, 'f4': 1}
00 1e ca 6e 22 a2 94 84 c8 10 14 a4 48 26 00 e4 b6 d8 a8 78 9e fc ee ee f4 40 46 6c f6 a0 a8 3c 94 9c 98 b8
*/
