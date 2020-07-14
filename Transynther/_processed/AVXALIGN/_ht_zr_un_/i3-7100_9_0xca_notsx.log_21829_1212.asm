.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x2bb1, %rsi
lea addresses_UC_ht+0x59cd, %rdi
nop
nop
nop
nop
nop
xor $25823, %r15
mov $62, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x501d, %rax
nop
nop
nop
nop
nop
and $63402, %r12
movl $0x61626364, (%rax)
add %rcx, %rcx
lea addresses_A_ht+0x1c54d, %r12
nop
xor %rbp, %rbp
movups (%r12), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
dec %r12
lea addresses_D_ht+0x1c4cd, %rsi
lea addresses_UC_ht+0x2285, %rdi
nop
nop
nop
nop
inc %rdx
mov $20, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x1df0d, %rsi
lea addresses_WC_ht+0x157cd, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $119, %rcx
rep movsb
nop
nop
inc %r15
lea addresses_WT_ht+0xd073, %rsi
lea addresses_normal_ht+0x1738f, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
mov $3, %rcx
rep movsq
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x1aeed, %rsi
lea addresses_D_ht+0x53cd, %rdi
and $6090, %r12
mov $64, %rcx
rep movsb
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x265d, %rsi
lea addresses_A_ht+0xb84d, %rdi
nop
nop
and $15360, %rdx
mov $0, %rcx
rep movsq
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x1a32d, %rdi
clflush (%rdi)
nop
xor $47346, %rdx
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r12
cmp %r12, %r12
lea addresses_WT_ht+0x21cd, %r15
sub %r12, %r12
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x454d, %rbp
sub $58304, %r15
mov $0x6162636465666768, %rdx
movq %rdx, (%rbp)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x71cd, %r12
nop
nop
nop
nop
nop
xor $48140, %rax
movb (%r12), %cl
xor %rax, %rax
lea addresses_UC_ht+0x160f5, %rsi
lea addresses_D_ht+0x1c1cd, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $79, %rcx
rep movsl
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rdi
push %rdx

// Store
lea addresses_RW+0x1724d, %rdi
nop
add %rdx, %rdx
movb $0x51, (%rdi)
nop
nop
nop
and $5135, %rdi

// Store
lea addresses_A+0x1ee2d, %r9
nop
nop
nop
nop
xor $29277, %r10
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
sub $3858, %r10

// Store
lea addresses_D+0xb1cd, %rdi
nop
nop
dec %r11
movw $0x5152, (%rdi)
nop
nop
add $31353, %rdi

// Store
lea addresses_normal+0x13f2d, %r11
nop
xor %r10, %r10
movl $0x51525354, (%r11)
nop
xor $21129, %r10

// Store
lea addresses_WT+0x1d249, %r13
nop
nop
nop
nop
nop
sub %r10, %r10
movw $0x5152, (%r13)
nop
nop
nop
nop
sub $21159, %r9

// Load
mov $0x1c79360000000c0d, %r12
and %r9, %r9
mov (%r12), %r10d
nop
xor %rdx, %rdx

// Store
lea addresses_normal+0x3b3d, %rdx
nop
nop
and $5663, %r11
movl $0x51525354, (%rdx)
nop
nop
nop
nop
add $9104, %r12

// Faulty Load
mov $0x3ade0200000001cd, %rdx
nop
nop
nop
nop
nop
xor $14770, %r13
vmovntdqa (%rdx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rdx
pop %rdi
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'46': 8, '48': 1, '00': 21787, '49': 30, 'ff': 3}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
