.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x13a2e, %r14
sub $55163, %r15
mov $0x6162636465666768, %rdx
movq %rdx, (%r14)
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x1b186, %rsi
lea addresses_D_ht+0x10986, %rdi
nop
nop
nop
nop
and $60983, %rax
mov $94, %rcx
rep movsw
nop
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0xfe86, %rsi
nop
cmp %rdx, %rdx
movw $0x6162, (%rsi)
dec %r14
lea addresses_WC_ht+0x14406, %r15
nop
nop
nop
inc %rax
mov (%r15), %ecx
inc %rdi
lea addresses_WC_ht+0x16586, %rcx
nop
nop
nop
inc %r15
movb $0x61, (%rcx)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x1d086, %rsi
lea addresses_UC_ht+0x11986, %rdi
nop
nop
add %rbx, %rbx
mov $111, %rcx
rep movsl
nop
nop
nop
cmp $12302, %rcx
lea addresses_normal_ht+0x1b32a, %rax
nop
nop
dec %rdi
vmovups (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r14
nop
nop
nop
nop
nop
sub $55837, %rsi
lea addresses_normal_ht+0xe786, %r15
nop
nop
nop
cmp %rbx, %rbx
movw $0x6162, (%r15)
nop
nop
nop
nop
cmp $3589, %rsi
lea addresses_WT_ht+0xbffe, %rax
nop
nop
sub $4922, %rdx
movb (%rax), %cl
add %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x13a9f, %rsi
lea addresses_PSE+0x12386, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r10
mov $36, %rcx
rep movsq
nop
nop
nop
cmp $22248, %rax

// Store
lea addresses_WT+0xd086, %rsi
nop
nop
nop
nop
sub $53939, %rdi
movw $0x5152, (%rsi)

// Exception!!!
nop
nop
nop
mov (0), %r11
nop
nop
nop
nop
xor $21990, %rdi

// Store
lea addresses_A+0x19186, %rsi
sub %rbx, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_US+0x12186, %rax
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, (%rax)
nop
nop
sub $2440, %r11

// Store
mov $0x10b4c0000000e86, %rdi
nop
nop
nop
nop
and $1637, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovntdq %ymm5, (%rdi)
nop
nop
nop
nop
nop
and %r10, %r10

// Store
mov $0x755f1d000000063d, %r11
nop
nop
cmp %rdi, %rdi
movl $0x51525354, (%r11)
dec %r11

// Store
lea addresses_US+0x5786, %rdi
nop
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
inc %rbx

// Load
mov $0xd9c, %rdi
nop
dec %rax
mov (%rdi), %r11w
cmp $14584, %rdi

// Store
lea addresses_WC+0x15c86, %r10
and %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
nop
nop
cmp $35940, %r11

// Store
lea addresses_D+0x12786, %rbx
nop
nop
nop
nop
inc %rcx
movl $0x51525354, (%rbx)
nop
nop
nop
nop
inc %r11

// Store
lea addresses_A+0x143c6, %rsi
nop
and $52570, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
nop
sub $65378, %rcx

// Faulty Load
lea addresses_US+0x12186, %rax
nop
nop
nop
nop
nop
sub $19955, %rcx
vmovups (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 3}
00 00 00
*/
