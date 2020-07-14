.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x14c98, %rsi
lea addresses_normal_ht+0x152e8, %rdi
xor $41164, %r12
mov $116, %rcx
rep movsb
nop
nop
nop
nop
xor $57884, %rdx
lea addresses_UC_ht+0x7c18, %r15
nop
nop
nop
nop
and %r9, %r9
movb $0x61, (%r15)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0xdf74, %rcx
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rcx)
and %rdi, %rdi
lea addresses_WT_ht+0x15b18, %rsi
lea addresses_WC_ht+0xa6fa, %rdi
nop
nop
sub $1996, %r9
mov $23, %rcx
rep movsw
nop
nop
nop
and $64019, %rcx
lea addresses_UC_ht+0x15458, %rsi
lea addresses_normal_ht+0x13c18, %rdi
nop
nop
sub %r8, %r8
mov $55, %rcx
rep movsq
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x4918, %rcx
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm3
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm3, (%rcx)
nop
and %r12, %r12
lea addresses_D_ht+0x11d18, %rsi
lea addresses_WT_ht+0x4348, %rdi
add $55685, %r8
mov $21, %rcx
rep movsb
nop
nop
xor $27687, %r15
lea addresses_WT_ht+0x17218, %r12
nop
nop
nop
nop
sub $26645, %rdi
movups (%r12), %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
nop
nop
cmp $5835, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x8e10, %rcx
nop
sub %rdi, %rdi
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
sub $38669, %rax

// Load
lea addresses_WC+0xf79a, %rax
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%rax), %r11d
nop
sub $38926, %rdi

// Store
lea addresses_D+0x13118, %rdi
nop
nop
cmp $64126, %rsi
movb $0x51, (%rdi)
nop
nop
nop
add $34703, %rcx

// Store
lea addresses_RW+0x1543c, %r12
nop
nop
inc %rbx
movw $0x5152, (%r12)
nop
nop
nop
sub $10022, %r11

// Store
lea addresses_PSE+0x11518, %r12
nop
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movntdq %xmm6, (%r12)
nop
nop
nop
dec %rsi

// Store
lea addresses_US+0x1fb18, %rbx
nop
nop
nop
nop
dec %rdi
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
xor $59980, %r11

// Faulty Load
lea addresses_A+0x17518, %rdi
nop
nop
nop
cmp %rbx, %rbx
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'45': 4457, '00': 1294}
45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 00 00 00 45 45 45 45 45 45 00 00 45 45 45 00 00 45 45 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 00 45 45 45 45 00 00 45 00 45 00 00 00 45 45 45 45 45 45 45 45 45 45 00 45 00 00 45 45 45 45 00 45 00 45 00 45 00 45 00 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 00 00 45 45 00 45 00 45 00 45 00 45 00 45 00 45 45 45 45 45 00 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 00 45 45 00 45 45 00 00 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 00 45 45 45 45 00 45 45 45 45 00 45 45 45 00 45 00 45 00 00 45 00 00 45 45 45 45 45 45 45 00 45 00 45 00 45 45 00 00 45 45 45 45 45 45 00 45 45 00 45 00 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 00 45 45 00 45 45 45 45 45 00 45 45 45 45 00 00 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 45 00 45 45 00 45 00 45 45 45 00 45 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 00 45 45 45 00 45 00 45 45 45 00 00 45 45 00 45 45 45 45 45 45 45 00 00 45 45 45 00 45 45 45 45 45 00 45 00 00 45 45 00 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 00 45 45 45 45 45 00 45 00 00 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 00 00 45 45 45 45 45 00 45 45 00 45 45 45 45 00 00 00 45 45 00 00 45 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 00 00 00 45 45 45 45 45 45 45 45 00 45 00 45 00 45 45 45 45 45 45 45 00 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 00 45 45 45 00 00 00 45 45 00 45 45 00 45 45 00 00 00 45 45 45 45 45 45 45 45 45 45 45 00 45 00 00 45 45 45 00 45 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 00 45 45 45 00 45 00 00 45 00 00 45 45 00 00 45 45 45 00 45 45 45 45 00 45 45 45 45 45 00 45 45 00 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 00 45 45 00 00 00 45 45 45 00 00 45 00 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 00 45 45 45 45 45 45 45 00 00 45 00 00 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 00 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 00 00 45 00 45 45 45 00 45 45 00 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 00 00 45 00 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 00 00 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 00 45 00 45 45 00 45 00 45 00 45 45 45 45 45 45 45 00 45 45 45 45 00 00 45 45 45 00 00 00 45 45 45 45 45 45 45 45 45 45 45 00 00 00 45 45 45 45 00 45 45 00 45 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 45 45 45 45 45 45 45
*/
